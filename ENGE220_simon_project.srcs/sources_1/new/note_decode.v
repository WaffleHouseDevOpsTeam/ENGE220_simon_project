
module note_decode(
    output [19:0] note_oct,
    input [2:0] octave,
    input [3:0] note
    );
    reg [3:0] note_conv;
    always @* begin
        case (note) 
            0: note_conv = 0;
            1: note_conv = 16;
            2: note_conv = 18;
            3: note_conv = 21;
            4: note_conv = 22;
            5: note_conv = 24;
            6: note_conv = 27;
            7: note_conv = 31;
            
        endcase
    end
    assign note_oct = 
endmodule
