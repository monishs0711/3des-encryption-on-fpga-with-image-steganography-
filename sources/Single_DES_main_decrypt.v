`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2024 23:05:34
// Design Name: 
// Module Name: Single_DES_main_decrypt
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


module Single_DES_main_decrypt(
    input [1:64] message,
    input [1:64] key, 
    output [1:64] encrypted_message);
wire [1:56] key_pc1;       
wire [1:56] k1, k2, k3, k4, k5, k6, k7, k8, 
            k9, k10, k11, k12, k13, k14, k15, k16;
wire [1:48] K1, K2, K3, K4, K5, K6, K7, K8, 
            K9, K10, K11, K12, K13, K14, K15, K16;
wire [1:48*16] key_pc2;
wire [1:32] L;
wire [1:32] R;
wire [1:64] M;
assign M=message;
wire [1:32] L1, L2, L3, L4, L5, L6, L7, L8, 
            L9, L10, L11, L12, L13, L14, L15, L16;
wire [1:32] R1, R2, R3, R4, R5, R6, R7, R8, 
            R9, R10, R11, R12, R13, R14, R15, R16;

//PHASE1(verified)
pc1 PC1_inst(
    .key(key),
    .key_pc1(key_pc1)
);
IP IP_inst(
    .M(M),
    .L(L), .R(R)
);
Lshift LS(
    .key_pc1(key_pc1),
    .k1(k1), .k2(k2), .k3(k3), .k4(k4), .k5(k5), .k6(k6), .k7(k7), .k8(k8), 
.k9(k9), .k10(k10), .k11(k11), .k12(k12), .k13(k13), .k14(k14), .k15(k15), .k16(k16) );

// Permuted Choice 2 (PC2)
pc2 PC2_1(.k(k1), .subkey(K1));
pc2 PC2_2(.k(k2),  .subkey(K2));
pc2 PC2_3(.k(k3),  .subkey(K3));
pc2 PC2_4(.k(k4),  .subkey(K4));
pc2 PC2_5(.k(k5),  .subkey(K5));
pc2 PC2_6(.k(k6),  .subkey(K6));
pc2 PC2_7(.k(k7),  .subkey(K7));
pc2 PC2_8(.k(k8),  .subkey(K8));
pc2 PC2_9(.k(k9),  .subkey(K9));
pc2 PC2_10(.k(k10), .subkey(K10));
pc2 PC2_11(.k(k11), .subkey(K11));
pc2 PC2_12(.k(k12), .subkey(K12));
pc2 PC2_13(.k(k13), .subkey(K13));
pc2 PC2_14(.k(k14), .subkey(K14));
pc2 PC2_15(.k(k15), .subkey(K15));
pc2 PC2_16(.k(k16), .subkey(K16));
//Phase 1/2 ends

//phase 3
roundbro rnd1(
    .L(L), .R(R),
    .L_(L1), 
    .R_(R1),
    .K(K16)
);

roundbro rnd2(
    .L(L1), .R(R1),
    .L_(L2), 
    .R_(R2),
    .K(K15)
);

roundbro rnd3(
    .L(L2), .R(R2),
    .L_(L3), 
    .R_(R3),
    .K(K14)
);

roundbro rnd4(
    .L(L3), .R(R3),
    .L_(L4), 
    .R_(R4),
    .K(K13)
);

roundbro rnd5(
    .L(L4), .R(R4),
    .L_(L5), 
    .R_(R5),
    .K(K12)
);

roundbro rnd6(
    .L(L5), .R(R5),
    .L_(L6), 
    .R_(R6),
    .K(K11)
);

roundbro rnd7(
    .L(L6), .R(R6),
    .L_(L7), 
    .R_(R7),
    .K(K10)
);

roundbro rnd8(
    .L(L7), .R(R7),
    .L_(L8), 
    .R_(R8),
    .K(K9)
);

roundbro rnd9(
    .L(L8), .R(R8),
    .L_(L9), 
    .R_(R9),
    .K(K8)
);

roundbro rnd10(
    .L(L9), .R(R9),
    .L_(L10), 
    .R_(R10),
    .K(K7)
);

roundbro rnd11(
    .L(L10), .R(R10),
    .L_(L11), 
    .R_(R11),
    .K(K6)
);

roundbro rnd12(
    .L(L11), .R(R11),
    .L_(L12), 
    .R_(R12),
    .K(K5)
);

roundbro rnd13(
    .L(L12), .R(R12),
    .L_(L13), 
    .R_(R13),
    .K(K4)
);

roundbro rnd14(
    .L(L13), .R(R13),
    .L_(L14), 
    .R_(R14),
    .K(K3)
);

roundbro rnd15(
    .L(L14), .R(R14),
    .L_(L15), 
    .R_(R15),
    .K(K2)
);

roundbro rnd16(
    .L(L15), .R(R15),
    .L_(L16), 
    .R_(R16),
    .K(K1)
);

ip_inv inv(R16, L16, encrypted_message);
endmodule