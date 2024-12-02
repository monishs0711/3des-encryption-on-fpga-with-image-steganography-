# 3des-encryption-on-fpga-with-image-steganography-
![image](https://github.com/user-attachments/assets/750e0ae9-54ff-4bd5-8ab1-b9367c1e931a)


We have implemented the 3des encryption, having written it all on verilog hdl, with inputs begin Key k1, key k2, and original message (all of 64 bits each). The various PC, P tables and S boxes have been according to DES. A single DES has been written with 16 rounds being instantiated, for encryption and the keys have been reversed at each round resp. for the sake of decryption, since the des function is a friestal function. 
hence: for 3des encryption-> DES encr-decr-encr with k1 and k2 respectively, whereas for 3des decryption-> DES decr-encr-decr with k1 and k2 respectively.
