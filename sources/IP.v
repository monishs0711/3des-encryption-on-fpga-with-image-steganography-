module IP(input [1:64] M, output [1:32] L, output [1:32] R);
    wire [1:64] out;

    // Initial Permutation mapping based on the provided table
    assign out = {
        M[58], M[50], M[42], M[34], M[26], M[18], M[10], M[2],
        M[60], M[52], M[44], M[36], M[28], M[20], M[12], M[4],
        M[62], M[54], M[46], M[38], M[30], M[22], M[14], M[6],
        M[64], M[56], M[48], M[40], M[32], M[24], M[16], M[8],
        M[57], M[49], M[41], M[33], M[25], M[17], M[9],  M[1],
        M[59], M[51], M[43], M[35], M[27], M[19], M[11], M[3],
        M[61], M[53], M[45], M[37], M[29], M[21], M[13], M[5],
        M[63], M[55], M[47], M[39], M[31], M[23], M[15], M[7]
    };

    assign L = out[1:32];
    assign R = out[33:64];
endmodule