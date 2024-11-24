`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2024 16:22:35
// Design Name: 
// Module Name: tb_Multiplication
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


module tb_Multiplication;
    parameter n1 = 3;
    parameter n2 = 3;
    parameter m1 = 5;
    parameter m2 = 5;

    logic [n1 + m1 - 1 : 0] a;
    logic [n2 + m2 - 1 : 0] b;
    logic [n1 + m1 + n2 + m2 : 0] p;

     Multiplication #(n1, n2, m1, m2) dut (
        .a(a),
        .b(b),
        .p(p)
    );

    initial begin
        a = 8'b00000001;
        b = 8'b00000101;
        #10;
        $display("a = %0d, b = %0d, p = %0d", a, b, p);

        a = 8'b00000001;
        b = 8'b00000011;
        #10;
        $display("a = %0d, b = %0d, p = %0d", a, b, p);

        a = 8'b00000010;
        b = 8'b00000011;
        #10;
        $display("a = %0d, b = %0d, p = %0d", a, b, p);
        a = 8'b11011100;
        b = 8'b10100000;
        #10;
        $display("a = %0d, b = %0d, p = %0d", a, b, p);
        $finish;
    end

    
endmodule
