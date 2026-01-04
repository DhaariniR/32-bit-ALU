`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2025 23:37:03
// Design Name: 
// Module Name: ALU_32bits
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_32bits(
    input [31:0] A,
    input [31:0] B,
    input [3:0] SelOp,
    output reg [31:0] C
    );
always @(*)
    begin
      case(SelOp)
        4'b0000:  C=~A;
        4'b0001:  C=A+B;
        4'b0010:  C=A-B; 
        4'b0011:  C=A*B;
        4'b0100:  C=A&B;
        4'b0101:  C=A|B;
        4'b0110:  C=A^B;
        4'b0111:  C=A>>1;
        4'b1000:  C=A<<1;
        default:  C=32'b0;
     endcase
   end
   
endmodule
