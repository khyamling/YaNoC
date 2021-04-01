import hello
import hello2
import sys
import os
name=''
mesh='mesh'
torus='torus'
ring='ring'
star='star'
butterfly='butterfly'
name=input("Enter the topology you wish to simulate\n")
if(name==mesh):
  os.system("python hello.py")
  os.system("python hello1.py > text.txt")
elif(name==torus):
  os.system("python hello.py")
  os.system("python torus.py >text.txt")
elif(name==ring):
  #os.system("python hello.py")
  os.system("python doublering.py >text.txt")
elif(name==star):
  #os.system("python hello.py")
  os.system("python star.py >text.txt")
elif(name==butterfly):
  #os.system("python hello.py")
  os.system("python butterfly.py >text.txt")
else:
  print 'enter the currect topology'

