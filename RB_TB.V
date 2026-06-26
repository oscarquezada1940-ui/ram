`timescale 1ns / 1ps
 
module BancoRegistro_tb();
 

    reg EW_TB;
    reg [4:0] AR1_TB;
    reg [4:0] AR2_TB;
    reg [4:0] AW_TB;
    reg [31:0] DW_TB;
    wire [31:0] DR1_TB;
    wire [31:0] DR2_TB;
 
   
    BancoRegistro DUV (
    
        .EW(EW_TB),
        .AR1(AR1_TB),
        .AR2(AR2_TB),
        .AW(AW_TB),
        .DW(DW_TB),
        .DR1(DR1_TB),
        .DR2(DR2_TB)
    );
   
 
    initial begin
 
        AR1_TB = 5'd0;
        AR2_TB = 5'd16;
        #100;
        AR1_TB = 5'd1;
        AR2_TB = 5'd17;
        #100;
        AR1_TB = 5'd2;
        AR2_TB = 5'd18;
        #100;
        AR1_TB = 5'd3;
        AR2_TB = 5'd19;
        #100;
        AR1_TB = 5'd4;
        AR2_TB = 5'd20;   
        #100;
        AR1_TB = 5'd5;
        AR2_TB = 5'd21;
        #100;
        AR1_TB = 5'd6;
        AR2_TB = 5'd22;
        #100;
        AR1_TB = 5'd7;
        AR2_TB = 5'd23;
        #100;
        AR1_TB = 5'd8;
        AR2_TB = 5'd24;
        #100;
        AR1_TB = 5'd9;
        AR2_TB = 5'd25;
        #100;
        AR1_TB = 5'd10;
        AR2_TB = 5'd26;
        #100;
        AR1_TB = 5'd11;
        AR2_TB = 5'd27;
        #100;
        AR1_TB = 5'd12;
        AR2_TB = 5'd28;
        #100;
        AR1_TB = 5'd13;
        AR2_TB = 5'd29;
        #100;
        AR1_TB = 5'd14;
        AR2_TB = 5'd30;
          AR1_TB = 5'd15;
        AR2_TB = 5'd31;
        #100;
 
        $stop;
    end
 
endmodule
 