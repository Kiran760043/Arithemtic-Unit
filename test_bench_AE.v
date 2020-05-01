//////////////////////////////////////////////////////////////////////////////////
// Design Name: Test Bench for 4-bit Arithmetic Circuit
// Engineer: kiran
// Reference: Computer Architecture by Morris Mano 3rd Edition (Chapter 4 : page 106 - 108)
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module test_bench_AE();
    //inputs for DUT
    reg [3:0] A;
    reg [3:0] B;
    reg Ci;
    reg [1:0] Sel;
    //outputs for DUT
    wire [3:0] D;
    wire Co;
    
    ae DUT (.A(A), .B(B), .Ci(Ci), .Sel(Sel), .D(D), .Co(Co));
    
    initial
        begin
            $display($time, " << Simulation Results >>");
            $monitor($time, "A = %b, B = %b, Ci = %b, Sel = %b, D = %b, Co = %b", A,B,Ci,Sel,D,Co);
        end
        
    initial
        begin
        A   = 4'h5;
        B   = 4'h3;
        Ci  = 1'b0;
        Sel = 2'h0;
        #2;
        Ci  = 1'b1;
        #2;
        //sel=01
        Ci  = 1'b0;
        Sel = 2'h1;
        #2;
        Ci  = 1'b1;
        #2;
        //sel=10
        Ci  = 1'b0;
        Sel = 2'h2;
        #2;
        Ci  = 1'b1;
        #2;
        //sel=11
        Ci  = 1'b0;
        Sel = 2'h3;
        #2;
        Ci  = 1'b1;
        #2;
        $finish;
        
        end
        
endmodule
