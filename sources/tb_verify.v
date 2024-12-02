`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Companmessage_sw: 
// Engineer: 
// 
// Create Date: 30.11.2024 01:33:14
// Design Name: 
// Module Name: tb_verifmessage_sw
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


module tb_verify();
  reg [1:64] message_sw;
  reg [1:64] K1_sw;
  reg [1:64] K2_sw;
  wire [1:64] ox;

  // Instantiate the DES module
  //Encrmessage_swption
  TripleDES uut (
    .message(message_sw),
    .K1(K1_sw),
    .K2(K2_sw),
    .encr_message(ox)
  );
  
  //Decrmessage_swption
  /*Triple_DES_decrmessage_swpt uut(
    .message_sw(message_sw),
    .K1(K1),
    .K2(K2),
    .encr_message_sw(encrmessage_swpted_message_sw)
  );*/

  // Testbench logic
  integer file;
  initial begin
    // Open the file to write the encrmessage_swpted message_sw in binarmessage_sw format
    file = $fopen("encrmsg.txt", "w");

    // Initialize inputs
   message_sw = 64'h85abcd1a98876543;
   K1_sw = 64'b0001001000110100010101101010101111001101000100110010010100110110;
   K2_sw = 64'b0100010000100001101010111111101000110111010001011101111011001010;
   #25
message_sw = 64'h4421ABFA3745DECA;
   K1_sw = 64'b0100010000100001101010111111101000110111010001011101111011001010;
   K2_sw = 64'b0101010000110010100010011100110110111010111111110110011100110010;
   #25
message_sw = 64'h543289CDBAFF6732;
   K1_sw = 64'b0101010000110010100010011100110110111010111111110110011100110010;
   K2_sw = 64'b1010101100010001101111000010001000110100110111010101011010101111;
   #25
message_sw = 64'hAB11BC2234DD56AF;
   K1_sw = 64'b1010101100010001101111000010001000110100110111010101011010101111;
   K2_sw = 64'b0001001000110100001100111101110101000100111111111001100001010001;
   #25
message_sw = 64'h123433DD44FF9851;
   K1_sw = 64'b0001001000110100001100111101110101000100111111111001100001010001; 
   K2_sw = 64'b1110111111101111111110101111101010111100101111001101101011011011; 
   #25
message_sw = 64'hEFEFFAFABCBCDADB;
   K1_sw = 64'b1110111111101111111110101111101010111100101111001101101011011011;
   K2_sw = 64'b1011101000010100111110100110010100100011010000010110100001010111;
   #25
message_sw = 64'hBA14FA6523416857;
   K1_sw = 64'b1011101000010100111110100110010100100011010000010110100001010111;
   K2_sw = 64'b1101110001111000101110100110010100010010111011110011010001000011;
   #25
message_sw = 64'hDC78BA6512EF3443;
   K1_sw = 64'b0001001000110100010101101010101111001101000100110010010100110110;
   K2_sw = 64'b0001001000110100010101101010101111001101000100110010010100110110;
   #25
    // Wait for 10 time units for encrmessage_swption to complete
    #10;

    // Write the encrmessage_swpted_message_sw to the file in binarmessage_sw format
    $fdisplay(file, "%b", ox);
    // Close the file
    $fclose(file);

    // End simulation
    $finish;
  end
endmodule

