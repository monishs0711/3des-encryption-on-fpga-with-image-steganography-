`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2024 21:18:59
// Design Name: 
// Module Name: rounds
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
//////////////////////////////////////////////////

module roundbro(
    input [1:32] L,
    input [1:32] R,
    output [1:32] L_,
    output [1:32] R_,
    input [1:48] K
    //output [1:32] rint,
    //output [1:48] o
    );
    wire [1:48]E,O;
    wire [1:32]rint;
    assign L_=R;
    expand E1(R,K,O);
    subs_box s(O,L,R_);  //works fine   
endmodule