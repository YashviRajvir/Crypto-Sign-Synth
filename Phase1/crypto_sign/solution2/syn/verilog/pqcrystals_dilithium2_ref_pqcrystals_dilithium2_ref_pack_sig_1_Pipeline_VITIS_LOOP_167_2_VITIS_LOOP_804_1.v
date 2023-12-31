// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        z_address0,
        z_ce0,
        z_q0,
        z_address1,
        z_ce1,
        z_q1,
        sm_address0,
        sm_ce0,
        sm_we0,
        sm_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] z_address0;
output   z_ce0;
input  [31:0] z_q0;
output  [9:0] z_address1;
output   z_ce1;
input  [31:0] z_q1;
output  [12:0] sm_address0;
output   sm_ce0;
output   sm_we0;
output  [7:0] sm_d0;

reg ap_idle;
reg[9:0] z_address0;
reg z_ce0;
reg[9:0] z_address1;
reg z_ce1;
reg[12:0] sm_address0;
reg sm_ce0;
reg sm_we0;
reg[7:0] sm_d0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln167_reg_878;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_state9_pp0_stage8_iter0;
wire    ap_block_pp0_stage8_subdone;
wire   [1:0] trunc_ln168_fu_293_p1;
reg   [1:0] trunc_ln168_reg_872;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln167_fu_297_p2;
wire   [0:0] icmp_ln804_fu_318_p2;
reg   [0:0] icmp_ln804_reg_882;
wire   [1:0] trunc_ln168_1_fu_340_p1;
reg   [1:0] trunc_ln168_1_reg_887;
wire   [1:0] trunc_ln168_2_fu_344_p1;
reg   [1:0] trunc_ln168_2_reg_893;
wire   [7:0] shl_ln_fu_356_p3;
reg   [7:0] shl_ln_reg_899;
wire   [9:0] add_ln810_1_fu_410_p2;
reg   [9:0] add_ln810_1_reg_915;
wire   [10:0] select_ln167_2_fu_457_p3;
reg   [10:0] select_ln167_2_reg_920;
wire    ap_block_pp0_stage1_11001;
wire   [11:0] zext_ln810_1_fu_533_p1;
reg   [11:0] zext_ln810_1_reg_942;
reg   [7:0] trunc_ln_reg_954;
wire   [7:0] or_ln813_fu_579_p2;
reg   [7:0] or_ln813_reg_959;
reg   [7:0] trunc_ln7_reg_964;
reg   [7:0] trunc_ln8_reg_969;
wire   [7:0] or_ln816_fu_656_p2;
reg   [7:0] or_ln816_reg_974;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] trunc_ln9_reg_979;
wire   [7:0] or_ln819_fu_693_p2;
reg   [7:0] or_ln819_reg_984;
reg   [7:0] trunc_ln11_reg_989;
reg   [7:0] trunc_ln12_reg_994;
wire   [11:0] add_ln821_fu_842_p2;
reg   [11:0] add_ln821_reg_999;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln805_fu_374_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln806_fu_393_p1;
wire   [63:0] zext_ln807_fu_506_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln808_fu_523_p1;
wire   [63:0] zext_ln810_2_fu_542_p1;
wire   [63:0] zext_ln811_fu_639_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln813_fu_733_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln814_fu_752_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln816_fu_771_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln817_fu_790_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln819_fu_809_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln820_fu_837_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln821_fu_847_p1;
reg   [6:0] i_52_fu_142;
wire   [6:0] add_ln804_fu_416_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_52_load;
reg   [2:0] i_fu_146;
wire   [2:0] select_ln167_1_fu_332_p3;
reg   [2:0] ap_sig_allocacmp_i_53;
reg   [8:0] indvar_flatten_fu_150;
wire   [8:0] add_ln167_1_fu_303_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [7:0] trunc_ln810_fu_528_p1;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_state6_pp0_stage5_iter0;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_state7_pp0_stage6_iter0;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_state8_pp0_stage7_iter0;
wire    ap_block_pp0_stage7_11001;
wire   [2:0] add_ln167_fu_312_p2;
wire   [6:0] select_ln167_fu_324_p3;
wire   [5:0] trunc_ln805_fu_352_p1;
wire   [9:0] tmp_s_fu_364_p4;
wire   [7:0] or_ln806_fu_379_p2;
wire   [9:0] tmp_395_fu_385_p3;
wire   [8:0] shl_ln2_fu_398_p3;
wire   [9:0] zext_ln810_fu_406_p1;
wire   [9:0] i_76_cast3_fu_348_p1;
wire   [10:0] add_ln_mid1_fu_447_p5;
wire   [10:0] add_ln_fu_437_p5;
wire   [10:0] or_ln167_fu_464_p2;
wire   [23:0] trunc_ln805_1_fu_474_p1;
wire   [21:0] trunc_ln806_fu_484_p1;
wire   [7:0] or_ln807_fu_494_p2;
wire   [9:0] tmp_396_fu_499_p3;
wire   [7:0] or_ln808_fu_511_p2;
wire   [9:0] tmp_397_fu_516_p3;
wire   [23:0] t_fu_478_p2;
wire   [11:0] zext_ln167_fu_470_p1;
wire   [11:0] add_ln810_fu_536_p2;
wire   [21:0] t_23_fu_488_p2;
wire   [5:0] trunc_ln813_fu_567_p1;
wire   [7:0] shl_ln3_fu_571_p3;
wire   [7:0] trunc_ln6_fu_557_p4;
wire   [10:0] or_ln167_1_fu_605_p2;
wire   [19:0] trunc_ln807_fu_614_p1;
wire   [17:0] trunc_ln808_fu_624_p1;
wire   [11:0] zext_ln167_1_fu_610_p1;
wire   [11:0] add_ln811_fu_634_p2;
wire   [19:0] t_24_fu_618_p2;
wire   [3:0] trunc_ln816_fu_644_p1;
wire   [7:0] shl_ln4_fu_648_p3;
wire   [17:0] t_25_fu_628_p2;
wire   [1:0] trunc_ln819_fu_681_p1;
wire   [7:0] shl_ln5_fu_685_p3;
wire   [7:0] trunc_ln10_fu_671_p4;
wire   [10:0] or_ln167_2_fu_719_p2;
wire   [11:0] zext_ln167_2_fu_724_p1;
wire   [11:0] add_ln812_fu_728_p2;
wire   [10:0] or_ln167_3_fu_738_p2;
wire   [11:0] zext_ln167_3_fu_743_p1;
wire   [11:0] add_ln814_fu_747_p2;
wire   [10:0] or_ln167_4_fu_757_p2;
wire   [11:0] zext_ln167_4_fu_762_p1;
wire   [11:0] add_ln815_fu_766_p2;
wire   [10:0] or_ln167_5_fu_776_p2;
wire   [11:0] zext_ln167_5_fu_781_p1;
wire   [11:0] add_ln817_fu_785_p2;
wire   [10:0] or_ln167_6_fu_795_p2;
wire   [11:0] zext_ln167_6_fu_800_p1;
wire   [11:0] add_ln818_fu_804_p2;
wire   [10:0] or_ln167_7_fu_814_p2;
wire   [10:0] or_ln167_8_fu_823_p2;
wire   [11:0] zext_ln167_7_fu_819_p1;
wire   [11:0] add_ln820_fu_832_p2;
wire   [11:0] zext_ln167_8_fu_828_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln167_fu_297_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_52_fu_142 <= add_ln804_fu_416_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_52_fu_142 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln167_fu_297_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_146 <= select_ln167_1_fu_332_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_146 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln167_fu_297_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_150 <= add_ln167_1_fu_303_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_150 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_fu_297_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln810_1_reg_915 <= add_ln810_1_fu_410_p2;
        icmp_ln804_reg_882 <= icmp_ln804_fu_318_p2;
        shl_ln_reg_899[7 : 2] <= shl_ln_fu_356_p3[7 : 2];
        trunc_ln168_1_reg_887 <= trunc_ln168_1_fu_340_p1;
        trunc_ln168_2_reg_893 <= trunc_ln168_2_fu_344_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln821_reg_999 <= add_ln821_fu_842_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln167_reg_878 <= icmp_ln167_fu_297_p2;
        trunc_ln168_reg_872 <= trunc_ln168_fu_293_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        or_ln813_reg_959 <= or_ln813_fu_579_p2;
        select_ln167_2_reg_920[7 : 6] <= select_ln167_2_fu_457_p3[7 : 6];
