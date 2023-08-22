//This is a 1011 sequence detector verilog code
`timescale 1ns / 1ps
module sequence_detector(
    input inp,clk,reset,output reg out
    );
    parameter S0=3'd0,S1=3'd1,S2=3'd2,S3=3'd3,S4=3'd4;
    
    reg [2:0] p_state,n_state;
    //pstate logic
    always @(posedge clk)begin
        if(!reset) p_state<=S0;
        else p_state<=n_state;
    end
    //n_state logic
    always@(inp,p_state)begin
        case(p_state)
            S0:n_state<=inp?S1:S0;
            S1:n_state<=inp?S1:S2;
            S2:n_state<=inp?S3:S0;
            S3:n_state<=inp?S4:S2;
            S4:n_state<=inp?S1:S2;      
        endcase
    
    end
    //output_logic
    
    always@(p_state)begin
        case(p_state)
            S0:out<=1'b0;
            S1:out<=1'b0;
            S2:out<=1'b0;
            S3:out<=1'b0;
            S4:out<=1'b1; 
            default:out<=1'b0;          
    
        endcase
    
    end
    
    
endmodule
