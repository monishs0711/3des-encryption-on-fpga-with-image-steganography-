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
module tb_Triple_DES_main;
  reg [1:4] message_sw;
  reg [1:3] K1_sw;
  reg [1:3] K2_sw;
  reg [1:2] choice;
  wire [1:16] ox;

  // Instantiate the DES module
  //Encryption
  Triple_DES_mux uut (
    .message_sw(message_sw),
    .K1_sw(K1_sw),
    .K2_sw(K2_sw),
    .choice(choice),
    .ox(ox)
  );
  
  //Decryption
  /*Triple_DES_decrypt uut(
    .message(message),
    .K1(K1),
    .K2(K2),
    .encr_message(encrypted_message)
  );*/

  // Testbench logic
  integer file;
  initial begin
    // Open the file to write the encrypted message in binary format
    file = $fopen("encrmsg.txt", "w");

    // Initialize inputs
    //message = 64'h85abcd1a98876543;  //original
    message_sw = 4'b1111;
    //message = 64'hc1f765c38141799e;  //encrypted
    K1_sw = 3'b101;
    K2_sw = 3'b111;
    #10
    choice = 2'b00;
    #5
    choice = 2'b01;
    #5
    choice = 2'b10;
    #5
    choice = 2'b11;

    // Wait for 10 time units for encryption to complete
    #10;

    // Write the encrypted_message to the file in binary format
    $fdisplayb(file, "%b", ox);
    // Close the file
    $fclose(file);

    // End simulation
    $finish;
  end
endmodule