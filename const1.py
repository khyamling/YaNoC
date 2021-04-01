import const
import pyverilog.vparser.ast as vast
from math import log
import math
m=int(log(const.N, 2))
for i in range(const.N/2):
 for j in range(m):
  #if(i<((const.N/4)) and j==0 ):
     #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     #print("port0_input"+str(i+(const.N/4))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #first level 1st half portion connection of N=8,16,32 and 64
  #if(i>((const.N/4)-1) and j==0 ):
     #print("port1_input"+str(i-(const.N/4))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #first level 2nd half portion connection of N=8,16,32 and 64
  #if(i<((const.N/8)) and j!=0 and j==(m/m) and j!=m-1 ):
     #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     #print("port0_input"+str(i+(const.N/8))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #second level 1st half portion connection of N=8,16,32 and 64
   #if(i>((const.N/8)-1) and i<(math.pow(2, m-2)) and j!=0 and j==(m/m) and j!=m-1 ):
     #print("port1_input"+str(i-(const.N/8))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     #print("port1_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")   #second level 2nd half portion connection of N=8,16,32 and 64
   #if(i>=(math.pow(2, m-2)) and i<(3*math.pow(2, m-3)) and j!=0 and j==(m/m) and j!=m-1 ):
     #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     #print("port0_input"+str(i+(const.N/8))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #second level 3rd half portion connection of N=8,16,32 and 64
   #if(i>=(3*math.pow(2, m-3))  and j!=0 and j==(m/m) and j!=m-1):
     #print("port1_input"+str(i-(const.N/8))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")   #second level 4th half portion connection of N=8,16,32 and 64
   #if(i<((const.N/16)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
     #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")  
     #print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 1st half portion connection of N=8,16,32 and 64
   #if(i>((const.N/16)-1) and i<(math.pow(2, m-3)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
     #print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 2nd half portion connection of N=8,16,32 and 64
   #if(i>=(math.pow(2, m-3)) and i<(3*math.pow(2, m-4)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
     #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
     #print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 3rd half portion connection of N=8,16,32 and 64
   #if(const.N==64):
    #if(i>=(math.pow(2, m-3)) and i<(3*math.pow(2, m-4)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 3rd half portion connection of N=64
   #if(const.N==64):
    #if(i>=(3*math.pow(2, m-4)) and i<(math.pow(2, m-2)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      #print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";") 
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 4th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-2)) and i<(math.pow(2, m-2)+4) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 5th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-2)+(m-2)) and i<(math.pow(2, m-2)+(m+2)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      #print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 6th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-2)+(m+2)) and i<(math.pow(2, m-1)-(m-2)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/16))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #Third level 7th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-1)-(m-2)) and i<(math.pow(2, m)) and j!=0 and j==(m/m)+1 and j!=m-1 ):
      #print("port1_input"+str(i-(const.N/16))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #Third level 8th half portion connection of N=64

  #if(const.N==64):
    #if(i>=0 and i<(math.pow(2, m-6)+1) and j!=0 and j==(m/m)+2 and j!=m-1 ):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 1th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-6)+1) and i<(math.pow(2, m-6)+3) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 2th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-6)+3) and i<(math.pow(2, m-4)+2) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 3th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-4)+2) and i<(math.pow(2, m-3)) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 4th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-3)) and i<(math.pow(2, m-3)+2) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 5th half portion connection of N=64
  #if(const.N==64):
   # if(i>=(math.pow(2, m-3)+2) and i<(math.pow(2, m-3)+4) and j!=0 and j==(m/m)+2 and j!=m-1):
    #  print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
    #  print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 6th half portion connection of N=64
  #if(const.N==64):
  #  if(i>=(math.pow(2, m-3)+4) and i<(math.pow(2, m-2)-2) and j!=0 and j==(m/m)+2 and j!=m-1):
   #   print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
   #   print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 7th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-2)-2) and i<math.pow(2, m-2) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 8th half portion connection of N=64
  #if(const.N==64):
    #if(i>=math.pow(2, m-2) and i<(math.pow(2, m-2)+2) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 9th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-2)+2) and i<(math.pow(2, m-2)+4) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";") 
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 10th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-2)+4) and i<(math.pow(2, m-2)+m) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 11th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-2)+m) and i<(math.pow(2, m-2)+(m+2)) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 12th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-2)+(m+2)) and i<(math.pow(2, m-2)+(m+4)) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 13th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-2)+(m+4)) and i<(math.pow(2, m-1)-4) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 14th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-1)-4) and i<(math.pow(2, m-1)-2) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/32))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")  #fourth level 15th half portion connection of N=64
  #if(const.N==64):
    #if(i>=(math.pow(2, m-1)-2) and i<math.pow(2, m-1) and j!=0 and j==(m/m)+2 and j!=m-1):
      #print("port1_input"+str(i-(const.N/32))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fourth level 16th half portion connection of N=64
  #if(const.N==64): 
    #if(i%2==0 and j!=0 and j==(m/m)+3 and j!=m-1 ):
      #print("port0_input"+str(i)+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port0_input"+str(i+(const.N/const.N))+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";")
    #elif(i%2!=0 and j!=0 and j==(m/m)+3 and j!=m-1 ):
      #print("port1_input"+str(i-(const.N/const.N))+str(j+1)+"<="+"port0_output"+str(i)+str(j)+";")
      #print("port1_input"+str(i)+str(j+1)+"<="+"port1_output"+str(i)+str(j)+";") #fifth level of N=64 


