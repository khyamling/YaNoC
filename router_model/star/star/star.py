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


print("module star (")

for i in range(const.N-1):
  print("input_R"+str(i+1)+","+"output_R"+str(i+1)+",")
def f():
  print('clk, rst, '+' Write, Read);')
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

for i in range(const.N-1):
  width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
  local_in =  vast.Input("input_R"+str(i+1),width=width)
  local_out =  vast.Output("output_R"+str(i+1),width=width)
  f1()

def h1():
  #count = vast.Reg('count', width=width)
  ports0 = vast.Portlist( [R0_in] )
  ports1 = vast.Portlist( [R0_out] )
  codegen = ASTCodeGenerator() 
  rslt0 = codegen.visit(ports0)
  rslt1 = codegen.visit(ports1)
  print(rslt0)
  print(rslt1)
for i in range(const.N-1):
  width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
  R0_in =  vast.Reg("R0_in"+str(i),width=width)
  R0_out =  vast.Wire("R0_out"+str(i),width=width)
  h1()

def f02():
 ports0 = vast.Portlist( [east] )
 #ports1 = vast.Portlist( [west] )
 #ports2 = vast.Portlist( [north] )
 #ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 #rslt1 = codegen.visit(ports1)
 #rslt2 = codegen.visit(ports2)
 #rslt3 = codegen.visit(ports3)
 print(rslt0)
 #print(rslt1)
 #print(rslt2)
 #print(rslt3)

#if __name__ == '__main__':
for i in range(const.N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Reg("port1_inR"+str(i+1), width=width)
      #west = vast.Reg("west_in"+str(i), width=width)
      #north =  vast.Reg("north_in"+str(i), width=width)
      #south =  vast.Reg("south_in"+str(i), width=width)
      f02()
   
def f03():
 ports0 = vast.Portlist( [east] )
 #ports1 = vast.Portlist( [west] )
 #ports2 = vast.Portlist( [north] )
 #ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 #rslt1 = codegen.visit(ports1)
 #rslt2 = codegen.visit(ports2)
 #rslt3 = codegen.visit(ports3)
 print(rslt0)
 #print(rslt1)
 #print(rslt2)
 #print(rslt3)
#if __name__ == '__main__':
for i in range(const.N-1):
    width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
    east =  vast.Wire("port1_outR"+str(i+1), width=width)
    #west =  vast.Wire("west_out"+str(i), width=width)
    #north =  vast.Wire("north_out"+str(i), width=width)
    #south =  vast.Wire("south_out"+str(i), width=width)
    f03()

print("router0 r")
print('( .clk(clk), .rst(reset),')
for i in range(const.N-1):
   print(".i00"+str(i)+"(R0_in"+str(i)+")"+",")
   print(".i01"+str(i)+"(R0_out"+str(i)+")"+",")
def f7():
   print(".Write(Write)"+","+".Read(Read)"+');')
for j in range(1):
   f7()

   

for i in range(const.N-1):
  print("router r"+ str(i+1))
  print('( .clk(clk), .rst(reset),')
  print(".i00"+"(input_R"+str(i)+")"+",")
  print(".i01"+"(port1_inR"+str(i)+")"+",")
  #print(".i02"+"(west_in"+str(i)+")"+",")
  #print(".i03"+"(north_in"+str(i)+")"+",")
  #print(".i04"+"(south_in"+str(i)+")"+",")
  print(".o00"+"(output_R"+str(i)+")"+",")
  print(".o01"+"(port1_outR"+str(i)+")"+","+".Write(Write)"+","+".Read(Read)")
  #print(".o02"+"(west_out"+str(i)+")"+",")
  #print(".o03"+"(north_out"+str(i)+")"+",")
  #print(".o04"+"(south_out"+str(i)+")")
  print(');')


def f4():
 print("always @ ( posedge clk)") 
 print("begin")
for j in range(1):
  f4()

for i in range(const.N-1):
  print("port1_inR"+str(i+1)+"<="+"R0_out"+str(i)+";")
for i in range(const.N-1):
  print("R0_in"+str(i)+"<="+"port1_outR"+str(i+1)+";")
 

def f5():
  print("end")
for j in range(1):
  f5()  


def f6():
  print("endmodule")
for j in range(1):
  f6()
