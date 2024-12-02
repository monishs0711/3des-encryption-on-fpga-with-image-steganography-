`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2024 21:35:03
// Design Name: 
// Module Name: expand
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


module expand(
    input [1:32] R,
    input [1:48]k,
    output [1:48]o
    );
    wire [1:48] E;
    assign E[1] = R[32];
  assign E[2] = R[1];
  assign E[3] = R[2];
  assign E[4] = R[3];
  assign E[5] = R[4];
  assign E[6] = R[5];
  assign E[7] = R[4];
  assign E[8] = R[5];
  assign E[9] = R[6];
  assign E[10] = R[7];
  assign E[11] = R[8];
  assign E[12] = R[9];
  assign E[13] = R[8];
  assign E[14] = R[9];
  assign E[15] = R[10];
  assign E[16] = R[11];
  assign E[17] = R[12];
  assign E[18] = R[13];
  assign E[19] = R[12];
  assign E[20] = R[13];
  assign E[21] = R[14];
  assign E[22] = R[15];
  assign E[23] = R[16];
  assign E[24] = R[17];
  assign E[25] = R[16];
  assign E[26] = R[17];
  assign E[27] = R[18];
  assign E[28] = R[19];
  assign E[29] = R[20];
  assign E[30] = R[21];
  assign E[31] = R[20];
  assign E[32] = R[21];
  assign E[33] = R[22];
  assign E[34] = R[23];
  assign E[35] = R[24];
  assign E[36] = R[25];
  assign E[37] = R[24];
  assign E[38] = R[25];
  assign E[39] = R[26];
  assign E[40] = R[27];
  assign E[41] = R[28];
  assign E[42] = R[29];
  assign E[43] = R[28];
  assign E[44] = R[29];
  assign E[45] = R[30];
  assign E[46] = R[31];
  assign E[47] = R[32];
  assign E[48] = R[1];
  assign o=E^k; //this is right for sure

endmodule
