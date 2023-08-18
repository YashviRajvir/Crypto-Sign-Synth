// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_418_1_VITIS_LOOP_915_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        w1_vec_coeffs_address0,
        w1_vec_coeffs_ce0,
        w1_vec_coeffs_q0,
        w1_vec_coeffs_address1,
        w1_vec_coeffs_ce1,
        w1_vec_coeffs_q1,
        sm_address0,
        sm_ce0,
        sm_we0,
        sm_d0,
        sm_address1,
        sm_ce1,
        sm_we1,
        sm_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] w1_vec_coeffs_address0;
output   w1_vec_coeffs_ce0;
input  [31:0] w1_vec_coeffs_q0;
output  [9:0] w1_vec_coeffs_address1;
output   w1_vec_coeffs_ce1;
input  [31:0] w1_vec_coeffs_q1;
output  [12:0] sm_address0;
output   sm_ce0;
output   sm_we0;
output  [7:0] sm_d0;
output  [12:0] sm_address1;
output   sm_ce1;
output   sm_we1;
output  [7:0] sm_d1;

reg ap_idle;
reg[9:0] w1_vec_coeffs_address0;
reg w1_vec_coeffs_ce0;
reg[9:0] w1_vec_coeffs_address1;
reg w1_vec_coeffs_ce1;
reg[12:0] sm_address0;
reg sm_ce0;
reg sm_we0;
reg[7:0] sm_d0;
reg sm_ce1;
reg sm_we1;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln418_reg_589;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [1:0] trunc_ln419_fu_193_p1;
reg   [1:0] trunc_ln419_reg_583;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln418_fu_197_p2;
wire   [0:0] icmp_ln915_fu_218_p2;
reg   [0:0] icmp_ln915_reg_593;
wire   [6:0] select_ln418_fu_224_p3;
reg   [6:0] select_ln418_reg_598;
wire   [1:0] trunc_ln419_1_fu_240_p1;
reg   [1:0] trunc_ln419_1_reg_603;
wire   [1:0] trunc_ln419_2_fu_244_p1;
reg   [1:0] trunc_ln419_2_reg_609;
wire   [7:0] shl_ln6_fu_252_p3;
reg   [7:0] shl_ln6_reg_615;
wire   [10:0] select_ln418_2_fu_371_p3;
reg   [10:0] select_ln418_2_reg_632;
wire    ap_block_pp0_stage1_11001;
wire  signed [8:0] sub_ln916_fu_388_p2;
reg  signed [8:0] sub_ln916_reg_638;
reg   [7:0] trunc_ln_reg_643;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln916_fu_270_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln917_fu_289_p1;
wire  signed [63:0] sext_ln917_fu_404_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln919_fu_450_p1;
wire   [63:0] zext_ln921_fu_467_p1;
wire  signed [63:0] sext_ln919_fu_499_p1;
wire  signed [63:0] sext_ln921_fu_538_p1;
reg   [6:0] i_fu_86;
wire   [6:0] add_ln915_fu_294_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [2:0] i_6_fu_90;
wire   [2:0] select_ln418_1_fu_232_p3;
reg   [2:0] ap_sig_allocacmp_i_7;
reg   [8:0] indvar_flatten48_fu_94;
wire   [8:0] add_ln418_1_fu_203_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten48_load;
wire   [7:0] or_ln917_1_fu_421_p2;
wire   [7:0] or_ln921_1_fu_555_p2;
wire   [2:0] add_ln418_fu_212_p2;
wire   [5:0] trunc_ln916_fu_248_p1;
wire   [9:0] tmp_s_fu_260_p4;
wire   [7:0] or_ln917_fu_275_p2;
wire   [9:0] tmp_1_fu_281_p3;
wire   [9:0] shl_ln5_fu_315_p3;
wire   [7:0] shl_ln419_1_fu_326_p3;
wire   [10:0] zext_ln419_fu_322_p1;
wire   [10:0] zext_ln419_1_fu_333_p1;
wire   [9:0] shl_ln419_mid1_fu_343_p3;
wire   [7:0] shl_ln419_1_mid1_fu_354_p3;
wire   [10:0] zext_ln419_2_fu_350_p1;
wire   [10:0] zext_ln419_3_fu_361_p1;
wire   [10:0] sub_ln419_1_fu_365_p2;
wire   [10:0] sub_ln419_fu_337_p2;
wire   [8:0] zext_ln916_1_fu_381_p1;
wire   [8:0] i_31_cast22_fu_378_p1;
wire  signed [10:0] sext_ln916_1_fu_394_p1;
wire   [10:0] add_ln916_fu_398_p2;
wire   [1:0] trunc_ln917_fu_409_p1;
wire   [7:0] shl_ln7_fu_413_p3;
wire   [7:0] trunc_ln916_1_fu_384_p1;
wire   [7:0] or_ln919_fu_438_p2;
wire   [9:0] tmp_2_fu_443_p3;
wire   [7:0] or_ln921_fu_455_p2;
wire   [9:0] tmp_3_fu_460_p3;
wire   [10:0] or_ln418_fu_472_p2;
wire   [10:0] or_ln418_1_fu_481_p2;
wire  signed [11:0] sext_ln916_fu_490_p1;
wire  signed [11:0] sext_ln418_fu_477_p1;
wire   [11:0] add_ln918_fu_493_p2;
wire   [3:0] trunc_ln919_fu_504_p1;
wire   [7:0] shl_ln8_fu_508_p3;
wire  signed [11:0] sext_ln418_1_fu_486_p1;
wire   [11:0] add_ln920_fu_532_p2;
wire   [5:0] trunc_ln921_fu_543_p1;
wire   [7:0] shl_ln9_fu_547_p3;
wire   [7:0] trunc_ln1_fu_522_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

