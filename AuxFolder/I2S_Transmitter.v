`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad Nacional de Colombia
// Engineer: Daniel Lozano Barrero
// 
// Create Date: 04/29/2023 08:13:32 AM
// Design Name: I2S Transmitter
// Module Name: I2S_Transmitter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: MAX98357 driver, left justified i2s protocol. Reproduce up to 8 preloaded .wav audios
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//
// Carga de audios: 'CTRL + F -> MODIFICAR'
//
//
//////////////////////////////////////////////////////////////////////////////////

module I2S_Transmitter(MCLK, SD, LRCLK, SCLK, enable, audioSel);
    parameter BIT_DEPTH = 16;
    parameter SAMP_RATE = 44100;
    
    // SCLK_Freq = 2*SampleRate*16
    parameter SCLK_FREQ = 2*SAMP_RATE*BIT_DEPTH;
    parameter S_PS = 100000000/(2*SCLK_FREQ);

    parameter LR_PS = 16;     
        
    parameter AUDIO_PERIOD = 5; // secs
        
    input MCLK; //100MHz Crystal Clock Source
    input enable;
    input [2:0] audioSel; // Audio selector
    output SCLK;
    output LRCLK;
    output reg SD;

    wire [2:0] fileSel = audioSel[2:0]; // Up to 8 audios

    reg SCLK = 0;
    reg LRCLK = 1;
    integer currentBit = BIT_DEPTH - 1;
    integer wordIterator = 0;
    reg [0:BIT_DEPTH - 1] currentWord = 0;

    // 5 secs each one
    reg [BIT_DEPTH-1:0] mem1 [AUDIO_PERIOD*(SAMP_RATE - 1):0];
    reg [BIT_DEPTH-1:0] mem2 [AUDIO_PERIOD*(SAMP_RATE - 1):0];
    reg [BIT_DEPTH-1:0] mem3 [AUDIO_PERIOD*(SAMP_RATE - 1):0];
    reg [BIT_DEPTH-1:0] mem4 [AUDIO_PERIOD*(SAMP_RATE - 1):0];
    reg [BIT_DEPTH-1:0] mem5 [AUDIO_PERIOD*(SAMP_RATE - 1):0];
    reg [BIT_DEPTH-1:0] mem6 [AUDIO_PERIOD*(SAMP_RATE - 1):0];
    reg [BIT_DEPTH-1:0] mem7 [AUDIO_PERIOD*(SAMP_RATE - 1):0];
    reg [BIT_DEPTH-1:0] mem8 [AUDIO_PERIOD*(SAMP_RATE - 1):0];
    
    // Twice bit for reproducing same word per channel
    reg twice = 0;
    reg prevEnable = 0;

    initial begin
        // Audio load to local memory

        /////****************** MODIFICAR ***********************/////
        // Los archivos se cargan en la memoria de la FPGA al sintetizar
        // Añadir los path y descomentar las memorias a usar
        // Ejemplo: '/home/daniel/SoC/AudioData/testAudio1.txt' 
        
        $readmemh("/home/daniel/SoC/AudioData/testAudio1.txt", mem1);
        $readmemh("/home/daniel/SoC/AudioData/testAudio2.txt", mem2);
        $readmemh("/home/daniel/SoC/AudioData/testAudio3.txt", mem3);
        //$readmemh("", mem4);
        //$readmemh("", mem5);
        //$readmemh("", mem6);
        //$readmemh("", mem7);
        //$readmemh("", mem8);
        
        /////****************************************************/////

    end
     
    // Data handler
    always @(negedge SCLK)
    begin : Data_handler
        SD <= currentWord[currentBit];
        
        // Audio Reset -> Enable rising edge //
        if(enable != prevEnable) begin
            wordIterator <= 0;
            currentBit <= 0;
            prevEnable <= enable;
            disable Data_handler;
        end
        ///////////////////////////////////////        
        
        
        if(currentBit == BIT_DEPTH - 1) begin
            currentBit <= 0;
            
            // Next word in the mem array
            if(twice == 1) begin
               // Check if word limit reached
               if(wordIterator ==  AUDIO_PERIOD*(SAMP_RATE - 1)) begin
                    wordIterator <= 0;
                end else begin
                    wordIterator = wordIterator + 1;
                end        
            end
            twice <= ~twice;
            
        end else begin
            currentBit <= currentBit + 1;
        end
        
    end
    
    
    // LRCLK generator
    integer LRCounter = LR_PS - 1;
    always @(posedge SCLK)
    begin
        
        // Loading word on a 1 SCLK cycle offset - Left Justified mode
        if(LRCounter == LR_PS - 1) begin         
            case(fileSel)
                /////****************** MODIFICAR ***********************/////
                // Descomentar/Comentar de acuerdo al número de audios que se vayan a usar

                3'b000: currentWord <= mem1[wordIterator];
                3'b001: currentWord <= mem2[wordIterator];
                3'b010: currentWord <= mem3[wordIterator];
                //3'b011: currentWord <= mem4[wordIterator];
                //3'b100: currentWord <= mem5[wordIterator];
                //3'b101: currentWord <= mem6[wordIterator];
                //3'b110: currentWord <= mem7[wordIterator];
                //3'b111: currentWord <= mem8[wordIterator];
                /////****************************************************/////
            endcase     
        end
        
        if(LRCounter == LR_PS - 1) begin
            LRCLK <= ~LRCLK;
            LRCounter <= 0;
        end
        else begin
            LRCounter <= LRCounter + 1;
        end
    end
   
   
    // SCLK generator
    integer SCounter = 0;
    always @(posedge MCLK)
    begin

        if (~(~enable && ~prevEnable))begin
            if(SCounter == S_PS) begin        
                SCLK <= ~SCLK;
                SCounter <= 0;
            end
            else begin
                SCounter <= SCounter + 1;
            end
        end
    end
endmodule

