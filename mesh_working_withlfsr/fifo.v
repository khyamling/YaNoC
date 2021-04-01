`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:49 04/25/2017 
// Design Name: 
// Module Name:    fifo 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fifo #(parameter NUM_BITS=32, DEPTH=8)
    (
        input rst_n,
        input clk,
       input rd_en,
        input wr_en,
		  //input enable,
		 // input enable,
        input [(NUM_BITS-1):0] fifo_in,
        output reg [(NUM_BITS-1):0] fifo_out,
		 output reg [7:0] fifo_out1

	
        
       // Able to count more than depth
    );
    
    // Read and write fifo pointers (We put -2, because on the case of DEPTH=8
    // clog2(DEPTH) = 3, then 1:0, 2 bits, we count from 0 to 3
    reg [(clog2(DEPTH)-1):0] rd_ptr, wr_ptr;
	 reg [(clog2(DEPTH)):0] fifo_counter;
	 wire empty, full;
	// reg [(NUM_BITS-1):0] h1;
//	 reg flag;
	    //  initial flag=1'b1;

    // Declare the fifo memory (RAM that allow read and write at the same time)
    // reg [7:0] fifo_mem[3:0], create an array of 4 elements of 8 bits
    reg[(NUM_BITS-1):0] fifo_mem[(DEPTH-1):0];
    
    // Combinational part that calculate the empty/full flags
    assign empty = (fifo_counter==0);
    assign full = (fifo_counter==DEPTH);
    
    // Sequential circuit that will handle the fifo_counter, which is used to 
    // detect if the fifo is empty or full.
    always @(posedge clk or posedge rst_n)
    begin
        if (rst_n)
            fifo_counter <= 0;
        else if( (!full && wr_en) && ( !empty && rd_en ) ) 
            fifo_counter <= fifo_counter;     // If read and write don't change counter          
        else if (!full && wr_en)  
            fifo_counter <= fifo_counter + 4'b0001; // Only write increment            
        else if (!empty && rd_en)  
            fifo_counter <= fifo_counter - 4'b0001; // Only read decrement                                          
    end
    
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or posedge rst_n)
    begin
        if(rst_n )
		    begin
            fifo_out<=0;
				fifo_out1<=0;
		//		flag=0;
				end
        else if(empty && !rd_en)
		     begin 
			//   $display("cannot Popping value: %d at %t",fifo_mem[rd_ptr],$time); 
			end
          else if(!empty && fifo_mem[rd_ptr][31:30]==01)
                begin				   	 	
					  fifo_out1<= fifo_mem[rd_ptr][15:8];
                fifo_out<=   fifo_mem[rd_ptr];
                 //flag<=0;					  
					   $display("Popping value fifo_out1: %b, %d, %b, %d,%t",fifo_mem[rd_ptr],fifo_mem[rd_ptr],fifo_mem[rd_ptr][15:8],fifo_mem[rd_ptr][15:8],$time);
					//	$display("Popping value fifo_out1: %b, %t", flag, $time);
				    	$display("Popping value head fifo_out: %b, %b, %d, %t",fifo_mem[rd_ptr],fifo_out, rd_ptr, $time);
					//	$display("Popping value from first flag: %b, %t",flag, $time);
						end
           //   else  if(!empty && rd_en && h1[31:30]==01)
				//	    begin
              //    	fifo_out<=h1;
					//		flag=1'b0;
						//$display("Popping value fifo_out:  %b, h1: %b, %t", fifo_out, h1,$time); 
					//		end
					 else  if(!empty && rd_en)
					 begin
					    if(fifo_mem[rd_ptr]!=10 && rd_en)
					    begin
                   fifo_out<=   fifo_mem[rd_ptr];
						 // flag<=1;
						  $display("Popping value fifo_out: body %b, %b, %d, %d, %t",fifo_out, fifo_mem[rd_ptr], rd_ptr, rd_en, $time); 
						  end
						  else  if(fifo_mem[rd_ptr]==10 && rd_en)
					       begin
                       fifo_out<=  fifo_mem[rd_ptr];
							  $display("Popping value fifo_out: body %b, %b, %d, %d, %t",fifo_out, fifo_mem[rd_ptr], rd_ptr, rd_en, $time); 
							 // flag<=#62 1;
							  end	
                    else
                      begin
							// flag<=1;
							 $display("waite for head flit %b, %b, %b, %b,  %t", fifo_out, fifo_mem[rd_ptr], rd_ptr, rd_en,  $time);
                  end							 
end
end
// Sequential circuit to handle writing to the fifo
    always @(posedge clk)
    begin    
       if (!full && wr_en)
        begin
            fifo_mem[ wr_ptr ] <= fifo_in;
			//	$display("fifo input data %d", fifo_mem[ wr_ptr ]);
            // synthesis translate_off                    
        //  $display("Pushing value: %b, %d, %t",fifo_in,fifo_in,$time);                    
            // synthesis translate_on
        end  
else if(full && !wr_en)
begin	  
 //  $display("cannot Pushing value: %d at %t",fifo_in,$time);     
    end
	 end
    
    // Sequential circut to handle the read/write pointers
    always@(posedge clk or posedge rst_n)
    begin
        if( rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr <= 0;
            rd_ptr <= 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full && wr_en )
                wr_ptr <= wr_ptr + 3'b001;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty && rd_en )
                rd_ptr <= rd_ptr + 3'b001;          
        end    
    end    

 
    /* 
        Calculate the ceil of log2, this is used to know the number of bits needed to
        map a certain depth (need to be power 2). This function will be called on 
        compilation-time
    */         
    function integer clog2;
    input integer depth;
        begin
            depth = depth - 1;
            for(clog2=0; depth>0; clog2=clog2+1)
                depth = depth >> 1;
        end
    endfunction
	 
	
endmodule

