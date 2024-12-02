module Lshift (
    input [1:56] key_pc1, 
    output reg [1:56] k1, 
    output reg [1:56] k2,
    output reg [1:56] k3, 
    output reg [1:56] k4,
    output reg [1:56] k5, 
    output reg [1:56] k6, 
    output reg [1:56] k7, 
    output reg [1:56] k8,
    output reg [1:56] k9, 
    output reg [1:56] k10,
    output reg [1:56] k11, 
    output reg [1:56] k12,
    output reg [1:56] k13, 
    output reg [1:56] k14, 
    output reg [1:56] k15, 
    output reg [1:56] k16
);
    reg [1:28] C [0:16]; 
    reg [1:28] D [0:16]; 
    integer i;

   
    always @(*) begin
        
        C[0] = key_pc1[1:28];
        D[0] = key_pc1[29:56];

       
        for (i = 1; i <= 16; i = i + 1) begin
            if (i == 1 || i == 2 || i == 9 || i == 16) begin
               
                C[i] = {C[i-1][2:28], C[i-1][1]}; 
                D[i] = {D[i-1][2:28], D[i-1][1]}; 
            end 
            else begin
                
                C[i] ={C[i-1][3:28], C[i-1][1:2]}; 
                D[i] ={D[i-1][3:28], D[i-1][1:2]}; 
            end
        end
        k1 = {C[1],D[1]};
        k2 = {C[2],D[2]};
        k3 = {C[3],D[3]};
        k4 = {C[4],D[4]};
        k5 = {C[5],D[5]};
        k6 = {C[6],D[6]};
        k7 = {C[7],D[7]};
        k8 = {C[8],D[8]};
        k9 = {C[9],D[9]};
        k10 = {C[10],D[10]};
        k11 = {C[11],D[11]};
        k12 = {C[12],D[12]};
        k13 = {C[13],D[13]};
        k14 = {C[14],D[14]};
        k15 = {C[15],D[15]};
        k16 = {C[16],D[16]};
    end
endmodule