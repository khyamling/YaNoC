#!/usr/bin/python
from __future__ import absolute_import
from __future__ import print_function
import io
import sys
import os
import const
import pyverilog.vparser.ast as vast
from math import log
import math
import numpy as np
import matplotlib.pyplot as plt
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator

#points = const.N 
m=int(log(const.N, 2))


print("module butterfly (")

for i in range(const.N/2):
 for j in range(m):
  if(j==0):
    print("port0_input"+str(i)+str(j)+","+"port1_input"+str(i)+str(j)+",")
for i in range(const.N/2):
 for j in range(m):
  if(j==m-1):
    print("port0_output"+str(i)+str(j)+","+"port1_output"+str(i)+str(j)+",")

def f():
  print('clk, reset, '+' Write, Read);')
  print( 'input clk, rst, Write, Read; ');
for i in range(1):
  f()

#fh = open('output1.txt', 'rb')
#fh2 = open('output2.txt', 'rb')
#for line in fh.readlines():
    #print(line.strip('\r\n') + fh2.readline().strip('\r\n'))
#fh.close()
#fh2.close()



datawid = vast.Parameter( 'DATAWID', vast.Rvalue(vast.IntConst('8')) )
params = vast.Paramlist( [datawid] )
codegen = ASTCodeGenerator() 
rslt1 = codegen.visit(params)
print(rslt1+";")

def f1():
  #count = vast.Reg('count', width=width)
  ports0 = vast.Portlist( [local_in] )
  ports1 = vast.Portlist( [local_out] )
  codegen = ASTCodeGenerator() 
  rslt0 = codegen.visit(ports0)
  rslt1 = codegen.visit(ports1)
  print(rslt0)
  print(rslt1)

for i in range(const.N/2):
 for j in range(m):
  if(j==0):
   width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
   local_in =  vast.Input("port0_input"+str(i)+str(j),width=width)
   local_out =  vast.Input("port1_input"+str(i)+str(j),width=width)
   f1()

def f2():
  #count = vast.Reg('count', width=width)
  ports0 = vast.Portlist( [local_in] )
  ports1 = vast.Portlist( [local_out] )
  codegen = ASTCodeGenerator() 
  rslt0 = codegen.visit(ports0)
  rslt1 = codegen.visit(ports1)
  print(rslt0)
  print(rslt1)

for i in range(const.N/2):
 for j in range(m):
  if(j==m-1):
   width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
   local_in =  vast.Output("port0_output"+str(i)+str(j),width=width)
   local_out =  vast.Output("port1_output"+str(i)+str(j),width=width)
   f2()

def f3():
  #count = vast.Reg('count', width=width)
  ports0 = vast.Portlist( [local_in] )
  ports1 = vast.Portlist( [local_out] )
  codegen = ASTCodeGenerator() 
  rslt0 = codegen.visit(ports0)
  rslt1 = codegen.visit(ports1)
  print(rslt0)
  print(rslt1)

for i in range(const.N/2):
 for j in range(m):
  if(j==0):
   width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
   local_in =  vast.Wire("port0_output"+str(i)+str(j),width=width)
   local_out =  vast.Wire("port1_output"+str(i)+str(j),width=width)
   f3()

def f4():
  #count = vast.Reg('count', width=width)
  ports0 = vast.Portlist( [local_in] )
  ports1 = vast.Portlist( [local_out] )
  codegen = ASTCodeGenerator() 
  rslt0 = codegen.visit(ports0)
  rslt1 = codegen.visit(ports1)
  print(rslt0)
  print(rslt1)

for i in range(const.N/2):
 for j in range(m):
  if(j==m-1):
   width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
   local_in =  vast.Reg("port0_input"+str(i)+str(j),width=width)
   local_out =  vast.Reg("port1_input"+str(i)+str(j),width=width)
   f4()

def f5():
  #count = vast.Reg('count', width=width)
  ports0 = vast.Portlist( [local_in0] )
  ports1 = vast.Portlist( [local_out0] )
  ports2 = vast.Portlist( [local_in1] )
  ports3 = vast.Portlist( [local_out1] )
  codegen = ASTCodeGenerator() 
  rslt0 = codegen.visit(ports0)
  rslt1 = codegen.visit(ports1)
  rslt2 = codegen.visit(ports2)
  rslt3 = codegen.visit(ports3)
  print(rslt0)
  print(rslt1)
  print(rslt2)
  print(rslt3)

