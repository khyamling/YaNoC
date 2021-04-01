import sys
import os

from veriloggen import *
def mkLed():
    m = Module('blinkled')
    width = m.Parameter('WIDTH', 8)
    clk = m.Input('CLK')
    rst = m.Input('RST')
    led = m.OutputReg('LED', width)
    count = m.Reg('count', 32)

    m.Always(Posedge(clk),
             [ If(rst,
                  [ count.set(0) ],
                  [ count.set(count + 1) ])])

    m.Always(Posedge(clk),
             [ If(rst,
                  [ led.set(0) ],
                  [ If(count == 1024 - 1,
                       [ led.set(led + 1) ])])])

    return m

led = mkLed()
verilog = led.toVerilog()
print(verilog)
