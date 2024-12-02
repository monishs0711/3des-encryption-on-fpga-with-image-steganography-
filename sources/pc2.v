module pc2(
    input [1:56] k,
    output [1:48] subkey
);

    assign subkey[1]  = k[14];
    assign subkey[2]  = k[17];
    assign subkey[3]  = k[11];
    assign subkey[4]  = k[24];
    assign subkey[5]  = k[1];
    assign subkey[6]  = k[5];
    assign subkey[7]  = k[3];
    assign subkey[8]  = k[28];
    assign subkey[9]  = k[15];
    assign subkey[10] = k[6];
    assign subkey[11] = k[21];
    assign subkey[12] = k[10];
    assign subkey[13] = k[23];
    assign subkey[14] = k[19];
    assign subkey[15] = k[12];
    assign subkey[16] = k[4];
    assign subkey[17] = k[26];
    assign subkey[18] = k[8];
    assign subkey[19] = k[16];
    assign subkey[20] = k[7];
    assign subkey[21] = k[27];
    assign subkey[22] = k[20];
    assign subkey[23] = k[13];
    assign subkey[24] = k[2];
    assign subkey[25] = k[41];
    assign subkey[26] = k[52];
    assign subkey[27] = k[31];
    assign subkey[28] = k[37];
    assign subkey[29] = k[47];
    assign subkey[30] = k[55];
    assign subkey[31] = k[30];
    assign subkey[32] = k[40];
    assign subkey[33] = k[51];
    assign subkey[34] = k[45];
    assign subkey[35] = k[33];
    assign subkey[36] = k[48];
    assign subkey[37] = k[44];
    assign subkey[38] = k[49];
    assign subkey[39] = k[39];
    assign subkey[40] = k[56];
    assign subkey[41] = k[34];
    assign subkey[42] = k[53];
    assign subkey[43] = k[46];
    assign subkey[44] = k[42];
    assign subkey[45] = k[50];
    assign subkey[46] = k[36];
    assign subkey[47] = k[29];
    assign subkey[48] = k[32];
endmodule