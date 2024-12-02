`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2024 16:59:29
// Design Name: 
// Module Name: TripleDES
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


module TripleDES(
    input [1:64] message,
    input [1:64] K1,
    input [1:64] K2,
    output [1:64] encr_message
    );
    wire [1:64]EM1,EM2;
    Single_DES_main D1(message,K1,EM1);
    Single_DES_main_decrypt D2(EM1,K2,EM2);
    Single_DES_main D3(EM2,K1,encr_message);
    //bf_demux inp(message_sw, K1_sw, K2_sw, message, K1, K2);
endmodule
