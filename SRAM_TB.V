`timescale 1ns / 1ps

module ARAM_Sincrona_tb;

    // 1. Declarar señales
    reg clk;
    reg EN;
    reg [31:0] Dir;
    reg [31:0] DatosE;
    wire [31:0] Datos;

    // 2. Instanciar la Unidad Bajo Prueba (UUT)
    ARAM_Sincrona DUV (
        .clk(clk),
        .EN(EN),
        .Dir(Dir),
        .DatosE(DatosE),
        .Datos(Datos)
    );


    // 4. Bloque de estímulos
    initial begin
        
        EN = 0;
        Dir = 0;
        DatosE = 0;
       // 1
       
        @(posedge clk);
        @(posedge clk);

        
        Dir = 32'd0; #100; 
        Dir = 32'd1; #100; 
        Dir = 32'd3; #100; 

     //1
        @(posedge clk); 
        EN = 1;
        Dir = 32'd1;      
        DatosE = 32'd6; 
        3
        @(posedge clk); 
        Dir = 32'd4;      
        DatosE = 32'd7; 
       // 4
        @(posedge clk); 
        EN = 0;           

      
       
        Dir = 32'd1; #100; 
        Dir = 32'd4; #100; 
        Dir = 32'd0; #100; 

    
        $finish;
    end

endmodule