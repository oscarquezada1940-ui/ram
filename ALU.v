module ALU (ALUctl,A,B,ALUOut,Zero);

    input [3:0] ALUctl;
    input signed [31:0] A, B;

    output reg signed [31:0] ALUOut;
    output Zero;

    assign Zero = (ALUOut == 0);

    always @(ALUctl, A, B)
    begin

        case (ALUctl)

            4'b0000: ALUOut <= A & B;
            4'b0001: ALUOut <= A | B;
            4'b0010: ALUOut <= A + B;
            4'b0110: ALUOut <= A - B;
            4'b0111: ALUOut <= (A < B) ? 32'd1 : 32'd0;
            4'b1100: ALUOut <= ~(A | B);

            default: ALUOut <= 32'd0;

        endcase

    end

endmodule