pqcrystals_dilithium2_ref_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage1) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln418_fu_197_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_6_fu_90 <= select_ln418_1_fu_232_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_6_fu_90 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln418_fu_197_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_86 <= add_ln915_fu_294_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_86 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln418_fu_197_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten48_fu_94 <= add_ln418_1_fu_203_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten48_fu_94 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln418_reg_589 <= icmp_ln418_fu_197_p2;
        trunc_ln419_reg_583 <= trunc_ln419_fu_193_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln418_fu_197_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln915_reg_593 <= icmp_ln915_fu_218_p2;
        select_ln418_reg_598 <= select_ln418_fu_224_p3;
        shl_ln6_reg_615[7 : 2] <= shl_ln6_fu_252_p3[7 : 2];
        trunc_ln419_1_reg_603 <= trunc_ln419_1_fu_240_p1;
        trunc_ln419_2_reg_609 <= trunc_ln419_2_fu_244_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln418_reg_589 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln418_2_reg_632[10 : 6] <= select_ln418_2_fu_371_p3[10 : 6];
        sub_ln916_reg_638 <= sub_ln916_fu_388_p2;
        trunc_ln_reg_643 <= {{w1_vec_coeffs_q0[9:2]}};
    end
end

always @ (*) begin
    if (((icmp_ln418_reg_589 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_7 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_7 = i_6_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_86;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten48_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten48_load = indvar_flatten48_fu_94;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sm_address0 = sext_ln921_fu_538_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sm_address0 = sext_ln917_fu_404_p1;
    end else begin
        sm_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sm_ce0 = 1'b1;
    end else begin
        sm_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sm_ce1 = 1'b1;
    end else begin
        sm_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sm_d0 = or_ln921_1_fu_555_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sm_d0 = or_ln917_1_fu_421_p2;
    end else begin
        sm_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln418_reg_589 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sm_we0 = 1'b1;
    end else begin
        sm_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sm_we1 = 1'b1;
    end else begin
        sm_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            w1_vec_coeffs_address0 = zext_ln921_fu_467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            w1_vec_coeffs_address0 = zext_ln917_fu_289_p1;
        end else begin
            w1_vec_coeffs_address0 = 'bx;
        end
    end else begin
        w1_vec_coeffs_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            w1_vec_coeffs_address1 = zext_ln919_fu_450_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            w1_vec_coeffs_address1 = zext_ln916_fu_270_p1;
        end else begin
            w1_vec_coeffs_address1 = 'bx;
        end
    end else begin
        w1_vec_coeffs_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        w1_vec_coeffs_ce0 = 1'b1;
    end else begin
        w1_vec_coeffs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        w1_vec_coeffs_ce1 = 1'b1;
    end else begin
        w1_vec_coeffs_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln418_1_fu_203_p2 = (ap_sig_allocacmp_indvar_flatten48_load + 9'd1);

assign add_ln418_fu_212_p2 = (ap_sig_allocacmp_i_7 + 3'd1);

assign add_ln915_fu_294_p2 = (select_ln418_fu_224_p3 + 7'd1);

assign add_ln916_fu_398_p2 = ($signed(sext_ln916_1_fu_394_p1) + $signed(select_ln418_2_fu_371_p3));

assign add_ln918_fu_493_p2 = ($signed(sext_ln916_fu_490_p1) + $signed(sext_ln418_fu_477_p1));

assign add_ln920_fu_532_p2 = ($signed(sext_ln916_fu_490_p1) + $signed(sext_ln418_1_fu_486_p1));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign i_31_cast22_fu_378_p1 = select_ln418_reg_598;

assign icmp_ln418_fu_197_p2 = ((ap_sig_allocacmp_indvar_flatten48_load == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln915_fu_218_p2 = ((ap_sig_allocacmp_i_load == 7'd64) ? 1'b1 : 1'b0);

assign or_ln418_1_fu_481_p2 = (select_ln418_2_reg_632 | 11'd2);

assign or_ln418_fu_472_p2 = (select_ln418_2_reg_632 | 11'd1);

assign or_ln917_1_fu_421_p2 = (trunc_ln916_1_fu_384_p1 | shl_ln7_fu_413_p3);

assign or_ln917_fu_275_p2 = (shl_ln6_fu_252_p3 | 8'd1);

assign or_ln919_fu_438_p2 = (shl_ln6_reg_615 | 8'd2);

assign or_ln921_1_fu_555_p2 = (trunc_ln1_fu_522_p4 | shl_ln9_fu_547_p3);

assign or_ln921_fu_455_p2 = (shl_ln6_reg_615 | 8'd3);

assign select_ln418_1_fu_232_p3 = ((icmp_ln915_fu_218_p2[0:0] == 1'b1) ? add_ln418_fu_212_p2 : ap_sig_allocacmp_i_7);

assign select_ln418_2_fu_371_p3 = ((icmp_ln915_reg_593[0:0] == 1'b1) ? sub_ln419_1_fu_365_p2 : sub_ln419_fu_337_p2);

assign select_ln418_fu_224_p3 = ((icmp_ln915_fu_218_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);

assign sext_ln418_1_fu_486_p1 = $signed(or_ln418_1_fu_481_p2);

assign sext_ln418_fu_477_p1 = $signed(or_ln418_fu_472_p2);

assign sext_ln916_1_fu_394_p1 = sub_ln916_fu_388_p2;

assign sext_ln916_fu_490_p1 = sub_ln916_reg_638;

assign sext_ln917_fu_404_p1 = $signed(add_ln916_fu_398_p2);

assign sext_ln919_fu_499_p1 = $signed(add_ln918_fu_493_p2);

assign sext_ln921_fu_538_p1 = $signed(add_ln920_fu_532_p2);

assign shl_ln419_1_fu_326_p3 = {{trunc_ln419_reg_583}, {6'd0}};

assign shl_ln419_1_mid1_fu_354_p3 = {{trunc_ln419_2_reg_609}, {6'd0}};

assign shl_ln419_mid1_fu_343_p3 = {{trunc_ln419_2_reg_609}, {8'd0}};

assign shl_ln5_fu_315_p3 = {{trunc_ln419_reg_583}, {8'd0}};

assign shl_ln6_fu_252_p3 = {{trunc_ln916_fu_248_p1}, {2'd0}};

assign shl_ln7_fu_413_p3 = {{trunc_ln917_fu_409_p1}, {6'd0}};

assign shl_ln8_fu_508_p3 = {{trunc_ln919_fu_504_p1}, {4'd0}};

assign shl_ln9_fu_547_p3 = {{trunc_ln921_fu_543_p1}, {2'd0}};

assign sm_address1 = sext_ln919_fu_499_p1;

assign sm_d1 = (trunc_ln_reg_643 | shl_ln8_fu_508_p3);

assign sub_ln419_1_fu_365_p2 = (zext_ln419_2_fu_350_p1 - zext_ln419_3_fu_361_p1);

assign sub_ln419_fu_337_p2 = (zext_ln419_fu_322_p1 - zext_ln419_1_fu_333_p1);

assign sub_ln916_fu_388_p2 = (zext_ln916_1_fu_381_p1 - i_31_cast22_fu_378_p1);

assign tmp_1_fu_281_p3 = {{trunc_ln419_1_fu_240_p1}, {or_ln917_fu_275_p2}};

assign tmp_2_fu_443_p3 = {{trunc_ln419_1_reg_603}, {or_ln919_fu_438_p2}};

assign tmp_3_fu_460_p3 = {{trunc_ln419_1_reg_603}, {or_ln921_fu_455_p2}};

assign tmp_s_fu_260_p4 = {{{trunc_ln419_1_fu_240_p1}, {trunc_ln916_fu_248_p1}}, {2'd0}};

assign trunc_ln1_fu_522_p4 = {{w1_vec_coeffs_q1[11:4]}};

assign trunc_ln419_1_fu_240_p1 = select_ln418_1_fu_232_p3[1:0];

assign trunc_ln419_2_fu_244_p1 = add_ln418_fu_212_p2[1:0];

assign trunc_ln419_fu_193_p1 = ap_sig_allocacmp_i_7[1:0];

assign trunc_ln916_1_fu_384_p1 = w1_vec_coeffs_q1[7:0];

assign trunc_ln916_fu_248_p1 = select_ln418_fu_224_p3[5:0];

assign trunc_ln917_fu_409_p1 = w1_vec_coeffs_q0[1:0];

assign trunc_ln919_fu_504_p1 = w1_vec_coeffs_q1[3:0];

assign trunc_ln921_fu_543_p1 = w1_vec_coeffs_q0[5:0];

assign zext_ln419_1_fu_333_p1 = shl_ln419_1_fu_326_p3;

assign zext_ln419_2_fu_350_p1 = shl_ln419_mid1_fu_343_p3;

assign zext_ln419_3_fu_361_p1 = shl_ln419_1_mid1_fu_354_p3;

assign zext_ln419_fu_322_p1 = shl_ln5_fu_315_p3;

assign zext_ln916_1_fu_381_p1 = shl_ln6_reg_615;

assign zext_ln916_fu_270_p1 = tmp_s_fu_260_p4;

assign zext_ln917_fu_289_p1 = tmp_1_fu_281_p3;

assign zext_ln919_fu_450_p1 = tmp_2_fu_443_p3;

assign zext_ln921_fu_467_p1 = tmp_3_fu_460_p3;

always @ (posedge ap_clk) begin
    shl_ln6_reg_615[1:0] <= 2'b00;
    select_ln418_2_reg_632[5:0] <= 6'b000000;
end

endmodule //pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_signature_1_Pipeline_VITIS_LOOP_418_1_VITIS_LOOP_915_1