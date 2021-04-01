from enum import Enum
import re
import sys


def removeComments(string):
    string = re.sub(re.compile("function.*?endfunction", re.DOTALL), "", string)
    string = re.sub(re.compile("procedure.*?endprocedure", re.DOTALL), "", string)
    string = re.sub(re.compile("/\*.*?\*/", re.DOTALL), "", string)
    string = re.sub(re.compile("//.*?\n"), "", string)
    return string


def process(string):
    newstring = ""
    startsize = False
    for char in string:
        if char == '[':
            startsize = True
            newstring += char
        elif startsize:
            if char == ']':
                startsize = False
                newstring += char
            elif not char.isspace():
                newstring += char
        else:
            newstring += char
    return newstring.replace(";", " ; ").replace("[", " [").replace("]", "] ")


def removeCommentsFromFile(path):
    with open(path, 'r') as myfile:
        return removeComments(myfile.read())


def tokenize(strs):
    return [x for x in filter(None, re.split('[,\n,\t,(, ,=,]', strs))]


class Parameter:
    name = ''
    value = ''

    def represent(self):
        return self.name.ljust(15) + '(' + self.value + ')'


class Data:
    def __init__(self):
        self.name = []
        self.type = 'logic'
        self.lhl = '0'
        self.rhl = '0'


class Result:
    modName = ''
    params = []
    output = []
    input = []
    interfaces = []


class State(Enum):
    module = 0
    moduleName = 1
    instanceWait = 2
    paramInstantiate = 3
    ioInstantiate = 4
    paramName = 5
    paramValue = 6
    loopWait = 7
    input = 8
    output = 9
    interface = 10


