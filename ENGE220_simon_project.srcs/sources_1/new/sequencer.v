module sequencer(
    output reg [24:0] note,
    input win, 
    input clk, reset
    );

    reg [9:0] seq_store;
    reg [24:0] prep_note;
    reg [3:0] mem_step;
    always @* begin
        case (win)
            0: begin
                //scary monsters
                seq_store [0] = 0010110010;
                seq_store [1] = 0010110011;
                seq_store [2] = 0010101010;
                seq_store [3] = 0010110011;
                seq_store [4] = 0100001011;
                seq_store [5] = 0010110011;
                seq_store [6] = 0010011011;
                seq_store [7] = 0010010011;
            end
            1: begin
                // will be weezer
                seq_store [0] = 0010110010;
                seq_store [1] = 0010110011;
                seq_store [2] = 0010101010;
                seq_store [3] = 0010110011;
                seq_store [4] = 0100001011;
                seq_store [5] = 0010110011;
                seq_store [6] = 0010011011;
                seq_store [7] = 0010010011;
            end
        endcase
    end
    reg [9:0] seq_mem;
    reg [13:0] note_conv;
    always @* begin
        case (mem_step)
            0:seq_mem = seq_store [0];
            1:seq_mem = seq_store [1];
            2:seq_mem = seq_store [2];
            3:seq_mem = seq_store [3];
            4:seq_mem = seq_store [4];
            5:seq_mem = seq_store [5];
            6:seq_mem = seq_store [6];
            7:seq_mem = seq_store [7];
        endcase
    end
    always @* begin
            case (seq_mem [6:3]) 
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
    reg [25:0] counter;
    localparam BPM=50_000_000;

    always @(posedge clk) begin
        counter <= counter + 1;
        if (counter == BPM) begin
            counter = 0;
        end
    end
    reg [3:0] beat;
    always @* begin
        beat = 4'b0;
        if (counter == 0) beat[0] = 1;
        if (counter == (BPM >> 1)) beat[2] = 1; 
        if (counter == ((BPM >> 1) - BPM >> 2)) beat[1] = 1;
        if (counter == ((BPM >> 1) + BPM >> 2)) beat[3] = 1;
    end
    wire beat_all = beat [0] | beat [1] | beat [2] | beat [3];

    always @(posedge clk) begin
        note <= note;
        if (beat_all) begin
            note <= prep_note;
            mem_step = mem_step + 1;
            if ((mem_step > 7) || (reset)) mem_step = 0;
        end
    end

    always @* begin
        prep_note = 100_000_000 / (note_conv << seq_mem[2:0]);
    end






endmodule
