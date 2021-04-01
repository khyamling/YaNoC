`timescale 1ns / 1ps

module testFifoSynch;
    parameter NUM_BITS = 32;
    parameter DEPTH = 8;
    
    // Inputs
    reg rst_n;
    reg clk;
    reg rd_en;
    reg wr_en;
    reg [(NUM_BITS-1):0] fifo_in;
    
    // Outputs
    wire [(NUM_BITS-1):0] fifo_out;
    wire empty;
    wire full;
    wire [(clog2(DEPTH)):0] fifo_counter;    
    
    reg [(NUM_BITS-1):0] tempdata;
    
    // Instantiate FIFO
    fifoSynch #(NUM_BITS,DEPTH) U0(rst_n,clk,rd_en,wr_en,fifo_in,fifo_out,empty,full,fifo_counter);
    
    // Initial values (initial execute only once at time zero)
    initial begin
        clk = 0;
        rst_n = 1;
        rd_en = 0;
        wr_en = 0;
        tempdata = 0;
        fifo_in = {NUM_BITS{1'bx}};
        #1 rst_n = 0;
        #1 rst_n = 1;
    end
    
    // Create clock
    always
    #5 clk = ~clk;
    
    // Stimulate
    initial begin       
        $display("Start test:1 at:%t",$time);     
        push(1);
        push(2);
        push(3);
        push(4);
        push(5);
        pop(tempdata);
        pop(tempdata);        
        pop(tempdata);
        pop(tempdata);        
        pop(tempdata);
        pop(tempdata); // This pop should fail...
        push(6);
        push(7);
        push(8);
        push(9);
        push(10);
        push(11);
        push(12);
        push(13);
        push(14);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        
        // Wait 2 ticks of the clock
        @(negedge clk);
        @(negedge clk);
        $display("Start test:2 at:%t",$time);
        push(20);   // We need to add at least one to don't get empty
        fork
            push(1);
            pop(tempdata);
        join              //push and pop together 
        fork
            push(2);
            pop(tempdata);
        join              //push and pop together
        fork
            push(3);
            pop(tempdata);
        join              //push and pop together
        fork
            push(4);
            pop(tempdata);
        join              //push and pop together
        fork
            push(5);
            pop(tempdata);
        join              //push and pop together
        fork
            push(6);
            pop(tempdata);
        join              //push and pop together
        @(negedge clk);
        @(negedge clk);
        $stop;
    end

    function integer clog2;
    input integer depth;
        begin
            depth = depth - 1;
            for(clog2=0; depth>0; clog2=clog2+1)
                depth = depth >> 1;
        end
    endfunction
    
    task push;
    input[(NUM_BITS-1):0] data;        
    if( full )
        $display("---Cannot push <%d>: Buffer Full at time %t",data,$time);
    else
    begin        
        fifo_in = data;
        wr_en = 1;
        @(posedge clk);
        #1 wr_en = 0;
    end    
    endtask
    
    task pop;
    output [(NUM_BITS-1):0] data;    
    if( empty )
        $display("---Cannot Pop: Buffer Empty at time %t",$time);
    else
    begin    
        rd_en = 1;
        @(posedge clk);   
        #1 rd_en = 0;
        data = fifo_out;    
    end
    endtask
endmodule