def parse(path):
    sizeDefined = False
    return_result = Result()
    file = removeCommentsFromFile(path)
    file = process(file)
    states = [State.module, State.module, State.module]
    tokens = tokenize(file)
    for token in tokens:
        while True:
            if states[0] == State.module:
                states[0] = State.moduleName
                break
            elif states[0] == State.moduleName:
                return_result.modName = token
                states[0] = State.instanceWait
                break
            elif states[0] == State.instanceWait:
                if token == '#':
                    states[1] = State.paramName
                    states[0] = State.paramInstantiate
                    break
                else:
                    states[0] = State.ioInstantiate;
            elif states[0] == State.paramInstantiate:
                if token == 'parameter':
                    break
                elif token == ';':
                    states[0] = State.loopWait
                elif token == ')':
                    states[0] = State.instanceWait
                    break
                elif states[1] == State.paramName:
                    return_result.params.append(Parameter())
                    return_result.params[-1].name = token
                    states[1] = State.paramValue
                    break
                elif states[1] == State.paramValue:
                    return_result.params[-1].value = token
                    states[1] = State.paramName
                    break
            elif states[0] == State.ioInstantiate:
                if token == ';' or token == ')' or token == ');':
                    states[0] = State.loopWait
                    break
                elif token == 'input':
                    states[0] = State.input
                    return_result.input.append(Data())
                    sizeDefined = False
                    break
                elif token == 'output':
                    states[0] = State.output
                    return_result.output.append(Data())
                    sizeDefined = False
                    break
                elif re.match(r'.+\..+', token, flags=0):
                    states[0] = State.interface
                    return_result.interfaces.append(Data())
                    sizeDefined = False
                else:
                    break
            elif states[0] == State.input:
                if token == 'input':
                    sizeDefined = False
                    break
                elif token == ';':
                    states[0] = State.loopWait
                elif token == 'output' or re.match(r'.+\..+', token,
                                                   flags=0) or token == ')' or token == ');':
                    states[0] = State.ioInstantiate
                elif token == 'logic' or token == 'reg' or token == 'wire':
                    sizeDefined = False
                    return_result.input[-1].type = token
                    break
                elif re.match(r'\[.+:.+]', token, flags=0):
                    if not sizeDefined:
                        size = token[1:-1].partition(':')
                        return_result.input[-1].lhl = size[0]
                        return_result.input[-1].rhl = size[2]
                        sizeDefined = True
                    else:
                        return_result.input[-2].name[-1] += " " + token
                    break
                else:
                    return_result.input[-1].name.append(token)
                    return_result.input.append(Data())
                    break
            elif states[0] == State.output:
                if token == 'output':
                    sizeDefined = False
                    break
                elif token == ';':
                    states[0] = State.loopWait
                elif token == 'input' or re.match(r'.+\..+', token,
                                                  flags=0) or token == ')' or token == ');':
                    states[0] = State.ioInstantiate
                elif token == 'logic' or token == 'reg' or token == 'wire':
                    return_result.output[-1].type = token
                    break
                elif re.match(r'\[.+:.+]', token, flags=0):
                    if not sizeDefined:
                        size = token[1:-1].partition(':')
                        return_result.output[-1].lhl = size[0]
                        return_result.output[-1].rhl = size[2]
                        sizeDefined = True
                    else:
                        return_result.output[-2].name[-1] += " " + token
                    break
                else:
                    return_result.output[-1].name.append(token)
                    return_result.output.append(Data())
                    break
            elif states[0] == State.interface:
                if token == 'output' or token == 'input' or token == ')' or token == ');' or token == ';':
                    states[0] = State.ioInstantiate
                elif re.match(r'.+\..+', token, flags=0):
                    size = token.partition('.')
                    return_result.interfaces[-1].name.append(size[0])
                    return_result.interfaces[-1].name.append(size[2])
                    sizeDefined = False
                    break
                elif re.match(r'\[.+:.+]', token, flags=0):
                    if not sizeDefined:
                        size = token[1:-1].partition(':')
                        return_result.interfaces[-1].lhl = size[0]
                        return_result.interfaces[-1].rhl = size[2]
                        sizeDefined = True
                    else:
                        return_result.interfaces[-2].name[-1] += " " + token
                    break
                else:
                    return_result.interfaces[-1].name.append(token)
                    return_result.interfaces.append(Data())
                    break
            elif states[0] == State.loopWait:
                if token == 'output':
                    states[0] = State.output
                    return_result.output.append(Data())
                elif token == 'input':
                    states[0] = State.input
                    return_result.input.append(Data())
                elif token == 'parameter':
                    states[0] = State.paramInstantiate
                    states[1] = State.paramName
                else:
                    break
            else:
                break
    return return_result
    # print(return_result.modName)
    # for param in return_result.params:
    #     print(param.name + " = " + param.value)
    # print('')
    # for param in return_result.input:
    #     if len(param.name) > 0:
    #         print(param.name[-1] + " " + param.type, end="")
    #         print(" [" + str(param.lhl) + "," + str(param.rhl) + "]")
    # print ('')
    # for param in return_result.output:
    #     if len(param.name) > 0:
    #         print(param.name[-1] + " " + param.type, end="")
    #         print(" [" + str(param.lhl) + "," + str(param.rhl) + "]")


def generator(inputResult, sigdec):
    print("module," + inputResult.modName)
    for param in inputResult.params:
        print("parameter," + param.name + "," + param.value)
    for input_ in inputResult.input:
        if len(input_.name) > 0:
            names = input_.name[0].split()
            print("input," + names[0] + "," + input_.type + ",[" + input_.lhl + ":" + input_.rhl + "]", end="")
            if len(names) > 1:
                for i in range(1, len(names)):
                    print("," + names[i], end="")
            print()
    for output in inputResult.output:
        if len(output.name) > 0:
            names = output.name[0].split()
            print("output," + names[0] + "," + output.type + ",[" + output.lhl + ":" + output.rhl + "]", end="")
            if len(names) > 1:
                for i in range(1, len(names)):
                    print("," + names[i], end="")
            print()
    for interface in inputResult.interfaces:
        if len(interface.name) > 0:
            names = interface.name[2].split()
            print(interface.name[0] + "." + interface.name[1] + ","+names[0]+",,[" + output.lhl + ":" + output.rhl + "]", end="")
            if len(names) > 1:
                for i in range(1, len(names)):
                    print("," + names[i], end="")


generator(parse(sys.argv[1]), True)
