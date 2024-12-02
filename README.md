# 3des-encryption-on-fpga-with-image-steganography-

![image](https://github.com/user-attachments/assets/750e0ae9-54ff-4bd5-8ab1-b9367c1e931a)

We have implemented the 3des encryption, having written it all on verilog hdl, with inputs begin Key k1, key k2, and original message (all of 64 bits each). The various PC, P tables and S boxes have been according to DES. A single DES has been written with 16 rounds being instantiated, for encryption and the keys have been reversed at each round resp. for the sake of decryption, since the des function is a friestal function. 
hence: for 3des encryption-> DES encr-decr-encr with k1 and k2 respectively, whereas for 3des decryption-> DES decr-encr-decr with k1 and k2 respectively.

Outputs of each round of encryption is verified with that of decryption correspondingly and the margin of error is negligible..

PIN MAPPING:

We implemented it on xilinx's basys-3 fpga; since it has a limited number of switches/pins, to overcome the problem of giving a 64*3 bit input, we have used muxes, with predefined set of 64 bit inputs, and can be controlled by switches on the board (eg. 4 switches for 2^4 combinations of 64 bit input messages and so on). 

Similarly, output can be drawn as well.

Then, save it into a .txt file for steganography.

We have used the LSB (least significant bit) technique for image steganography and use greyscale image for further simplicity in the rgb values (0-255).

<img width="1175" alt="Screenshot 2024-11-27 at 10 13 45" src="https://github.com/user-attachments/assets/d8c68643-551b-421a-831c-729f90e57829">

FUTURE SCOPE: 
1) Automation using Putty/terminal to recieve serially transmitted output cipher
2) Uart tx/rx for more ease of access for input and outputs
3) Image processing ips for hardware accleration
4) webcam integration for low res images with real time encryption


