//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2024 18:36:37
// Design Name: 
// Module Name: phase1_2_tb
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
module tb_Single_DES_main;
  reg [1:64] message;
  reg [1:64] key;
  wire [1:64] encrypted_message;

  // Instantiate the DES module
  Single_DES_main uut (
    .message(message),
    .key(key),
    .encrypted_message(encrypted_message)
  );

  // Testbench logic
  integer file;
  initial begin
    // Open the file to write the encrypted message in binary format
    file = $fopen("encrmsg.txt", "w");

    // Initialize inputs
    message = 64'h85abcd1a98876543;
    key = 64'ha1b2c3d4e5f61234;

    // Wait for 10 time units for encryption to complete
    #10;

    // Write the encrypted_message to the file in binary format
    $fdisplayb(file, "%b", encrypted_message);
    // Close the file
    $fclose(file);

    // End simulation
    $finish;
  end
endmodule