select_ln167_2_reg_920[10 : 9] <= select_ln167_2_fu_457_p3[10 : 9];
        trunc_ln7_reg_964 <= {{t_23_fu_488_p2[13:6]}};
        trunc_ln8_reg_969 <= {{t_23_fu_488_p2[21:14]}};
        trunc_ln_reg_954 <= {{t_fu_478_p2[15:8]}};
        zext_ln810_1_reg_942[9 : 0] <= zext_ln810_1_fu_533_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        or_ln816_reg_974 <= or_ln816_fu_656_p2;
        or_ln819_reg_984 <= or_ln819_fu_693_p2;
        trunc_ln11_reg_989 <= {{t_25_fu_628_p2[9:2]}};
        trunc_ln12_reg_994 <= {{t_25_fu_628_p2[17:10]}};
        trunc_ln9_reg_979 <= {{t_24_fu_618_p2[11:4]}};
    end
end

always @ (*) begin
    if (((icmp_ln167_reg_878 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_52_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_52_load = i_52_fu_142;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_53 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_53 = i_fu_146;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_150;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sm_address0 = zext_ln821_fu_847_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        sm_address0 = zext_ln820_fu_837_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        sm_address0 = zext_ln819_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        sm_address0 = zext_ln817_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sm_address0 = zext_ln816_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sm_address0 = zext_ln814_fu_752_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sm_address0 = zext_ln813_fu_733_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sm_address0 = zext_ln811_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sm_address0 = zext_ln810_2_fu_542_p1;
    end else begin
        sm_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sm_ce0 = 1'b1;
    end else begin
        sm_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sm_d0 = trunc_ln12_reg_994;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        sm_d0 = trunc_ln11_reg_989;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        sm_d0 = or_ln819_reg_984;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        sm_d0 = trunc_ln9_reg_979;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sm_d0 = or_ln816_reg_974;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sm_d0 = trunc_ln7_reg_964;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sm_d0 = or_ln813_reg_959;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sm_d0 = trunc_ln_reg_954;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sm_d0 = trunc_ln810_fu_528_p1;
    end else begin
        sm_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln167_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sm_we0 = 1'b1;
    end else begin
        sm_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            z_address0 = zext_ln808_fu_523_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            z_address0 = zext_ln806_fu_393_p1;
        end else begin
            z_address0 = 'bx;
        end
    end else begin
        z_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            z_address1 = zext_ln807_fu_506_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            z_address1 = zext_ln805_fu_374_p1;
        end else begin
            z_address1 = 'bx;
        end
    end else begin
        z_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        z_ce0 = 1'b1;
    end else begin
        z_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        z_ce1 = 1'b1;
    end else begin
        z_ce1 = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln167_1_fu_303_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);

assign add_ln167_fu_312_p2 = (ap_sig_allocacmp_i_53 + 3'd1);

assign add_ln804_fu_416_p2 = (select_ln167_fu_324_p3 + 7'd1);

assign add_ln810_1_fu_410_p2 = (zext_ln810_fu_406_p1 + i_76_cast3_fu_348_p1);

assign add_ln810_fu_536_p2 = (zext_ln810_1_fu_533_p1 + zext_ln167_fu_470_p1);

assign add_ln811_fu_634_p2 = (zext_ln810_1_reg_942 + zext_ln167_1_fu_610_p1);

assign add_ln812_fu_728_p2 = (zext_ln810_1_reg_942 + zext_ln167_2_fu_724_p1);

assign add_ln814_fu_747_p2 = (zext_ln810_1_reg_942 + zext_ln167_3_fu_743_p1);

assign add_ln815_fu_766_p2 = (zext_ln810_1_reg_942 + zext_ln167_4_fu_762_p1);

assign add_ln817_fu_785_p2 = (zext_ln810_1_reg_942 + zext_ln167_5_fu_781_p1);

assign add_ln818_fu_804_p2 = (zext_ln810_1_reg_942 + zext_ln167_6_fu_800_p1);

assign add_ln820_fu_832_p2 = (zext_ln810_1_reg_942 + zext_ln167_7_fu_819_p1);

assign add_ln821_fu_842_p2 = (zext_ln810_1_reg_942 + zext_ln167_8_fu_828_p1);

assign add_ln_fu_437_p5 = {{{{trunc_ln168_reg_872}, {1'd0}}, {trunc_ln168_reg_872}}, {6'd0}};

assign add_ln_mid1_fu_447_p5 = {{{{trunc_ln168_2_reg_893}, {1'd0}}, {trunc_ln168_2_reg_893}}, {6'd0}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage7_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage8_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign i_76_cast3_fu_348_p1 = select_ln167_fu_324_p3;

assign icmp_ln167_fu_297_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln804_fu_318_p2 = ((ap_sig_allocacmp_i_52_load == 7'd64) ? 1'b1 : 1'b0);

assign or_ln167_1_fu_605_p2 = (select_ln167_2_reg_920 | 11'd33);

assign or_ln167_2_fu_719_p2 = (select_ln167_2_reg_920 | 11'd34);

assign or_ln167_3_fu_738_p2 = (select_ln167_2_reg_920 | 11'd35);

assign or_ln167_4_fu_757_p2 = (select_ln167_2_reg_920 | 11'd36);

assign or_ln167_5_fu_776_p2 = (select_ln167_2_reg_920 | 11'd37);

assign or_ln167_6_fu_795_p2 = (select_ln167_2_reg_920 | 11'd38);

assign or_ln167_7_fu_814_p2 = (select_ln167_2_reg_920 | 11'd39);

assign or_ln167_8_fu_823_p2 = (select_ln167_2_reg_920 | 11'd40);

assign or_ln167_fu_464_p2 = (select_ln167_2_fu_457_p3 | 11'd32);

assign or_ln806_fu_379_p2 = (shl_ln_fu_356_p3 | 8'd1);

assign or_ln807_fu_494_p2 = (shl_ln_reg_899 | 8'd2);

assign or_ln808_fu_511_p2 = (shl_ln_reg_899 | 8'd3);

assign or_ln813_fu_579_p2 = (trunc_ln6_fu_557_p4 | shl_ln3_fu_571_p3);

assign or_ln816_fu_656_p2 = (trunc_ln8_reg_969 | shl_ln4_fu_648_p3);

assign or_ln819_fu_693_p2 = (trunc_ln10_fu_671_p4 | shl_ln5_fu_685_p3);

assign select_ln167_1_fu_332_p3 = ((icmp_ln804_fu_318_p2[0:0] == 1'b1) ? add_ln167_fu_312_p2 : ap_sig_allocacmp_i_53);

assign select_ln167_2_fu_457_p3 = ((icmp_ln804_reg_882[0:0] == 1'b1) ? add_ln_mid1_fu_447_p5 : add_ln_fu_437_p5);

assign select_ln167_fu_324_p3 = ((icmp_ln804_fu_318_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_52_load);

assign shl_ln2_fu_398_p3 = {{trunc_ln805_fu_352_p1}, {3'd0}};

assign shl_ln3_fu_571_p3 = {{trunc_ln813_fu_567_p1}, {2'd0}};

assign shl_ln4_fu_648_p3 = {{trunc_ln816_fu_644_p1}, {4'd0}};

assign shl_ln5_fu_685_p3 = {{trunc_ln819_fu_681_p1}, {6'd0}};

assign shl_ln_fu_356_p3 = {{trunc_ln805_fu_352_p1}, {2'd0}};

assign t_23_fu_488_p2 = (22'd131072 - trunc_ln806_fu_484_p1);

assign t_24_fu_618_p2 = (20'd131072 - trunc_ln807_fu_614_p1);

assign t_25_fu_628_p2 = ($signed(18'd131072) - $signed(trunc_ln808_fu_624_p1));

assign t_fu_478_p2 = (24'd131072 - trunc_ln805_1_fu_474_p1);

assign tmp_395_fu_385_p3 = {{trunc_ln168_1_fu_340_p1}, {or_ln806_fu_379_p2}};

assign tmp_396_fu_499_p3 = {{trunc_ln168_1_reg_887}, {or_ln807_fu_494_p2}};

assign tmp_397_fu_516_p3 = {{trunc_ln168_1_reg_887}, {or_ln808_fu_511_p2}};

assign tmp_s_fu_364_p4 = {{{trunc_ln168_1_fu_340_p1}, {trunc_ln805_fu_352_p1}}, {2'd0}};

assign trunc_ln10_fu_671_p4 = {{t_24_fu_618_p2[19:12]}};

assign trunc_ln168_1_fu_340_p1 = select_ln167_1_fu_332_p3[1:0];

assign trunc_ln168_2_fu_344_p1 = add_ln167_fu_312_p2[1:0];

assign trunc_ln168_fu_293_p1 = ap_sig_allocacmp_i_53[1:0];

assign trunc_ln6_fu_557_p4 = {{t_fu_478_p2[23:16]}};

assign trunc_ln805_1_fu_474_p1 = z_q1[23:0];

assign trunc_ln805_fu_352_p1 = select_ln167_fu_324_p3[5:0];

assign trunc_ln806_fu_484_p1 = z_q0[21:0];

assign trunc_ln807_fu_614_p1 = z_q1[19:0];

assign trunc_ln808_fu_624_p1 = z_q0[17:0];

assign trunc_ln810_fu_528_p1 = t_fu_478_p2[7:0];

assign trunc_ln813_fu_567_p1 = t_23_fu_488_p2[5:0];

assign trunc_ln816_fu_644_p1 = t_24_fu_618_p2[3:0];

assign trunc_ln819_fu_681_p1 = t_25_fu_628_p2[1:0];

assign zext_ln167_1_fu_610_p1 = or_ln167_1_fu_605_p2;

assign zext_ln167_2_fu_724_p1 = or_ln167_2_fu_719_p2;

assign zext_ln167_3_fu_743_p1 = or_ln167_3_fu_738_p2;

assign zext_ln167_4_fu_762_p1 = or_ln167_4_fu_757_p2;

assign zext_ln167_5_fu_781_p1 = or_ln167_5_fu_776_p2;

assign zext_ln167_6_fu_800_p1 = or_ln167_6_fu_795_p2;

assign zext_ln167_7_fu_819_p1 = or_ln167_7_fu_814_p2;

assign zext_ln167_8_fu_828_p1 = or_ln167_8_fu_823_p2;

assign zext_ln167_fu_470_p1 = or_ln167_fu_464_p2;

assign zext_ln805_fu_374_p1 = tmp_s_fu_364_p4;

assign zext_ln806_fu_393_p1 = tmp_395_fu_385_p3;

assign zext_ln807_fu_506_p1 = tmp_396_fu_499_p3;

assign zext_ln808_fu_523_p1 = tmp_397_fu_516_p3;

assign zext_ln810_1_fu_533_p1 = add_ln810_1_reg_915;

assign zext_ln810_2_fu_542_p1 = add_ln810_fu_536_p2;

assign zext_ln810_fu_406_p1 = shl_ln2_fu_398_p3;

assign zext_ln811_fu_639_p1 = add_ln811_fu_634_p2;

assign zext_ln813_fu_733_p1 = add_ln812_fu_728_p2;

assign zext_ln814_fu_752_p1 = add_ln814_fu_747_p2;

assign zext_ln816_fu_771_p1 = add_ln815_fu_766_p2;

assign zext_ln817_fu_790_p1 = add_ln817_fu_785_p2;

assign zext_ln819_fu_809_p1 = add_ln818_fu_804_p2;

assign zext_ln820_fu_837_p1 = add_ln820_fu_832_p2;

assign zext_ln821_fu_847_p1 = add_ln821_reg_999;

always @ (posedge ap_clk) begin
    shl_ln_reg_899[1:0] <= 2'b00;
    select_ln167_2_reg_920[5:0] <= 6'b000000;
    select_ln167_2_reg_920[8] <= 1'b0;
    zext_ln810_1_reg_942[11:10] <= 2'b00;
end

endmodule //pqcrystals_dilithium2_ref_pqcrystals_dilithium2_ref_pack_sig_1_Pipeline_VITIS_LOOP_167_2_VITIS_LOOP_804_1
