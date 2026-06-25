`timescale 1ns / 1ps

module SROM_TB();

    
    reg [31:0] Dir;     // Cambiado para que coincida con lo que usas abajo
    reg clk;
    wire [31:0] Datos;

    
    SROM DUV (
        .Dir(Dir),
        .clk(clk),
        .Datos(Datos)
    );

    
    always begin
        #10 clk = ~clk;
    end

    // 4. Bloque de estímulos corregido
    initial begin
        // Inicialización de señales
        clk = 0;
        Dir = 0;
        #20; // Espera inicial de 20ns

        // Estímulos cambiando la variable correcta 'Dir'
        Dir = 32'd0; 
        #100; 
    
        Dir = 32'd1; 
        #100; 
        
        Dir = 32'd2; 
        #100; 

        Dir = 32'd3; 
        #100;
        
        Dir = 32'd4; 
        #100;
    
   

        
        $finish;
    end

endmodule