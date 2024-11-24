`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2024 17:12:53
// Design Name: 
// Module Name: Unsigned_tb
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


module Unsigned_tb;
logic [7:0] A;
    logic [7:0] B;
    logic [8:0] Sum;

    Unsigned #(4, 4, 4, 4) uut (
        .A(A),
        .B(B),
        .Sum(Sum)
    );

    initial begin
        $monitor("Time: %0t | A: %b | B: %b | Sum: %b", $time, A, B, Sum);
        A = 8'b00111000;
        B = 8'b01001000;
        #10;

        A = 8'b00010100;
        B = 8'b00100110;
        #10;

        A = 8'b01111111;
        B = 8'b00000001;
        #10;

            A = 8'b01011111;
            B = 8'b01000001;
        #10;

        $finish;
    end
endmodule

