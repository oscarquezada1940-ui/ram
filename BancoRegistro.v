module BancoRegistro(
                
                  // ¡El reloj regresa para salvar el diseño!
    input EW,                  // Enable Write (Habilitación de escritura)
    input [4:0] AR1,           // Address Read 1 (Dirección de lectura 1)
    input [4:0] AR2,           // Address Read 2 (Dirección de lectura 2)
    input [4:0] AW,            // Address Write (Dirección de escritura)
    input [31:0] DW,           // Data Write (Datos a escribir)
    output reg[31:0] DR1,          
    output reg [31:0] DR2          
);        

reg [31:0] banco [0:31];
 
    initial begin
        $readmemb("C:/Users/USUARIO/Documents/quartusver26/ba_prueba/DATOS.txt", banco);
    end
 
    always @*
     begin
        if (EW) begin
            banco[AW] = DW; 
        end
          DR1 = banco[AR1];
     DR2 = banco[AR2];
 
    end
 
  
 
endmodule