for i in range(const.N/2):
 for j in range(m):
  if(j!=0 and j!=m-1):
   width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
   local_in0 =  vast.Reg("port0_input"+str(i)+str(j),width=width)
   local_out0 =  vast.Reg("port1_input"+str(i)+str(j),width=width)
   local_in1 =  vast.Wire("port0_output"+str(i)+str(j),width=width)
   local_out1 =  vast.Wire("port1_output"+str(i)+str(j),width=width)
   f5()


for i in range(const.N/2):
 for j in range(m):
  if(j==0):
   print("router r"+ str(i)+str(j))
   print('( .clk(clk), .rst(reset),')
   print(".i00"+"(port0_input"+str(i)+str(j)+")"+",")
   print(".i01"+"(port1_input"+str(i)+str(j)+")"+",")
   print(".o01"+"(port0_output"+str(i)+str(j)+")"+",")
   print(".o02"+"(port1_output"+str(i)+str(j)+")")
   print(');')
 if(j==m-1):
   print("router r"+ str(i)+str(j))
   print('( .clk(clk), .rst(reset),')
   print(".i00"+"(port0_input"+str(i)+str(j)+")"+",")
   print(".i01"+"(port1_input"+str(i)+str(j)+")"+",")
   print(".o01"+"(port0_output"+str(i)+str(j)+")"+",")
   print(".o02"+"(port1_output"+str(i)+str(j)+")")
   print(');')

for i in range(const.N/2):
 for j in range(m):
  if(j!=0 and j!=m-1):
   print("router r"+ str(i)+str(j))
   print('( .clk(clk), .rst(reset),')
   print(".i00"+"(port0_input"+str(i)+str(j)+")"+",")
   print(".i01"+"(port1_input"+str(i)+str(j)+")"+",")
   print(".o01"+"(port0_output"+str(i)+str(j)+")"+",")
   print(".o02"+"(port1_output"+str(i)+str(j)+")")
   print(');')


def f4():
 print("always @ ( posedge clk)") 
 print("begin")
for j in range(1):
  f4()

