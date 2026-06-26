module BBQ (
    input [18:0] instruccion
);

wire [31:0] c1, c2, c3;
wire zerof_bbq;

// Register File (costilla)
BancoRegistro costilla (
    .EW(0),                  
    .AR1(instruccion[18:14]),   
    .AR2(instruccion[13:9]),    
    .AW(0),                  
    .DW(0),               
    .DR1(c1),                   
    .DR2(c2)                    
);

// ALU (BRISKET)
ALU BRISKET (
    .ALUctl(instruccion[3:0]), 
    .A(c1),                     
    .B(c2),                     
    .ALUOut(c3),                
    .Zero(zerof_bbq)            
);


ARAM MC (
    
);

endmodule