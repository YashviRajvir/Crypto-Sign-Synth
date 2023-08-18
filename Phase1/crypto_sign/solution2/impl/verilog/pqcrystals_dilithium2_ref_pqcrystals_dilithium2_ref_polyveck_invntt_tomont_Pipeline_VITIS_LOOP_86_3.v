// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zext_ln86,
        zext_ln86_2,
        zext_ln87,
        v_address0,
        v_ce0,
        v_we0,
        v_d0,
        v_q0,
        v_address1,
        v_ce1,
        v_q1,
        zext_ln78_2,
        sext_ln86
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] zext_ln86;
input  [8:0] zext_ln86_2;
input  [9:0] zext_ln87;
output  [9:0] v_address0;
output   v_ce0;
output   v_we0;
output  [31:0] v_d0;
input  [31:0] v_q0;
output  [9:0] v_address1;
output   v_ce1;
input  [31:0] v_q1;
input  [7:0] zext_ln78_2;
input  [22:0] sext_ln86;

reg ap_idle;
reg[9:0] v_address0;
reg v_ce0;
reg v_we0;
reg[31:0] v_d0;
reg[9:0] v_address1;
reg v_ce1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln86_fu_131_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state4;
wire    ap_block_state4_pp0_stage3_iter0;
wire  signed [53:0] sext_ln86_cast_fu_107_p1;
reg  signed [53:0] sext_ln86_cast_reg_257;
reg   [9:0] v_addr_reg_265;
reg   [9:0] v_addr_1_reg_271;
reg   [31:0] t_reg_277;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
wire   [63:0] zext_ln87_2_fu_147_p1;
wire   [63:0] zext_ln88_fu_164_p1;
reg   [10:0] j_fu_48;
wire   [10:0] zext_ln86_cast_fu_119_p1;
wire   [10:0] add_ln86_fu_169_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_j_15;
wire   [31:0] add_ln88_5_fu_180_p2;
wire    ap_CS_fsm_state3;
wire    ap_block_state3_pp0_stage2_iter0;
wire  signed [31:0] sext_ln19_17_fu_245_p1;
wire   [10:0] zext_ln86_2_cast_fu_115_p1;
wire   [9:0] trunc_ln87_fu_137_p1;
wire   [9:0] add_ln87_fu_141_p2;
wire   [9:0] zext_ln78_2_cast_fu_111_p1;
wire   [9:0] add_ln88_fu_152_p2;
wire   [9:0] add_ln88_6_fu_158_p2;
wire  signed [31:0] sub_ln89_fu_187_p2;
wire  signed [22:0] mul_ln90_fu_196_p1;
wire  signed [53:0] mul_ln90_fu_196_p2;
wire  signed [31:0] t_21_fu_209_p0;
wire   [26:0] t_21_fu_209_p1;
wire  signed [31:0] t_21_fu_209_p2;
wire  signed [23:0] mul_ln19_fu_219_p1;
wire   [54:0] mul_ln19_fu_219_p2;
wire  signed [55:0] sext_ln19_16_fu_225_p1;
wire  signed [55:0] sext_ln15_fu_201_p1;
wire   [55:0] add_ln19_fu_229_p2;
wire   [23:0] t_22_fu_235_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_done_reg = 1'b0;
end

pqcrystals_dilithium2_ref_mul_32s_23s_54_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 54 ))
mul_32s_23s_54_1_1_U216(
    .din0(sub_ln89_fu_187_p2),
    .din1(mul_ln90_fu_196_p1),
    .dout(mul_ln90_fu_196_p2)
);

pqcrystals_dilithium2_ref_mul_32s_27ns_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 27 ),
    .dout_WIDTH( 32 ))
mul_32s_27ns_32_1_1_U217(
    .din0(t_21_fu_209_p0),
    .din1(t_21_fu_209_p1),
    .dout(t_21_fu_209_p2)
);

