-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity load64_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    x_ce0 : OUT STD_LOGIC;
    x_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    x_address1 : OUT STD_LOGIC_VECTOR (12 downto 0);
    x_ce1 : OUT STD_LOGIC;
    x_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    x_offset : IN STD_LOGIC_VECTOR (63 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of load64_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv14_1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    constant ap_const_lv14_2 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000010";
    constant ap_const_lv14_3 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000011";
    constant ap_const_lv14_4 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000100";
    constant ap_const_lv14_5 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000101";
    constant ap_const_lv14_6 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000110";
    constant ap_const_lv14_7 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000111";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal trunc_ln31_fu_104_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal trunc_ln31_reg_198 : STD_LOGIC_VECTOR (13 downto 0);
    signal x_load_reg_213 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal x_load_1_reg_218 : STD_LOGIC_VECTOR (7 downto 0);
    signal x_load_2_reg_233 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal x_load_3_reg_238 : STD_LOGIC_VECTOR (7 downto 0);
    signal x_load_4_reg_253 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal x_load_5_reg_258 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln31_fu_114_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_25_fu_124_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_26_fu_134_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_27_fu_144_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_28_fu_154_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_29_fu_164_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln31_30_fu_174_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln31_fu_108_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln31_1_fu_119_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln31_2_fu_129_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln31_3_fu_139_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln31_4_fu_149_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln31_5_fu_159_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln31_6_fu_169_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal r_7_fu_179_p9 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv64_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_return_preg <= r_7_fu_179_p9;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                trunc_ln31_reg_198 <= trunc_ln31_fu_104_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                x_load_1_reg_218 <= x_q1;
                x_load_reg_213 <= x_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                x_load_2_reg_233 <= x_q0;
                x_load_3_reg_238 <= x_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                x_load_4_reg_253 <= x_q0;
                x_load_5_reg_258 <= x_q1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    add_ln31_1_fu_119_p2 <= std_logic_vector(unsigned(ap_const_lv14_2) + unsigned(trunc_ln31_reg_198));
    add_ln31_2_fu_129_p2 <= std_logic_vector(unsigned(ap_const_lv14_3) + unsigned(trunc_ln31_reg_198));
    add_ln31_3_fu_139_p2 <= std_logic_vector(unsigned(ap_const_lv14_4) + unsigned(trunc_ln31_reg_198));
    add_ln31_4_fu_149_p2 <= std_logic_vector(unsigned(ap_const_lv14_5) + unsigned(trunc_ln31_reg_198));
    add_ln31_5_fu_159_p2 <= std_logic_vector(unsigned(ap_const_lv14_6) + unsigned(trunc_ln31_reg_198));
    add_ln31_6_fu_169_p2 <= std_logic_vector(unsigned(ap_const_lv14_7) + unsigned(trunc_ln31_reg_198));
    add_ln31_fu_108_p2 <= std_logic_vector(unsigned(ap_const_lv14_1) + unsigned(trunc_ln31_fu_104_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_state5, r_7_fu_179_p9, ap_return_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_return <= r_7_fu_179_p9;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    r_7_fu_179_p9 <= (((((((x_q1 & x_q0) & x_load_5_reg_258) & x_load_4_reg_253) & x_load_3_reg_238) & x_load_2_reg_233) & x_load_1_reg_218) & x_load_reg_213);
    trunc_ln31_fu_104_p1 <= x_offset(14 - 1 downto 0);

    x_address0_assign_proc : process(ap_CS_fsm_state1, x_offset, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, zext_ln31_25_fu_124_p1, zext_ln31_27_fu_144_p1, zext_ln31_29_fu_164_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            x_address0 <= zext_ln31_29_fu_164_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            x_address0 <= zext_ln31_27_fu_144_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            x_address0 <= zext_ln31_25_fu_124_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            x_address0 <= x_offset(13 - 1 downto 0);
        else 
            x_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    x_address1_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, zext_ln31_fu_114_p1, zext_ln31_26_fu_134_p1, zext_ln31_28_fu_154_p1, zext_ln31_30_fu_174_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            x_address1 <= zext_ln31_30_fu_174_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            x_address1 <= zext_ln31_28_fu_154_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            x_address1 <= zext_ln31_26_fu_134_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            x_address1 <= zext_ln31_fu_114_p1(13 - 1 downto 0);
        else 
            x_address1 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    x_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            x_ce0 <= ap_const_logic_1;
        else 
            x_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    x_ce1_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            x_ce1 <= ap_const_logic_1;
        else 
            x_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln31_25_fu_124_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_1_fu_119_p2),64));
    zext_ln31_26_fu_134_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_2_fu_129_p2),64));
    zext_ln31_27_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_3_fu_139_p2),64));
    zext_ln31_28_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_4_fu_149_p2),64));
    zext_ln31_29_fu_164_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_5_fu_159_p2),64));
    zext_ln31_30_fu_174_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_6_fu_169_p2),64));
    zext_ln31_fu_114_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_fu_108_p2),64));
end behav;