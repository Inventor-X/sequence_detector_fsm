`timescale 1ns / 1ps


module sequence_detector_tb(

    );
    
    reg inp,clk,reset;
    wire out;
    sequence_detector DUT(inp,clk,reset,out);
    initial begin
        reset<=0;
        clk<=0;
        inp<=0;
    end
    always #5 clk<=~clk;
    initial begin
        #10 reset<=1;
        inp<=0;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=1;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=0;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=1;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=1;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=1;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=1;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=0;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=1;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=1;
        #10 inp<=1;
        #10 inp<=0;
        #10 inp<=1;        
    end
    
    
endmodule