pqcrystals_dilithium2_ref_mul_32s_24s_55_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 55 ))
mul_32s_24s_55_1_1_U218(
    .din0(t_21_fu_209_p2),
    .din1(mul_ln19_fu_219_p1),
    .dout(mul_ln19_fu_219_p2)
);

pqcrystals_dilithium2_ref_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln86_fu_131_p2 == 1'd0)) begin
            j_fu_48 <= add_ln86_fu_169_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_48 <= zext_ln86_cast_fu_119_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sext_ln86_cast_reg_257 <= sext_ln86_cast_fu_107_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        t_reg_277 <= v_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln86_fu_131_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v_addr_1_reg_271 <= zext_ln88_fu_164_p1;
        v_addr_reg_265 <= zext_ln87_2_fu_147_p1;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln86_fu_131_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_j_15 = zext_ln86_cast_fu_119_p1;
    end else begin
        ap_sig_allocacmp_j_15 = j_fu_48;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v_address0 = v_addr_1_reg_271;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v_address0 = v_addr_reg_265;
    end else if (((icmp_ln86_fu_131_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        v_address0 = zext_ln88_fu_164_p1;
    end else begin
        v_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v_address1 = v_addr_1_reg_271;
    end else if (((icmp_ln86_fu_131_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        v_address1 = zext_ln87_2_fu_147_p1;
    end else begin
        v_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln86_fu_131_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        v_ce0 = 1'b1;
    end else begin
        v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln86_fu_131_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        v_ce1 = 1'b1;
    end else begin
        v_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v_d0 = sext_ln19_17_fu_245_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v_d0 = add_ln88_5_fu_180_p2;
    end else begin
        v_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        v_we0 = 1'b1;
    end else begin
        v_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln86_fu_131_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln19_fu_229_p2 = ($signed(sext_ln19_16_fu_225_p1) + $signed(sext_ln15_fu_201_p1));

assign add_ln86_fu_169_p2 = (ap_sig_allocacmp_j_15 + 11'd1);

assign add_ln87_fu_141_p2 = (zext_ln87 + trunc_ln87_fu_137_p1);

assign add_ln88_5_fu_180_p2 = (v_q0 + v_q1);

assign add_ln88_6_fu_158_p2 = (add_ln88_fu_152_p2 + trunc_ln87_fu_137_p1);

assign add_ln88_fu_152_p2 = (zext_ln87 + zext_ln78_2_cast_fu_111_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln86_fu_131_p2 = ((ap_sig_allocacmp_j_15 == zext_ln86_2_cast_fu_115_p1) ? 1'b1 : 1'b0);

assign mul_ln19_fu_219_p1 = 55'd36028797010583551;

assign mul_ln90_fu_196_p1 = sext_ln86_cast_reg_257;

assign sext_ln15_fu_201_p1 = mul_ln90_fu_196_p2;

assign sext_ln19_16_fu_225_p1 = $signed(mul_ln19_fu_219_p2);

assign sext_ln19_17_fu_245_p1 = $signed(t_22_fu_235_p4);

assign sext_ln86_cast_fu_107_p1 = $signed(sext_ln86);

assign sub_ln89_fu_187_p2 = (t_reg_277 - v_q1);

assign t_21_fu_209_p0 = mul_ln90_fu_196_p2[31:0];

assign t_21_fu_209_p1 = 32'd58728449;

assign t_22_fu_235_p4 = {{add_ln19_fu_229_p2[55:32]}};

assign trunc_ln87_fu_137_p1 = ap_sig_allocacmp_j_15[9:0];

assign zext_ln78_2_cast_fu_111_p1 = zext_ln78_2;

assign zext_ln86_2_cast_fu_115_p1 = zext_ln86_2;

assign zext_ln86_cast_fu_119_p1 = zext_ln86;

assign zext_ln87_2_fu_147_p1 = add_ln87_fu_141_p2;

assign zext_ln88_fu_164_p1 = add_ln88_6_fu_158_p2;

endmodule //pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_polyveck_invntt_tomont_Pipeline_VITIS_LOOP_86_3