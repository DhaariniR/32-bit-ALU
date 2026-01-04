`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2025 23:52:32
// Design Name: 
// Module Name: ALU_32bits_tb
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


module ALU_32bits_tb;
    reg [31:0]A,B;
    reg [3:0]SelOp;
    wire [31:0]C;
ALU_32bits ALU1(.A(A), .B(B) , .SelOp(SelOp) , .C(C));
initial begin
    A=32'd15;
    B=32'd13;
  
    //1-not
    SelOp=4'b0000;
    #10;
    $display("NOT: A=%d,C=%d",A,C);
    
    //2-add
    SelOp = 4'b0001;
    #10;
    $display("ADD: A=%d,B=%d,C=%d",A,B,C);
   
     //3-sub
     SelOp = 4'b0010;
     #10;
     $display("SUB: A=%d,B=%d,C=%d",A,B,C);
    
      //4-mul
      SelOp = 4'b0011;
      #10; 
      $display("MUL: A=%d,B=%d,C=%d",A,B,C);
     
      //5-and
      SelOp = 4'b0100;
      #10;
      $display("AND: A=%d,B=%d,C=%d",A,B,C);
     
      //6-or
       SelOp = 4'b0101; 
       #10;
       $display("OR: A=%d,B=%d,C=%d",A,B,C);
      
       //7-xor
       SelOp = 4'b0110;
       #10;
       $display("XOR: A=%d,B=%d,C=%d",A,B,C);
       
       //8-right shifting
       SelOp = 4'b0111;
       #10;
       $display("SHIFT RIGHT: A=%d,C=%d",A,C);
       
       //9-left shifting
        SelOp = 4'b1000; 
        #10;
        $display("SHIFT LEFT: A=%d,C=%d",A,C);
       
       //10-default case all bits = 0
       //10-a)
       SelOp = 4'b1001;
       #10;
       $display("DEFAULT: C=%d",C);
      
       //10-b)
       SelOp = 4'b1111;
       #10;
       $display("DEFAULT: C=%d",C);
       
       $finish;
     end
       
endmodule
