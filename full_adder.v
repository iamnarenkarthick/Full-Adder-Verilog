`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2025 01:58:36
// Design Name: 
// Module Name: full_adder
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


module full_adder(A, B, Cin, SUM, CARRY);
    input A, B, Cin;
    output SUM, CARRY;
    wire SUM1, CARRY1, CARRY2;

    // First half adder instance
    half_adder HA1(
        .a(A), 
        .b(B), 
        .sum(SUM1), 
        .carry(CARRY1)
    );

    // Second half adder instance
    half_adder HA2(
        .a(SUM1), 
        .b(Cin), 
        .sum(SUM), 
        .carry(CARRY2)
    );

    // Carry out logic
    assign CARRY = CARRY1 | CARRY2;
endmodule

// Half Adder Module Definition
module half_adder(a, b, sum, carry);
    input a, b;
    output sum, carry;

    assign sum = a ^ b;  // XOR gate for sum
    assign carry = a & b; // AND gate for carry
endmodule

