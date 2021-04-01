#!/usr/bin/python
from __future__ import absolute_import
from __future__ import print_function
import sys
import os
import pyverilog.vparser.ast as vast
from math import log
import numpy as np
import matplotlib.pyplot as plt
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
N = 2

points = N 
logpoints=int(log(points, 2))

print("module mesh (")

for i in range(N):
 for j in range(N):
  print("local_in"+str(i)+str(j)+","+"local_out"+str(i)+str(j)+",")
def f():
  print('clk, reset, '+' Write, Read);')
  print( 'input clk, reset, Write, Read; ');
for i in range(1):
  f()

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

for i in range(N):
 for j in range(N):
  width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
  local_in =  vast.Input("local_in"+str(i)+str(j),width=width)
  local_out =  vast.Output("local_out"+str(i)+str(j),width=width)
  f1()

def f02():
 ports0 = vast.Portlist( [east] )
 #ports1 = vast.Portlist( [west] )
 #ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 #rslt1 = codegen.visit(ports1)
 #rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 print(rslt0)
 #print(rslt1)
 #print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
   if(i==0 and j==0):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      #west = vast.Reg("west_in"+str(i)+str(j), width=width)
      #north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f02()

def f12():
 #ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 #ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 #rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 #rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 #print(rslt0)
 print(rslt1)
 #print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
   if(i==0 and j==N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      #east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Reg("west_in"+str(i)+str(j), width=width)
      #north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f12()

def f22():
 ports0 = vast.Portlist( [east] )
 #ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 #ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 #rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 #rslt3 = codegen.visit(ports3)
 print(rslt0)
 #print(rslt1)
 print(rslt2)
 #print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
   if(i==N-1 and j==0):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      #west = vast.Reg("west_in"+str(i)+str(j), width=width)
      north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      #south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f22()

def f32():
 #ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 #ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 #rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 #rslt3 = codegen.visit(ports3)
 #print(rslt0)
 print(rslt1)
 print(rslt2)
 #print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(i==N-1 and j==N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      #east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Reg("west_in"+str(i)+str(j), width=width)
      north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      #south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f32()

def f42():
 ports0 = vast.Portlist( [east] )
 #ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 #rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 print(rslt0)
 #print(rslt1)
 print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(j==0 and i!=0 and i!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      #west = vast.Reg("west_in"+str(i)+str(j), width=width)
      north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f42()

def f52():
 #ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 #rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 #print(rslt0)
 print(rslt1)
 print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(j==N-1 and i!=0 and i!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      #east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Reg("west_in"+str(i)+str(j), width=width)
      north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f52()

def f62():
 ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 #ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 #rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 print(rslt0)
 print(rslt1)
 #print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(i==0 and j!=0 and j!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Reg("west_in"+str(i)+str(j), width=width)
      #north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f62()

def f72():
 ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 #ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 #rslt3 = codegen.visit(ports3)
 print(rslt0)
 print(rslt1)
 print(rslt2)
 #print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(i==N-1 and j!=0 and j!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Reg("west_in"+str(i)+str(j), width=width)
      north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      #south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f72()

def f82():
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
for i in range(N):
 for j in range(N):
    if(i!=0 and i!=N-1 and j!=0 and j!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Reg("west_in"+str(i)+str(j), width=width)
      north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f82()
   
def f03():
 ports0 = vast.Portlist( [east] )
 #ports1 = vast.Portlist( [west] )
 #ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 #rslt1 = codegen.visit(ports1)
 #rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 print(rslt0)
 #print(rslt1)
 #print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
  if(i==0 and j==0):
    width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
    east =  vast.Wire("east_out"+str(i)+str(j), width=width)
    #west =  vast.Wire("west_out"+str(i)+str(j), width=width)
    #north =  vast.Wire("north_out"+str(i)+str(j), width=width)
    south =  vast.Wire("south_out"+str(i)+str(j), width=width)
    f03()

def f13():
 #ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 #ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 #rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 #rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 #print(rslt0)
 print(rslt1)
 #print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
   if(i==0 and j==N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      #east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Wire("west_out"+str(i)+str(j), width=width)
      #north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      south =  vast.Wire("south_out"+str(i)+str(j), width=width)
      f13()

def f23():
 ports0 = vast.Portlist( [east] )
 #ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 #ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 #rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 #rslt3 = codegen.visit(ports3)
 print(rslt0)
 #print(rslt1)
 print(rslt2)
 #print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
   if(i==N-1 and j==0):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Wire("east_out"+str(i)+str(j), width=width)
      #west = vast.Reg("west_in"+str(i)+str(j), width=width)
      north =  vast.Wire("north_out"+str(i)+str(j), width=width)
      #south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f22()

def f33():
 #ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 #ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 #rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 #rslt3 = codegen.visit(ports3)
 #print(rslt0)
 print(rslt1)
 print(rslt2)
 #print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(i==N-1 and j==N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      #east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Wire("west_out"+str(i)+str(j), width=width)
      north =  vast.Wire("north_out"+str(i)+str(j), width=width)
      #south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f33()

def f43():
 ports0 = vast.Portlist( [east] )
 #ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 #rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 print(rslt0)
 #print(rslt1)
 print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(j==0 and i!=0 and i!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Wire("east_out"+str(i)+str(j), width=width)
      #west = vast.Reg("west_in"+str(i)+str(j), width=width)
      north =  vast.Wire("north_out"+str(i)+str(j), width=width)
      south =  vast.Wire("south_out"+str(i)+str(j), width=width)
      f43()

def f53():
 #ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 #rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 #print(rslt0)
 print(rslt1)
 print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(j==N-1 and i!=0 and i!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      #east =  vast.Reg("east_in"+str(i)+str(j), width=width)
      west = vast.Wire("west_out"+str(i)+str(j), width=width)
      north =  vast.Wire("north_out"+str(i)+str(j), width=width)
      south =  vast.Wire("south_out"+str(i)+str(j), width=width)
      f53()

def f63():
 ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 #ports2 = vast.Portlist( [north] )
 ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 #rslt2 = codegen.visit(ports2)
 rslt3 = codegen.visit(ports3)
 print(rslt0)
 print(rslt1)
 #print(rslt2)
 print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(i==0 and j!=0 and j!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Wire("east_out"+str(i)+str(j), width=width)
      west = vast.Wire("west_out"+str(i)+str(j), width=width)
      #north =  vast.Reg("north_in"+str(i)+str(j), width=width)
      south =  vast.Wire("south_out"+str(i)+str(j), width=width)
      f63()

def f73():
 ports0 = vast.Portlist( [east] )
 ports1 = vast.Portlist( [west] )
 ports2 = vast.Portlist( [north] )
 #ports3 = vast.Portlist( [south] )
 #ast = vast.ModuleDef( , ports, , ,)
 codegen = ASTCodeGenerator()
 rslt0 = codegen.visit(ports0)
 rslt1 = codegen.visit(ports1)
 rslt2 = codegen.visit(ports2)
 #rslt3 = codegen.visit(ports3)
 print(rslt0)
 print(rslt1)
 print(rslt2)
 #print(rslt3)

#if __name__ == '__main__':
for i in range(N):
 for j in range(N):
    if(i==N-1 and j!=0 and j!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Wire("east_out"+str(i)+str(j), width=width)
      west = vast.Wire("west_out"+str(i)+str(j), width=width)
      north =  vast.Wire("north_out"+str(i)+str(j), width=width)
      #south =  vast.Reg("south_in"+str(i)+str(j), width=width)
      f73()

def f83():
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
for i in range(N):
 for j in range(N):
    if(i!=0 and i!=N-1 and j!=0 and j!=N-1):
      width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
      east =  vast.Wire("east_out"+str(i)+str(j), width=width)
      west = vast.Wire("west_out"+str(i)+str(j), width=width)
      north =  vast.Wire("north_out"+str(i)+str(j), width=width)
      south =  vast.Wire("south_out"+str(i)+str(j), width=width)
      f83()



for i in range(N):
 for j in range(N):
  if(i==0 and j==0):
    print("router r_$"+ str(i)+str(j) + '( .clk(clk), .rst(reset),'+".i00"+"(local_in"+str(i)+str(j)+")"+","+".i01"+"(east_in"+str(i)+str(j)+")"+","+".i02"+"("+")"+",")
    print(".i03"+"("+")"+","+".i04"+"(south_in"+str(i)+str(j)+")"+","+".o00"+"(local_out"+str(i)+str(j)+")"+","+".o01"+"(east_out"+str(i)+str(j)+")"+",")
    print(".o02"+"("+")"+","+".o03"+"("+")"+","+".o04"+"(south_out"+str(i)+str(j)+")"+","+".Write(Write)"+","+".Read(Read)"+');')
  if(i==0 and j==N-1):
    print("router r_$"+ str(i)+str(j)+'( .clk(clk), .rst(reset),'+".i00"+"(local_in"+str(i)+str(j)+")"+","+".i01"+"("+")"+","+".i02"+"(west_in"+str(i)+str(j)+")"+","+".i03"+"("+")"+",")
    print(".i04"+"(south_in"+str(i)+str(j)+")"+","+".o00"+"(local_out"+str(i)+str(j)+")"+","+".o01"+"("+")"+","+".o02"+"(west_out"+str(i)+str(j)+")"+","+".o03"+"("+")"+",")
    print(".o04"+"(south_out"+str(i)+str(j)+")"+","+".Write(Write)"+","+".Read(Read)")
    print(');')
  if(i==N-1 and j==0):
    print("router r_$"+ str(i)+str(j)+'( .clk(clk), .rst(reset),'+".i00"+"(local_in"+str(i)+str(j)+")"+","+".i01"+"(east_in"+str(i)+str(j)+")"+","+".i02"+"("+")"+",")
    print(".i03"+"(north_in"+str(i)+str(j)+")"+","+".i04"+"("+")"+","+".o00"+"(local_out"+str(i)+str(j)+")"+","+".o01"+"(east_out"+str(i)+str(j)+")"+","+".o02"+"("+")"+",")
    print(".o03"+"(north_out"+str(i)+str(j)+")"+","+".o04"+"("+")"+","+".Write(Write)"+","+".Read(Read)"+');')
  if(i==N-1 and j==N-1):
    print("router r_$"+ str(i)+str(j)+'( .clk(clk), .rst(reset),'+".i00"+"(local_in"+str(i)+str(j)+")"+","+".i01"+"("+")"+","+".i02"+"(west_in"+str(i)+str(j)+")"+",")
    print(".i03"+"(north_in"+str(i)+str(j)+")"+","+".i04"+"("+")"+","+".o00"+"(local_out"+str(i)+str(j)+")"+","+".o01"+"("+")"+","+".o02"+"(west_out"+str(i)+str(j)+")"+",")
    print(".o03"+"(north_out"+str(i)+str(j)+")"+","+".o04"+"("+")"+","+".Write(Write)"+","+".Read(Read)"+');')
  if(j==0 and i!=0 and i!=N-1):
    print("router r_$"+ str(i)+str(j)+'( .clk(clk), .rst(reset),'+".i00"+"(local_in"+str(i)+str(j)+")"+","+".i01"+"(east_in"+str(i)+str(j)+")"+","+".i02"+"("+")"+"," )   
    print(".i03"+"(north_in"+str(i)+str(j)+")"+","+".i04"+"(south_in"+str(i)+str(j)+")"+","+".o00"+"(local_out"+str(i)+str(j)+")"+","+".o01"+"(east_out"+str(i)+str(j)+")"+",")
    print(".o02"+"("+")"+","+".o03"+"(north_out"+str(i)+str(j)+")"+","+".o04"+"(south_out"+str(i)+str(j)+")"+","+".Write(Write)"+","+".Read(Read)"+');')
  if(j==N-1 and i!=0 and i!=N-1):
    print("router r_$"+ str(i)+str(j)+'( .clk(clk), .rst(reset),'+".i00"+"(local_in"+str(i)+str(j)+")"+","+".i01"+"("+")"+","+".i02"+"(west_in"+str(i)+str(j)+")"+",")
    print(".i03"+"(north_in"+str(i)+str(j)+")"+","+".i04"+"(south_in"+str(i)+str(j)+")"+","+".o00"+"(local_out"+str(i)+str(j)+")"+","+".o01"+"("+")"+",")
    print(".o02"+"(west_out"+str(i)+str(j)+")"+","+".o03"+"(north_out"+str(i)+str(j)+")"+","+".o04"+"(south_out"+str(i)+str(j)+")"+","+".Write(Write)"+","+".Read(Read)"+');')
  if(i==0 and j!=0 and j!=N-1):
    print("router r_$"+ str(i)+str(j)+'( .clk(clk), .rst(reset),'+".i00"+"(local_in"+str(i)+str(j)+")"+","+".i01"+"(east_in"+str(i)+str(j)+")"+","+".i02"+"(west_in"+str(i)+str(j)+")"+",")
    print(".i03"+"("+")"+","+".i04"+"(south_in"+str(i)+str(j)+")"+","+".o00"+"(local_out"+str(i)+str(j)+")"+","+".o01"+"(east_out"+str(i)+str(j)+")"+",")
    print(".o02"+"(west_out"+str(i)+str(j)+")"+","+".o03"+"("+")"+","+".o04"+"(south_out"+str(i)+str(j)+")"+","+".Write(Write)"+","+".Read(Read)"+');')
  if(i==N-1 and j!=0 and j!=N-1):
    print("router r_$"+ str(i)+str(j)+'( .clk(clk), .rst(reset),'+".i00"+"(local_in"+str(i)+str(j)+")"+","+".i01"+"(east_in"+str(i)+str(j)+")"+","+".i02"+"(west_in"+str(i)+str(j)+")"+",")
    print(".i03"+"(north_in"+str(i)+str(j)+")"+","+".i04"+"("+")"+","+".o00"+"(local_out"+str(i)+str(j)+")"+","+".o01"+"(east_out"+str(i)+str(j)+")"+",")
    print(".o02"+"(west_out"+str(i)+str(j)+")"+","+".o03"+"(north_out"+str(i)+str(j)+")"+","+".o04"+"("+")"+","+".Write(Write)"+","+".Read(Read)"+');')
  if(i!=0 and i!=N-1 and j!=0 and j!=N-1):
    print("router r_$"+ str(i)+str(j)+'( .clk(clk), .rst(reset),'+".i00"+"(local_in"+str(i)+str(j)+")"+","+".i01"+"(east_in"+str(i)+str(j)+")"+","+".i02"+"(west_in"+str(i)+str(j)+")"+",")
    print(".i03"+"(north_in"+str(i)+str(j)+")"+","+".i04"+"(south_in"+str(i)+str(j)+")"+","+".o00"+"(local_out"+str(i)+str(j)+")"+","+".o01"+"(east_out"+str(i)+str(j)+")"+",")
    print(".o02"+"(west_out"+str(i)+str(j)+")"+","+".o03"+"(north_out"+str(i)+str(j)+")"+","+".o04"+"(south_out"+str(i)+str(j)+")"+","+".Write(Write)"+","+".Read(Read)"+');')

def f4():
 print("always @ ( posedge clk)") 
 print("begin")
for j in range(1):
  f4()

for i in range(N):
 for j in range(N):
  if(i==0 and j==0):
   print("west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
   print("north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(i==0 and j==N-1):
   print(" east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
   print(" north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(i==N-1 and j==0):
   print(" west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
   print(" south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(i==N-1 and j==N-1):
   print(" east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
   print(" south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(j==0 and i!=0 and i!=N-1):
    print(" west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print(" south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
    print(" north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(j==N-1 and i!=0 and i!=N-1):
    print(" east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print(" south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
    print(" north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(i==0 and j!=0 and j!=N-1):
    print(" west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print(" east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print(" north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(i==N-1 and j!=0 and j!=N-1):
    print(" west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print(" east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print(" south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(i!=0 and i!=N-1 and j!=0 and j!=N-1):
    print(" west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print(" east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print(" south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
    print(" north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")

def f5():
  print("end")
for j in range(1):
  f5()  


def f6():
  print("endmodule")
for j in range(1):
  f6()
