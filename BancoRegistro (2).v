module BancoRegistro(
                
    input EW,                  
    input [4:0] AR1,           
    input [4:0] AR2,          
    input [4:0] AW,           
    
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