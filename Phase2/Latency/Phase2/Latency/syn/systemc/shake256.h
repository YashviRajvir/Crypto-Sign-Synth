// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shake256_HH_
#define _shake256_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakF1600_StatePer.h"
#include "shake256_state_0_s.h"

namespace ap_rtl {

struct shake256 : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<8> > out_r_d0;
    sc_in< sc_lv<8> > out_r_q0;
    sc_out< sc_lv<8> > out_r_address1;
    sc_out< sc_logic > out_r_ce1;
    sc_out< sc_logic > out_r_we1;
    sc_out< sc_lv<8> > out_r_d1;
    sc_in< sc_lv<8> > out_r_q1;


    // Module declarations
    shake256(sc_module_name name);
    SC_HAS_PROCESS(shake256);

    ~shake256();

    sc_trace_file* mVcdFile;

    shake256_state_0_s* state_0_s_U;
    KeccakF1600_StatePer* grp_KeccakF1600_StatePer_fu_331;
    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > i_fu_344_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > add_ln416_fu_366_p2;
    sc_signal< sc_lv<4> > add_ln416_reg_769;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > zext_ln417_fu_380_p1;
    sc_signal< sc_lv<8> > zext_ln417_reg_774;
    sc_signal< sc_lv<1> > icmp_ln416_fu_360_p2;
    sc_signal< sc_lv<5> > state_0_s_addr_3_reg_794;
    sc_signal< sc_lv<8> > in_load_reg_812;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > in_load_1_reg_817;
    sc_signal< sc_lv<8> > in_load_2_reg_832;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > in_load_3_reg_837;
    sc_signal< sc_lv<8> > in_load_4_reg_852;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > in_load_5_reg_857;
    sc_signal< sc_lv<3> > add_ln540_fu_512_p2;
    sc_signal< sc_lv<3> > add_ln540_reg_875;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > icmp_ln540_fu_506_p2;
    sc_signal< sc_lv<6> > shl_ln1_fu_523_p3;
    sc_signal< sc_lv<6> > shl_ln1_reg_885;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > trunc_ln1_reg_895;
    sc_signal< sc_lv<8> > trunc_ln2_reg_900;
    sc_signal< sc_lv<8> > trunc_ln3_reg_905;
    sc_signal< sc_lv<8> > trunc_ln4_reg_910;
    sc_signal< sc_lv<8> > trunc_ln5_reg_915;
    sc_signal< sc_lv<8> > trunc_ln6_reg_920;
    sc_signal< sc_lv<5> > state_0_s_address0;
    sc_signal< sc_logic > state_0_s_ce0;
    sc_signal< sc_logic > state_0_s_we0;
    sc_signal< sc_lv<64> > state_0_s_d0;
    sc_signal< sc_lv<64> > state_0_s_q0;
    sc_signal< sc_lv<5> > state_0_s_address1;
    sc_signal< sc_logic > state_0_s_ce1;
    sc_signal< sc_logic > state_0_s_we1;
    sc_signal< sc_lv<64> > state_0_s_d1;
    sc_signal< sc_lv<64> > state_0_s_q1;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_331_ap_start;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_331_ap_done;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_331_ap_idle;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_331_ap_ready;
    sc_signal< sc_lv<5> > grp_KeccakF1600_StatePer_fu_331_state_0_address0;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_331_state_0_ce0;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_331_state_0_we0;
    sc_signal< sc_lv<64> > grp_KeccakF1600_StatePer_fu_331_state_0_d0;
    sc_signal< sc_lv<5> > grp_KeccakF1600_StatePer_fu_331_state_0_address1;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_331_state_0_ce1;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_331_state_0_we1;
    sc_signal< sc_lv<64> > grp_KeccakF1600_StatePer_fu_331_state_0_d1;
    sc_signal< sc_lv<5> > i_0_i_i_reg_297;
    sc_signal< sc_lv<1> > icmp_ln362_fu_338_p2;
    sc_signal< sc_lv<4> > i_3_i_i_reg_308;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > i_3_i_reg_319;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_331_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > zext_ln363_fu_350_p1;
    sc_signal< sc_lv<64> > zext_ln417_1_fu_390_p1;
    sc_signal< sc_lv<64> > zext_ln31_fu_401_p1;
    sc_signal< sc_lv<64> > zext_ln416_fu_355_p1;
    sc_signal< sc_lv<64> > zext_ln31_1_fu_411_p1;
    sc_signal< sc_lv<64> > zext_ln31_2_fu_421_p1;
    sc_signal< sc_lv<64> > zext_ln31_3_fu_431_p1;
    sc_signal< sc_lv<64> > zext_ln31_4_fu_441_p1;
    sc_signal< sc_lv<64> > zext_ln31_5_fu_451_p1;
    sc_signal< sc_lv<64> > zext_ln31_6_fu_461_p1;
    sc_signal< sc_lv<64> > zext_ln540_fu_501_p1;
    sc_signal< sc_lv<64> > zext_ln541_1_fu_541_p1;
    sc_signal< sc_lv<64> > zext_ln542_1_fu_573_p1;
    sc_signal< sc_lv<64> > zext_ln543_1_fu_653_p1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<64> > zext_ln544_1_fu_673_p1;
    sc_signal< sc_lv<64> > zext_ln545_1_fu_693_p1;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<64> > zext_ln546_1_fu_713_p1;
    sc_signal< sc_lv<64> > zext_ln547_1_fu_733_p1;
    sc_signal< sc_lv<64> > zext_ln548_1_fu_753_p1;
    sc_signal< sc_lv<64> > xor_ln417_fu_480_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > xor_ln450_fu_487_p2;
    sc_signal< sc_lv<64> > xor_ln451_fu_494_p2;
    sc_signal< sc_lv<8> > trunc_ln541_fu_518_p1;
    sc_signal< sc_lv<7> > shl_ln_fu_372_p3;
    sc_signal< sc_lv<8> > add_ln417_fu_384_p2;
    sc_signal< sc_lv<8> > add_ln31_fu_395_p2;
    sc_signal< sc_lv<8> > add_ln31_1_fu_406_p2;
    sc_signal< sc_lv<8> > add_ln31_2_fu_416_p2;
    sc_signal< sc_lv<8> > add_ln31_3_fu_426_p2;
    sc_signal< sc_lv<8> > add_ln31_4_fu_436_p2;
    sc_signal< sc_lv<8> > add_ln31_5_fu_446_p2;
    sc_signal< sc_lv<8> > add_ln31_6_fu_456_p2;
    sc_signal< sc_lv<64> > r_7_i_fu_466_p9;
    sc_signal< sc_lv<8> > zext_ln541_fu_531_p1;
    sc_signal< sc_lv<8> > add_ln541_fu_535_p2;
    sc_signal< sc_lv<6> > or_ln542_fu_557_p2;
    sc_signal< sc_lv<8> > zext_ln542_fu_563_p1;
    sc_signal< sc_lv<8> > add_ln542_fu_567_p2;
    sc_signal< sc_lv<6> > or_ln543_fu_638_p2;
    sc_signal< sc_lv<8> > zext_ln543_fu_643_p1;
    sc_signal< sc_lv<8> > add_ln543_fu_647_p2;
    sc_signal< sc_lv<6> > or_ln544_fu_658_p2;
    sc_signal< sc_lv<8> > zext_ln544_fu_663_p1;
    sc_signal< sc_lv<8> > add_ln544_fu_667_p2;
    sc_signal< sc_lv<6> > or_ln545_fu_678_p2;
    sc_signal< sc_lv<8> > zext_ln545_fu_683_p1;
    sc_signal< sc_lv<8> > add_ln545_fu_687_p2;
    sc_signal< sc_lv<6> > or_ln546_fu_698_p2;
    sc_signal< sc_lv<8> > zext_ln546_fu_703_p1;
    sc_signal< sc_lv<8> > add_ln546_fu_707_p2;
    sc_signal< sc_lv<6> > or_ln547_fu_718_p2;
    sc_signal< sc_lv<8> > zext_ln547_fu_723_p1;
    sc_signal< sc_lv<8> > add_ln547_fu_727_p2;
    sc_signal< sc_lv<6> > or_ln548_fu_738_p2;
    sc_signal< sc_lv<8> > zext_ln548_fu_743_p1;
    sc_signal< sc_lv<8> > add_ln548_fu_747_p2;
    sc_signal< sc_lv<15> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<15> ap_ST_fsm_state1;
    static const sc_lv<15> ap_ST_fsm_state2;
    static const sc_lv<15> ap_ST_fsm_state3;
    static const sc_lv<15> ap_ST_fsm_state4;
    static const sc_lv<15> ap_ST_fsm_state5;
    static const sc_lv<15> ap_ST_fsm_state6;
    static const sc_lv<15> ap_ST_fsm_state7;
    static const sc_lv<15> ap_ST_fsm_state8;
    static const sc_lv<15> ap_ST_fsm_state9;
    static const sc_lv<15> ap_ST_fsm_state10;
    static const sc_lv<15> ap_ST_fsm_state11;
    static const sc_lv<15> ap_ST_fsm_state12;
    static const sc_lv<15> ap_ST_fsm_state13;
    static const sc_lv<15> ap_ST_fsm_state14;
    static const sc_lv<15> ap_ST_fsm_state15;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<8> ap_const_lv8_50;
    static const sc_lv<8> ap_const_lv8_51;
    static const sc_lv<8> ap_const_lv8_52;
    static const sc_lv<8> ap_const_lv8_53;
    static const sc_lv<8> ap_const_lv8_54;
    static const sc_lv<8> ap_const_lv8_55;
    static const sc_lv<8> ap_const_lv8_56;
    static const sc_lv<8> ap_const_lv8_57;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<64> ap_const_lv64_8000000000000000;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<8> ap_const_lv8_A0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<6> ap_const_lv6_3;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<6> ap_const_lv6_5;
    static const sc_lv<6> ap_const_lv6_6;
    static const sc_lv<6> ap_const_lv6_7;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln31_1_fu_406_p2();
    void thread_add_ln31_2_fu_416_p2();
    void thread_add_ln31_3_fu_426_p2();
    void thread_add_ln31_4_fu_436_p2();
    void thread_add_ln31_5_fu_446_p2();
    void thread_add_ln31_6_fu_456_p2();
    void thread_add_ln31_fu_395_p2();
    void thread_add_ln416_fu_366_p2();
    void thread_add_ln417_fu_384_p2();
    void thread_add_ln540_fu_512_p2();
    void thread_add_ln541_fu_535_p2();
    void thread_add_ln542_fu_567_p2();
    void thread_add_ln543_fu_647_p2();
    void thread_add_ln544_fu_667_p2();
    void thread_add_ln545_fu_687_p2();
    void thread_add_ln546_fu_707_p2();
    void thread_add_ln547_fu_727_p2();
    void thread_add_ln548_fu_747_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_KeccakF1600_StatePer_fu_331_ap_start();
    void thread_i_fu_344_p2();
    void thread_icmp_ln362_fu_338_p2();
    void thread_icmp_ln416_fu_360_p2();
    void thread_icmp_ln540_fu_506_p2();
    void thread_or_ln542_fu_557_p2();
    void thread_or_ln543_fu_638_p2();
    void thread_or_ln544_fu_658_p2();
    void thread_or_ln545_fu_678_p2();
    void thread_or_ln546_fu_698_p2();
    void thread_or_ln547_fu_718_p2();
    void thread_or_ln548_fu_738_p2();
    void thread_out_r_address0();
    void thread_out_r_address1();
    void thread_out_r_ce0();
    void thread_out_r_ce1();
    void thread_out_r_d0();
    void thread_out_r_d1();
    void thread_out_r_we0();
    void thread_out_r_we1();
    void thread_r_7_i_fu_466_p9();
    void thread_shl_ln1_fu_523_p3();
    void thread_shl_ln_fu_372_p3();
    void thread_state_0_s_address0();
    void thread_state_0_s_address1();
    void thread_state_0_s_ce0();
    void thread_state_0_s_ce1();
    void thread_state_0_s_d0();
    void thread_state_0_s_d1();
    void thread_state_0_s_we0();
    void thread_state_0_s_we1();
    void thread_trunc_ln541_fu_518_p1();
    void thread_xor_ln417_fu_480_p2();
    void thread_xor_ln450_fu_487_p2();
    void thread_xor_ln451_fu_494_p2();
    void thread_zext_ln31_1_fu_411_p1();
    void thread_zext_ln31_2_fu_421_p1();
    void thread_zext_ln31_3_fu_431_p1();
    void thread_zext_ln31_4_fu_441_p1();
    void thread_zext_ln31_5_fu_451_p1();
    void thread_zext_ln31_6_fu_461_p1();
    void thread_zext_ln31_fu_401_p1();
    void thread_zext_ln363_fu_350_p1();
    void thread_zext_ln416_fu_355_p1();
    void thread_zext_ln417_1_fu_390_p1();
    void thread_zext_ln417_fu_380_p1();
    void thread_zext_ln540_fu_501_p1();
    void thread_zext_ln541_1_fu_541_p1();
    void thread_zext_ln541_fu_531_p1();
    void thread_zext_ln542_1_fu_573_p1();
    void thread_zext_ln542_fu_563_p1();
    void thread_zext_ln543_1_fu_653_p1();
    void thread_zext_ln543_fu_643_p1();
    void thread_zext_ln544_1_fu_673_p1();
    void thread_zext_ln544_fu_663_p1();
    void thread_zext_ln545_1_fu_693_p1();
    void thread_zext_ln545_fu_683_p1();
    void thread_zext_ln546_1_fu_713_p1();
    void thread_zext_ln546_fu_703_p1();
    void thread_zext_ln547_1_fu_733_p1();
    void thread_zext_ln547_fu_723_p1();
    void thread_zext_ln548_1_fu_753_p1();
    void thread_zext_ln548_fu_743_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif