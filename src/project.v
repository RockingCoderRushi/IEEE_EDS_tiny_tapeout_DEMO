/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */
module tt_um_example (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire ena,
    input  wire clk,
    input  wire rst_n
);

    // Half Adder
    assign uo_out[0] = ui_in[0] ^ ui_in[1];  // SUM
    assign uo_out[1] = ui_in[0] & ui_in[1];  // CARRY

    // Unused outputs
    assign uo_out[7:2] = 6'b0;

    // No bidirectional pins used
    assign uio_out = 8'b0;
    assign uio_oe  = 8'b0;

endmodule
