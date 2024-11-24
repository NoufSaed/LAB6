`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2024 14:49:55
// Design Name: 
// Module Name: Unsigned
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


module Unsigned#(parameter n1=3 ,parameter n2=3 , parameter m1=5 , parameter m2=5)
(
    input logic [n1+m1-1:0] A, 
    input logic [n2+m2-1:0] B, 
    output logic [n1+m1:0] Sum  
);

 
    logic [n1+m1:0] A_1, B_1;

    assign A_1= A << (m1 > m2 ? m1 - m2 : 0);  
    assign B_1 = B << (m2 > m1 ? m2 - m1 : 0);  

    
    assign Sum = A_1 + B_1;

endmodule