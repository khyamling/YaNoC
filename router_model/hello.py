#!/usr/bin/env python
import io
import const
text1 = open('output2.txt', 'w')
text2 = open('output1.txt', 'w')

def f1():
   text1.write(b+";"+"\n")                     # for 6 digits
for i in xrange(const.N*const.N):
    b = bin(i)[2:]
    l = len(b)
    b = str(0) * (const.n - l) + b
    f1()


def f2():
 text2.write(p+'\n')
  
for i in range(const.N):
 for j in range(const.N):
  p="localparam id"+str(i)+str(j)+"="
  f2()







