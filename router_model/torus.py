#!/usr/bin/python
from __future__ import absolute_import
from __future__ import print_function
import io
import sys
import os
import const
import pyverilog.vparser.ast as vast
from math import log
import numpy as np
import matplotlib.pyplot as plt
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator

points = const.N 
logpoints=int(log(points, 2))


print("module torus (")

for i in range(const.N):
 for j in range(const.N):
  print("local_in"+str(i)+str(j)+","+"local_out"+str(i)+str(j)+",")
def f():
  print('clk, reset, '+' Write, Read);')
  print( 'input clk, rst, Write, Read; ');
for i in range(1):
  f()


fh = open('output1.txt', 'rb')
fh2 = open('output2.txt', 'rb')
for line in fh.readlines():
    print(line.strip('\r\n') + fh2.readline().strip('\r\n'))
fh.close()
fh2.close()



datawid = vast.Parameter( 'DATAWID', vast.Rvalue(vast.IntConst('32')) )
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

for i in range(const.N):
 for j in range(const.N):
  width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
  local_in =  vast.Input("local_in"+str(i)+str(j),width=width)
  local_out =  vast.Output("local_out"+str(i)+str(j),width=width)
  f1()

def f02():
 ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 print(rslt0)
 print(rslt1)
 print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(const.N):
 for j in range(const.N):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Reg("west_in"+str(i)+str(j), width=width)
      north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f02()
   
def f03():
 ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 print(rslt0)
 print(rslt1)
 print(rslt2)
 print(rslt3)
#if __name__ == '__main__':
for i in range(const.N):
 for j in range(const.N):
    width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
    east =  vast.Wire("east_out"+str(i)+str(j), width=width)
    west =  vast.Wire("west_out"+str(i)+str(j), width=width)
    north =  vast.Wire("north_out"+str(i)+str(j), width=width)
    south =  vast.Wire("south_out"+str(i)+str(j), width=width)
    f03()

for i in range(const.N):
 for j in range(const.N):
  print("router r"+ str(i)+str(j))
  print('( .clk(clk), .rst(reset),')
  print(".i00"+"(local_in"+str(i)+str(j)+")"+",")
  print(".i01"+"(east_in"+str(i)+str(j)+")"+",")
  print(".i02"+"(west_in"+str(i)+str(j)+")"+",")
  print(".i03"+"(north_in"+str(i)+str(j)+")"+",")
  print(".i04"+"(south_in"+str(i)+str(j)+")"+",")
  print(".o00"+"(local_out"+str(i)+str(j)+")"+",")
  print(".o01"+"(east_out"+str(i)+str(j)+")"+",")
  print(".o02"+"(west_out"+str(i)+str(j)+")"+",")
  print(".o03"+"(north_out"+str(i)+str(j)+")"+",")
  print(".o04"+"(south_out"+str(i)+str(j)+")")
  print(');')


def f4():
 print("always @ ( posedge clk)") 
 print("begin")
for j in range(1):
  f4()

for i in range(const.N):
 for j in range(const.N):
  if(i==0 and j==0):
   print("west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
   print("east_in"+str(i)+str(j+(const.N-1))+"<="+"west_out"+str(i)+str(j)+";")
   print("south_in"+str(i+(const.N-1))+str(j)+"<="+"north_out"+str(i)+str(j)+";")
   print("north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(i==0 and j==const.N-1):
   print("west_in"+str(i)+str(j-(const.N-1))+"<="+"east_out"+str(i)+str(j)+";")
   print("east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
   print("north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
   print("south_in"+str(i+(const.N-1))+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(i==const.N-1 and j==0):
   print("west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
   print("east_in"+str(i)+str(j+(const.N-1))+"<="+"west_out"+str(i)+str(j)+";")
   print("north_in"+str(i-(const.N-1))+str(j)+"<="+"south_out"+str(i)+str(j)+";")
   print("south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(i==const.N-1 and j==const.N-1):
   print("west_in"+str(i)+str(j-(const.N-1))+"<="+"east_out"+str(i)+str(j)+";")
   print("east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
   print("north_in"+str(i-(const.N-1))+str(j)+"<="+"south_out"+str(i)+str(j)+";")
   print("south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(j==0 and i!=0 and i!=const.N-1):
    print("west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print("east_in"+str(i)+str(j+(const.N-1))+"<="+"west_out"+str(i)+str(j)+";")
    print("north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
    print("south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(j==const.N-1 and i!=0 and i!=const.N-1):
    print("west_in"+str(i)+str(j-(const.N-1))+"<="+"east_out"+str(i)+str(j)+";")
    print("east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print("north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
    print("south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(i==0 and j!=0 and j!=const.N-1):
    print("west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print("east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";") 
    print("north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
    print("south_in"+str(i+(const.N-1))+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(i==const.N-1 and j!=0 and j!=const.N-1):
    print("west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print("east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print("south_in"+str(i-(const.N-1))+str(j)+"<="+"south_out"+str(i)+str(j)+";")
    print("south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(i!=0 and i!=const.N-1 and j!=0 and j!=const.N-1):
    print("west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print("east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print("south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
    print("north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")

def f5():
  print("end")
for j in range(1):
  f5()  


def f6():
  print("endmodule")
for j in range(1):
  f6()
