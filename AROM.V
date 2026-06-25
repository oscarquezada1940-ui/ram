module AROM (
    input  [31:0] Dir,
    output reg [31:0] Datos
);

    
    reg [31:0] MeM [4:0];

    initial begin
        MeM[0] = 32'd255;
        MeM[1] = 32'd127;
        MeM[2] = 32'd63;
        MeM[3] = 32'd31;
        MeM[4] = 32'd15;
    end

    
    always @(*) begin
        Datos = MeM[Dir];
    end

endmodule