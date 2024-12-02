`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2024 17:27:20
// Design Name: 
// Module Name: Triple_DES_decrypt
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


module Triple_DES_decrypt(
    input [1:4] message_sw,
    input [1:3] K1_sw,
    input [1:3] K2_sw,
    input [1:2] choice,
    output reg [1:16] ox
    );
    wire [1:64]EM1,EM2;
	wire [1:64]message,K1,K2;
	wire [1:64] encr_message;
	bf_demux inp(message_sw, K1_sw, K2_sw, message, K1, K2);
    Single_DES_main_decrypt D1(message,K1,EM1);
    Single_DES_main D2(EM1,K2,EM2);
    Single_DES_main_decrypt D3(EM2,K1,encr_message);
    always @(choice)
    begin 
    if(choice == 2'b00)
     ox=encr_message[1:16];
    else if(choice == 2'b01)
     ox=encr_message[17:32];
    else if(choice == 2'b10)
     ox=encr_message[33:48];
    else
     ox=encr_message[49:64];
    end
endmodule