for i in range(const.N/2):
 for j in range(m):
  if(i<((const.N/4)) and j==0 ):
     print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     print("port0_input"+str(i+(const.N/4))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #first level 1st half portion connection of N=8,16,32 and 64
  if(i>((const.N/4)-1) and j==0 ):
     print("port1_input"+str(i-(const.N/4))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #first level 2nd half portion connection of N=8,16,32 and 64
  if(i<((const.N/8)) and j!=0 and j==(m/m) and j!=m-1 ):
     print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     print("port0_input"+str(i+(const.N/8))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #second level 1st half portion connection of N=8,16,32 and 64
  #if(const.N==8):
  if(i>((const.N/8)-1) and i<(math.pow(2, m-2)) and j!=0 and j==(m/m) and j!=m-1 ):
     print("port1_input"+str(i-(const.N/8))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     print("port1_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")   #second level 2nd half portion connection of N=8,16,32 and 64
  #if(const.N==8):
  if(i>=(math.pow(2, m-2)) and i<(3*math.pow(2, m-3)) and j!=0 and j==(m/m) and j!=m-1 ):
     print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     print("port0_input"+str(i+(const.N/8))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #second level 3rd half portion connection of N=8,16,32 and 64
  #if(const.N==8):
  if(i>=(3*math.pow(2, m-3))  and j!=0 and j==(m/m) and j!=m-1):
     print("port1_input"+str(i-(const.N/8))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")   #second level 4th half portion connection of N=8,16,32 and 64
  if(i<((const.N/16)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
     print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")  
     print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 1st half portion connection of N=8,16,32 and 64
  if(i>((const.N/16)-1) and i<(math.pow(2, m-3)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
     print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 2nd half portion connection of N=8,16,32 and 64
  if(i>=(math.pow(2, m-3)) and i<(3*math.pow(2, m-4)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
     print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 3rd half portion connection of N=8,16,32 and 64
  if(const.N==16): 
    if(i>(math.pow(2, m-3))  and i<=(math.pow(2, m-2)-1) and j!=0 and j==(m/m)+1 and j!=m-1):
      print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 4th half portion connection of N=16
  if(const.N==16):
    if(i>(math.pow(2, m-2)-1)  and i<(math.pow(2, m-2)+1) and j!=0 and j==(m/m)+1 and j!=m-1):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 5th half portion connection of N=16
  if(const.N==16):
    if(i>(math.pow(2, m-2))  and i<(math.pow(2, m-2)+2) and j!=0 and j==(m/m)+1 and j!=m-1):
      print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 6th half portion connection of N=16
  if(const.N==16):
    if(i>(math.pow(2, m-2)+1)  and i<(math.pow(2, m-2)+3) and j!=0 and j==(m/m)+1 and j!=m-1):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 7th half portion connection of N=16
  if(const.N==16):
    if(i>(math.pow(2, m-2)+2)  and i<(math.pow(2, m-2)+4) and j!=0 and j==(m/m)+1 and j!=m-1):
      print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 8th half portion connection of N=16
  if(const.N==32):
    if(i>(math.pow(2, m-3)+1) and i<(math.pow(2, m-3)+4) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 4th half portion connection of N=32
  if(const.N==32):
    if(i>(math.pow(2, m-3)+3) and i<(math.pow(2, m-3)+6) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")   #Third level 5th half portion connection of N=32
  if(const.N==32):
    if(i>(math.pow(2, m-3)+5) and i<(math.pow(2, m-3)+8) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")  
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 6th half portion connection of N=32
  if(const.N==32):
    if(i>(math.pow(2, m-3)+7) and i<(math.pow(2, m-3)+10) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")   #Third level 7th half portion connection of N=32
  if(const.N==32):
    if(i>(math.pow(2, m-3)+9) and i<(math.pow(2, m-3)+12) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 8th half portion connection of N=32
  if(const.N==32): 
    if(i%2==0 and j!=0 and j==(m/m)+2 and j!=m-1 ):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/const.N))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")
    elif(i%2!=0 and j!=0 and j==(m/m)+2 and j!=m-1 ):
      print("port1_input"+str(i-(const.N/const.N))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level of N=32 
  #if(const.N==64):
    #if(i>=(math.pow(2, m-3)) and i<(3*math.pow(2, m-4)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 3rd half portion connection of N=64
  if(const.N==64):
    if(i>=(3*math.pow(2, m-4)) and i<(math.pow(2, m-2)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";") 
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 4th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-2)) and i<(math.pow(2, m-2)+4) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 5th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-2)+(m-2)) and i<(math.pow(2, m-2)+(m+2)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 6th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-2)+(m+2)) and i<(math.pow(2, m-1)-(m-2)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 7th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-1)-(m-2)) and i<(math.pow(2, m)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 8th half portion connection of N=64
  if(const.N==64):
    if(i>=0 and i<(math.pow(2, m-6)+1) and j!=0 and j==(m/m)+2 and j!=m-1 ):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 1th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-6)+1) and i<(math.pow(2, m-6)+3) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 2th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-6)+3) and i<(math.pow(2, m-4)+2) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 3th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-4)+2) and i<(math.pow(2, m-3)) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 4th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-3)) and i<(math.pow(2, m-3)+2) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 5th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-3)+2) and i<(math.pow(2, m-3)+4) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 6th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-3)+4) and i<(math.pow(2, m-2)-2) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 7th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-2)-2) and i<math.pow(2, m-2) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 8th half portion connection of N=64
  if(const.N==64):
    if(i>=math.pow(2, m-2) and i<(math.pow(2, m-2)+2) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 9th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-2)+2) and i<(math.pow(2, m-2)+4) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";") 
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 10th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-2)+4) and i<(math.pow(2, m-2)+m) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 11th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-2)+m) and i<(math.pow(2, m-2)+(m+2)) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 12th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-2)+(m+2)) and i<(math.pow(2, m-2)+(m+4)) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 13th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-2)+(m+4)) and i<(math.pow(2, m-1)-4) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 14th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-1)-4) and i<(math.pow(2, m-1)-2) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 15th half portion connection of N=64
  if(const.N==64):
    if(i>=(math.pow(2, m-1)-2) and i<math.pow(2, m-1) and j!=0 and j==(m/m)+2 and j!=m-1):
      print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 16th half portion connection of N=64
  if(const.N==64): 
    if(i%2==0 and j!=0 and j==(m/m)+3 and j!=m-1 ):
      print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port0_input"+str(i+(const.N/const.N))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")
    elif(i%2!=0 and j!=0 and j==(m/m)+3 and j!=m-1 ):
      print("port1_input"+str(i-(const.N/const.N))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fifth level of N=64 

def f5():
  print("end")
for j in range(1):
  f5()  


def f6():
  print("endmodule")
for j in range(1):
  f6()
