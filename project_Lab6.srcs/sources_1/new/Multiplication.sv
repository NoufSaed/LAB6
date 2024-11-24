`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2024 16:19:56
// Design Name: 
// Module Name: Multiplication
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


module Multiplication #(parameter n1=3 ,parameter n2=3 , parameter m1=5 , parameter m2=5)

(  
  input logic [n1+m1-1:0]a,
   input logic [n2+m2-1:0]b, 
   output logic [n1+m1+n2+m2:0]p
);    
    
    assign p=a*b;
endmodule
