#complete working
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
N = 3

points = N 
logpoints=int(log(points, 2))

print("module mesh (")
n_index = logpoints 
index_rev = [0]*points
for i in range(points): 
   index_rev[i] = sum(1<<(n_index-1-j) for j in range(n_index) if i>>j&1)
index_rev = tuple(index_rev)

print('clk, reset, ')
print("local_in"+", local_in".join(map(str, range(N)))+",")
print("local_out"+", local_out".join(map(str, range(N)))+",")
print(' Write, Read);')
print( 'input clk, rst, Write, Read, ');
datawid = vast.Parameter( 'DATAWID', vast.Rvalue(vast.IntConst('32')) )
params = vast.Paramlist( [datawid] )
codegen = ASTCodeGenerator() 
rslt1 = codegen.visit(params)
print(rslt1)
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

def f2():
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
  width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
  east =  vast.Reg("east_in"+str(i)+str(j), width=width)
  west =  vast.Reg("west_in"+str(i)+str(j), width=width)
  north =  vast.Reg("north_in"+str(i)+str(j), width=width)
  south =  vast.Reg("south_in"+str(i)+str(j), width=width)
  f2()

def f3():
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
  width = vast.Width( vast.Minus(vast.Identifier('DATAWID'), vast.IntConst('1')), vast.IntConst('0') )
  east =  vast.Wire("east_out"+str(i)+str(j), width=width)
  west =  vast.Wire("west_out"+str(i)+str(j), width=width)
  north =  vast.Wire("north_out"+str(i)+str(j), width=width)
  south =  vast.Wire("south_out"+str(i)+str(j), width=width)
  f3()

for i in range(N):
 for j in range(N):
  print("def FFT_$"+ str(i)+str(j))
  print('( .clk(clk), .rst(reset),')
  print(".local_in"+"(local_in"+str(i)+str(j)+")"+",")
  print(".east_in"+"(east_in"+str(i)+str(j)+")"+",")
  print(".west_in"+"(west_in"+str(i)+str(j)+")"+",")
  print(".north_in"+"(north_in"+str(i)+str(j)+")"+",")
  print(".south_in"+"(south_in"+str(i)+str(j)+")"+",")
  print(".local_out"+"(local_out"+str(i)+str(j)+")"+",")
  print(".east_out"+"(east_out"+str(i)+str(j)+")"+",")
  print(".west_out"+"(west_out"+str(i)+str(j)+")"+",")
  print(".north_out"+"(north_out"+str(i)+str(j)+")"+",")
  print(".south_out"+"(south_out"+str(i)+str(j)+")"+",")
  print(');')

def f4():
 print("always @ ( posedge clk) \n begin") 
for j in range(1):
  f4()

for i in range(N):
 for j in range(N):
  if(i==0 and j==0):
   print("assign west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
   print("assign north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(i==0 and j==N-1):
   print("assign East_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
   print("assign north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(i==N-1 and j==0):
   print("assign west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
   print("assign south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(i==N-1 and j==N-1):
   print("assign east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
   print("assign south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(j==0 and i!=0 and i!=N-1):
    print("assign west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print("assign south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
    print("assign north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(j==N-1 and i!=0 and i!=N-1):
    print("assign east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print("assign south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
    print("assign north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(i==0 and j!=0 and j!=N-1):
    print("assign west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print("assign east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print("assign north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")
  if(i==N-1 and j!=0 and j!=N-1):
    print("assign west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print("assign east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print("assign south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
  if(i!=0 and i!=N-1 and j!=0 and j!=N-1):
    print("assign west_in"+str(i)+str(j+1)+"<="+"east_out"+str(i)+str(j)+";")
    print("assign east_in"+str(i)+str(j-1)+"<="+"west_out"+str(i)+str(j)+";")
    print("assign south_in"+str(i-1)+str(j)+"<="+"north_out"+str(i)+str(j)+";")
    print("assign north_in"+str(i+1)+str(j)+"<="+"south_out"+str(i)+str(j)+";")

def f5():
  print("end")
for j in range(1):
  f5()  


def f6():
  print("endmodule")
for j in range(1):
  f6()
