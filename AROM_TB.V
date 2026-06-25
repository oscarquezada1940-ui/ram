 `timescale 1ns / 1ps 
module AROM_tb;

    
    reg  [31:0] Dir_TB;   
    wire [31:0] Datos_TB; 

    
    AROM DUV (
        .Dir(Dir_TB),    
        .Datos(Datos_TB)
    );

   
    initial begin
        // Inicialización
        Dir_TB = 32'd0; 
        #100; //
    
        // Estímulo 1
        Dir_TB = 32'd1; 
        #100; 
        
        // Estímulo 2
        Dir_TB = 32'd2; 
        #100; 

        // Estímulo 3 (Repetido)
        Dir_TB = 32'd3; 
        #100;
         Dir_TB = 32'd4; 
        #100;
         Dir_TB = 32'd5; 
        #100;
        
        $finish; 
    end

endmodule