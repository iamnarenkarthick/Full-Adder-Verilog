`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2025 02:02:50
// Design Name: 
// Module Name: full_adder_tb
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


`timescale 1ns / 1ps

module full_adder_tb;
    // Inputs
    reg A;
    reg B;
    reg Cin;

    // Outputs
    wire SUM;
    wire CARRY;

    // Instantiate the Full Adder module
    full_adder uut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .SUM(SUM), 
        .CARRY(CARRY)
    );

    // Test all possible 3-bit combinations
    initial begin
        // Display the header
        $display("A B Cin | SUM CARRY");
        $display("--------------------");
        
        // Test all 3-bit combinations using a loop
        for (integer i = 0; i < 8; i = i + 1) begin
            {A, B, Cin} = i;  // Assign each combination to A, B, Cin
            #10;              // Wait for 10 time units
            $display("%b %b %b   |  %b   %b", A, B, Cin, SUM, CARRY); // Display the result
        end

        // End simulation
        $finish;
    end
endmodule

