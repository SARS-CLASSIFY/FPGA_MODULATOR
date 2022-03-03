-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from firip_0002_rtl_core
-- VHDL created on Sat Jan 29 23:44:40 2022


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity firip_0002_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(11 downto 0);  -- sfix12
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(30 downto 0);  -- sfix31
        clk : in std_logic;
        areset : in std_logic
    );
end firip_0002_rtl_core;

architecture normal of firip_0002_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_count : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_run_preEnaQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_out : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_enableQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_ctrl : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_i : UNSIGNED (2 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count0_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (1 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_wa0_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_memr0_q_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr1_q_15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr2_q_15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr8_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr9_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr10_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr13_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr14_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr17_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr18_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr19_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr20_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr21_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr22_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr23_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr24_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr25_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr26_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr27_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr28_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr29_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr30_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr31_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr33_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr34_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr35_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr36_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr37_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr38_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr39_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr40_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr41_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr42_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr43_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr44_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr45_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr46_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr47_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr48_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr49_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr50_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_ca50_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_ca50_i : UNSIGNED (0 downto 0);
    attribute preserve of u0_m0_wo0_ca50_i : signal is true;
    signal d_u0_m0_wo0_ca50_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_ca50_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm4_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm5_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm6_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm7_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm8_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm9_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm10_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm13_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm14_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm17_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm18_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm19_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm20_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm21_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm22_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm23_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm24_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm25_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm26_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm27_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm28_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm29_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm30_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm31_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm32_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm33_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm34_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm35_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm36_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm37_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm38_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm39_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm40_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm41_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm42_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm43_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm44_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm45_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm46_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm47_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm48_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm49_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm50_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_50_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_49_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_48_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_47_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_46_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_45_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_44_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_43_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_42_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_41_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_40_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_39_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_38_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_37_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_34_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_30_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_26_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_22_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_14_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_10_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_a0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_5_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_5_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_5_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_5_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_13_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_13_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_13_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_13_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_15_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_15_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_15_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_15_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_17_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_17_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_17_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_17_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_18_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_18_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_18_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_18_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_19_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_19_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_19_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_19_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_20_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_20_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_20_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_20_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_21_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_21_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_21_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_21_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_22_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_22_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_22_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_22_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_23_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_23_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_23_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_23_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_24_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_24_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_24_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_24_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_8_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_8_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_8_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_9_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_9_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_9_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_9_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_10_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_10_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_10_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_10_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_11_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_11_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_11_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_11_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_12_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_12_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_12_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_12_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_4_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_4_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_4_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_4_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_5_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_5_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_5_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_5_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_2_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_2_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_2_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_2_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add4_1_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add4_1_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add4_1_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add4_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_lut_q : STD_LOGIC_VECTOR (1 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- u0_m0_wo0_run(ENABLEGENERATOR,13)@10 + 2
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enableQ;
    u0_m0_wo0_run_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(0 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(1 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(0, 1);
            u0_m0_wo0_run_enableQ <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(0) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-1);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enableQ <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(0 downto 0));
            ELSE
                u0_m0_wo0_run_enableQ <= "0";
            END IF;
            CASE (u0_m0_wo0_run_ctrl) IS
                WHEN "000" | "001" => u0_m0_wo0_run_inc := "00";
                WHEN "010" | "011" => u0_m0_wo0_run_inc := "11";
                WHEN "100" => u0_m0_wo0_run_inc := "00";
                WHEN "101" => u0_m0_wo0_run_inc := "01";
                WHEN "110" => u0_m0_wo0_run_inc := "11";
                WHEN "111" => u0_m0_wo0_run_inc := "00";
                WHEN OTHERS => 
            END CASE;
            u0_m0_wo0_run_count <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_run_count) + SIGNED(u0_m0_wo0_run_inc));
            u0_m0_wo0_run_q <= u0_m0_wo0_run_out;
        END IF;
    END PROCESS;
    u0_m0_wo0_run_preEnaQ <= u0_m0_wo0_run_count(1 downto 1);
    u0_m0_wo0_run_out <= u0_m0_wo0_run_preEnaQ and VCC_q;

    -- u0_m0_wo0_memread(DELAY,14)@12
    u0_m0_wo0_memread : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_run_q, xout => u0_m0_wo0_memread_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,16)@12
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_13(DELAY,243)@12 + 1
    d_u0_m0_wo0_compute_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_13_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_20(DELAY,244)@13 + 7
    d_u0_m0_wo0_compute_q_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_13_q, xout => d_u0_m0_wo0_compute_q_20_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,230)@20 + 1
    u0_m0_wo0_aseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(3 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "0000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_20_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "0000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 1;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(3 downto 3));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_21(DELAY,245)@20 + 1
    d_u0_m0_wo0_compute_q_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_20_q, xout => d_u0_m0_wo0_compute_q_21_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_memread_q_13(DELAY,242)@12 + 1
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra0_count0(COUNTER,21)@13
    -- low=0, high=5, step=1, init=1
    u0_m0_wo0_wi0_r0_ra0_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_i <= TO_UNSIGNED(1, 3);
            u0_m0_wo0_wi0_r0_ra0_count0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count0_i = TO_UNSIGNED(4, 3)) THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra0_count0_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i + 3;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_i, 3)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_lut(LOOKUP,19)@13
    u0_m0_wo0_wi0_r0_ra0_count0_lut_combproc: PROCESS (u0_m0_wo0_wi0_r0_ra0_count0_q)
    BEGIN
        -- Begin reserved scope level
        CASE (u0_m0_wo0_wi0_r0_ra0_count0_q) IS
            WHEN "000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "00";
            WHEN "001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "01";
            WHEN "010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "01";
            WHEN "011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "10";
            WHEN "100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "10";
            WHEN "101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "00";
            WHEN OTHERS => -- unreachable
                           u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count0_lutreg(REG,20)@13
    u0_m0_wo0_wi0_r0_ra0_count0_lutreg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q <= "00";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count0_lut_q);
            END IF;
        END IF;
    END PROCESS;

    -- d_xIn_0_13(DELAY,240)@10 + 3
    d_xIn_0_13 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => d_xIn_0_13_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_13(DELAY,241)@10 + 3
    d_in0_m0_wi0_wo0_assign_id1_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,22)@13
    -- low=0, high=2, step=1, init=1
    u0_m0_wo0_wi0_r0_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(1, 2);
            u0_m0_wo0_wi0_r0_wa0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_wa0_i = TO_UNSIGNED(1, 2)) THEN
                    u0_m0_wo0_wi0_r0_wa0_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_wa0_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_wa0_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 2;
                ELSE
                    u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 2)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,23)@13
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_13_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q;
    u0_m0_wo0_wi0_r0_memr0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 12,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 12,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone IV E"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_memr0_aa,
        data_a => u0_m0_wo0_wi0_r0_memr0_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_13_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr0_ab,
        q_b => u0_m0_wo0_wi0_r0_memr0_iq
    );
    u0_m0_wo0_wi0_r0_memr0_q <= u0_m0_wo0_wi0_r0_memr0_iq(11 downto 0);

    -- d_u0_m0_wo0_wi0_r0_memr0_q_16(DELAY,246)@13 + 3
    d_u0_m0_wo0_wi0_r0_memr0_q_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_memr0_q, xout => d_u0_m0_wo0_wi0_r0_memr0_q_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca50(COUNTER,74)@12
    -- low=0, high=1, step=1, init=0
    u0_m0_wo0_ca50_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca50_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                u0_m0_wo0_ca50_i <= u0_m0_wo0_ca50_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca50_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca50_i, 1)));

    -- d_u0_m0_wo0_ca50_q_14(DELAY,249)@12 + 2
    d_u0_m0_wo0_ca50_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_ca50_q, xout => d_u0_m0_wo0_ca50_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_ca50_q_15(DELAY,250)@14 + 1
    d_u0_m0_wo0_ca50_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_ca50_q_14_q, xout => d_u0_m0_wo0_ca50_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm0(LOOKUP,78)@15 + 1
    u0_m0_wo0_cm0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "000000100111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (d_u0_m0_wo0_ca50_q_15_q) IS
                WHEN "0" => u0_m0_wo0_cm0_q <= "000000100111";
                WHEN "1" => u0_m0_wo0_cm0_q <= "000001111011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_50(MULT,129)@16 + 2
    u0_m0_wo0_mtree_mult1_50_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_q);
    u0_m0_wo0_mtree_mult1_50_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_memr0_q_16_q);
    u0_m0_wo0_mtree_mult1_50_reset <= areset;
    u0_m0_wo0_mtree_mult1_50_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_50_a0,
        datab => u0_m0_wo0_mtree_mult1_50_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_50_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_50_s1
    );
    u0_m0_wo0_mtree_mult1_50_q <= u0_m0_wo0_mtree_mult1_50_s1;

    -- u0_m0_wo0_wi0_r0_delayr1(DELAY,24)@13
    u0_m0_wo0_wi0_r0_delayr1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_memr0_q, xout => u0_m0_wo0_wi0_r0_delayr1_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr1_q_15(DELAY,247)@13 + 2
    d_u0_m0_wo0_wi0_r0_delayr1_q_15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => d_u0_m0_wo0_wi0_r0_delayr1_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm1(LOOKUP,79)@14 + 1
    u0_m0_wo0_cm1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm1_q <= "111110001110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (d_u0_m0_wo0_ca50_q_14_q) IS
                WHEN "0" => u0_m0_wo0_cm1_q <= "111110001110";
                WHEN "1" => u0_m0_wo0_cm1_q <= "111110010101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm1_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_49(MULT,130)@15 + 2
    u0_m0_wo0_mtree_mult1_49_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm1_q);
    u0_m0_wo0_mtree_mult1_49_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr1_q_15_q);
    u0_m0_wo0_mtree_mult1_49_reset <= areset;
    u0_m0_wo0_mtree_mult1_49_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_49_a0,
        datab => u0_m0_wo0_mtree_mult1_49_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_49_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_49_s1
    );
    u0_m0_wo0_mtree_mult1_49_q <= u0_m0_wo0_mtree_mult1_49_s1;

    -- u0_m0_wo0_wi0_r0_delayr2(DELAY,25)@13
    u0_m0_wo0_wi0_r0_delayr2 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => u0_m0_wo0_wi0_r0_delayr2_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr2_q_15(DELAY,248)@13 + 2
    d_u0_m0_wo0_wi0_r0_delayr2_q_15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => d_u0_m0_wo0_wi0_r0_delayr2_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm2(LOOKUP,80)@14 + 1
    u0_m0_wo0_cm2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm2_q <= "000010100111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (d_u0_m0_wo0_ca50_q_14_q) IS
                WHEN "0" => u0_m0_wo0_cm2_q <= "000010100111";
                WHEN "1" => u0_m0_wo0_cm2_q <= "000000101111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm2_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_48(MULT,131)@15 + 2
    u0_m0_wo0_mtree_mult1_48_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm2_q);
    u0_m0_wo0_mtree_mult1_48_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr2_q_15_q);
    u0_m0_wo0_mtree_mult1_48_reset <= areset;
    u0_m0_wo0_mtree_mult1_48_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_48_a0,
        datab => u0_m0_wo0_mtree_mult1_48_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_48_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_48_s1
    );
    u0_m0_wo0_mtree_mult1_48_q <= u0_m0_wo0_mtree_mult1_48_s1;

    -- u0_m0_wo0_mtree_add0_24(ADD,204)@17 + 1
    u0_m0_wo0_mtree_add0_24_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_48_q(23)) & u0_m0_wo0_mtree_mult1_48_q));
    u0_m0_wo0_mtree_add0_24_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_49_q(23)) & u0_m0_wo0_mtree_mult1_49_q));
    u0_m0_wo0_mtree_add0_24_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_24_a) + SIGNED(u0_m0_wo0_mtree_add0_24_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_24_q <= u0_m0_wo0_mtree_add0_24_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_12(ADD,217)@18 + 1
    u0_m0_wo0_mtree_add1_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_24_q(24)) & u0_m0_wo0_mtree_add0_24_q));
    u0_m0_wo0_mtree_add1_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 24 => u0_m0_wo0_mtree_mult1_50_q(23)) & u0_m0_wo0_mtree_mult1_50_q));
    u0_m0_wo0_mtree_add1_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_12_a) + SIGNED(u0_m0_wo0_mtree_add1_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_12_q <= u0_m0_wo0_mtree_add1_12_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr3(DELAY,26)@13
    u0_m0_wo0_wi0_r0_delayr3 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => u0_m0_wo0_wi0_r0_delayr3_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm3(LOOKUP,81)@12 + 1
    u0_m0_wo0_cm3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm3_q <= "111101011001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm3_q <= "111101011001";
                WHEN "1" => u0_m0_wo0_cm3_q <= "000000111001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm3_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_47(MULT,132)@13 + 2
    u0_m0_wo0_mtree_mult1_47_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_q);
    u0_m0_wo0_mtree_mult1_47_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr3_q);
    u0_m0_wo0_mtree_mult1_47_reset <= areset;
    u0_m0_wo0_mtree_mult1_47_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_47_a0,
        datab => u0_m0_wo0_mtree_mult1_47_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_47_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_47_s1
    );
    u0_m0_wo0_mtree_mult1_47_q <= u0_m0_wo0_mtree_mult1_47_s1;

    -- u0_m0_wo0_wi0_r0_delayr4(DELAY,27)@13
    u0_m0_wo0_wi0_r0_delayr4 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => u0_m0_wo0_wi0_r0_delayr4_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm4(LOOKUP,82)@12 + 1
    u0_m0_wo0_cm4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm4_q <= "000001001111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm4_q <= "000001001111";
                WHEN "1" => u0_m0_wo0_cm4_q <= "111101000110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm4_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_46(MULT,133)@13 + 2
    u0_m0_wo0_mtree_mult1_46_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_q);
    u0_m0_wo0_mtree_mult1_46_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr4_q);
    u0_m0_wo0_mtree_mult1_46_reset <= areset;
    u0_m0_wo0_mtree_mult1_46_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_46_a0,
        datab => u0_m0_wo0_mtree_mult1_46_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_46_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_46_s1
    );
    u0_m0_wo0_mtree_mult1_46_q <= u0_m0_wo0_mtree_mult1_46_s1;

    -- u0_m0_wo0_mtree_add0_23(ADD,203)@15 + 1
    u0_m0_wo0_mtree_add0_23_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_46_q(23)) & u0_m0_wo0_mtree_mult1_46_q));
    u0_m0_wo0_mtree_add0_23_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_47_q(23)) & u0_m0_wo0_mtree_mult1_47_q));
    u0_m0_wo0_mtree_add0_23_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_23_a) + SIGNED(u0_m0_wo0_mtree_add0_23_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_23_q <= u0_m0_wo0_mtree_add0_23_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr5(DELAY,28)@13
    u0_m0_wo0_wi0_r0_delayr5 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => u0_m0_wo0_wi0_r0_delayr5_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm5(LOOKUP,83)@12 + 1
    u0_m0_wo0_cm5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm5_q <= "000001100011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm5_q <= "000001100011";
                WHEN "1" => u0_m0_wo0_cm5_q <= "000100100000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm5_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_45(MULT,134)@13 + 2
    u0_m0_wo0_mtree_mult1_45_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_q);
    u0_m0_wo0_mtree_mult1_45_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr5_q);
    u0_m0_wo0_mtree_mult1_45_reset <= areset;
    u0_m0_wo0_mtree_mult1_45_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_45_a0,
        datab => u0_m0_wo0_mtree_mult1_45_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_45_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_45_s1
    );
    u0_m0_wo0_mtree_mult1_45_q <= u0_m0_wo0_mtree_mult1_45_s1;

    -- u0_m0_wo0_wi0_r0_delayr6(DELAY,29)@13
    u0_m0_wo0_wi0_r0_delayr6 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => u0_m0_wo0_wi0_r0_delayr6_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm6(LOOKUP,84)@12 + 1
    u0_m0_wo0_cm6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm6_q <= "111010111111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm6_q <= "111010111111";
                WHEN "1" => u0_m0_wo0_cm6_q <= "111011011111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm6_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_44(MULT,135)@13 + 2
    u0_m0_wo0_mtree_mult1_44_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm6_q);
    u0_m0_wo0_mtree_mult1_44_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr6_q);
    u0_m0_wo0_mtree_mult1_44_reset <= areset;
    u0_m0_wo0_mtree_mult1_44_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_44_a0,
        datab => u0_m0_wo0_mtree_mult1_44_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_44_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_44_s1
    );
    u0_m0_wo0_mtree_mult1_44_q <= u0_m0_wo0_mtree_mult1_44_s1;

    -- u0_m0_wo0_mtree_add0_22(ADD,202)@15 + 1
    u0_m0_wo0_mtree_add0_22_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_44_q(23)) & u0_m0_wo0_mtree_mult1_44_q));
    u0_m0_wo0_mtree_add0_22_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_45_q(23)) & u0_m0_wo0_mtree_mult1_45_q));
    u0_m0_wo0_mtree_add0_22_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_22_a) + SIGNED(u0_m0_wo0_mtree_add0_22_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_22_q <= u0_m0_wo0_mtree_add0_22_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_11(ADD,216)@16 + 1
    u0_m0_wo0_mtree_add1_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_22_q(24)) & u0_m0_wo0_mtree_add0_22_q));
    u0_m0_wo0_mtree_add1_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_23_q(24)) & u0_m0_wo0_mtree_add0_23_q));
    u0_m0_wo0_mtree_add1_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_11_a) + SIGNED(u0_m0_wo0_mtree_add1_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_11_q <= u0_m0_wo0_mtree_add1_11_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr7(DELAY,30)@13
    u0_m0_wo0_wi0_r0_delayr7 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr6_q, xout => u0_m0_wo0_wi0_r0_delayr7_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm7(LOOKUP,85)@12 + 1
    u0_m0_wo0_cm7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm7_q <= "000111100011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm7_q <= "000111100011";
                WHEN "1" => u0_m0_wo0_cm7_q <= "000010000111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm7_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_43(MULT,136)@13 + 2
    u0_m0_wo0_mtree_mult1_43_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_q);
    u0_m0_wo0_mtree_mult1_43_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr7_q);
    u0_m0_wo0_mtree_mult1_43_reset <= areset;
    u0_m0_wo0_mtree_mult1_43_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_43_a0,
        datab => u0_m0_wo0_mtree_mult1_43_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_43_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_43_s1
    );
    u0_m0_wo0_mtree_mult1_43_q <= u0_m0_wo0_mtree_mult1_43_s1;

    -- u0_m0_wo0_wi0_r0_delayr8(DELAY,31)@13
    u0_m0_wo0_wi0_r0_delayr8 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => u0_m0_wo0_wi0_r0_delayr8_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm8(LOOKUP,86)@12 + 1
    u0_m0_wo0_cm8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm8_q <= "111000101100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm8_q <= "111000101100";
                WHEN "1" => u0_m0_wo0_cm8_q <= "000010100011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm8_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_42(MULT,137)@13 + 2
    u0_m0_wo0_mtree_mult1_42_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_q);
    u0_m0_wo0_mtree_mult1_42_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr8_q);
    u0_m0_wo0_mtree_mult1_42_reset <= areset;
    u0_m0_wo0_mtree_mult1_42_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_42_a0,
        datab => u0_m0_wo0_mtree_mult1_42_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_42_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_42_s1
    );
    u0_m0_wo0_mtree_mult1_42_q <= u0_m0_wo0_mtree_mult1_42_s1;

    -- u0_m0_wo0_mtree_add0_21(ADD,201)@15 + 1
    u0_m0_wo0_mtree_add0_21_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_42_q(23)) & u0_m0_wo0_mtree_mult1_42_q));
    u0_m0_wo0_mtree_add0_21_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_43_q(23)) & u0_m0_wo0_mtree_mult1_43_q));
    u0_m0_wo0_mtree_add0_21_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_21_a) + SIGNED(u0_m0_wo0_mtree_add0_21_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_21_q <= u0_m0_wo0_mtree_add0_21_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr9(DELAY,32)@13
    u0_m0_wo0_wi0_r0_delayr9 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => u0_m0_wo0_wi0_r0_delayr9_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm9(LOOKUP,87)@12 + 1
    u0_m0_wo0_cm9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm9_q <= "000011010011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm9_q <= "000011010011";
                WHEN "1" => u0_m0_wo0_cm9_q <= "111000000010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm9_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_41(MULT,138)@13 + 2
    u0_m0_wo0_mtree_mult1_41_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_q);
    u0_m0_wo0_mtree_mult1_41_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr9_q);
    u0_m0_wo0_mtree_mult1_41_reset <= areset;
    u0_m0_wo0_mtree_mult1_41_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_41_a0,
        datab => u0_m0_wo0_mtree_mult1_41_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_41_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_41_s1
    );
    u0_m0_wo0_mtree_mult1_41_q <= u0_m0_wo0_mtree_mult1_41_s1;

    -- u0_m0_wo0_wi0_r0_delayr10(DELAY,33)@13
    u0_m0_wo0_wi0_r0_delayr10 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => u0_m0_wo0_wi0_r0_delayr10_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm10(LOOKUP,88)@12 + 1
    u0_m0_wo0_cm10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm10_q <= "000011110110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm10_q <= "000011110110";
                WHEN "1" => u0_m0_wo0_cm10_q <= "001011100011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm10_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_40(MULT,139)@13 + 2
    u0_m0_wo0_mtree_mult1_40_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm10_q);
    u0_m0_wo0_mtree_mult1_40_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr10_q);
    u0_m0_wo0_mtree_mult1_40_reset <= areset;
    u0_m0_wo0_mtree_mult1_40_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_40_a0,
        datab => u0_m0_wo0_mtree_mult1_40_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_40_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_40_s1
    );
    u0_m0_wo0_mtree_mult1_40_q <= u0_m0_wo0_mtree_mult1_40_s1;

    -- u0_m0_wo0_mtree_add0_20(ADD,200)@15 + 1
    u0_m0_wo0_mtree_add0_20_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_40_q(23)) & u0_m0_wo0_mtree_mult1_40_q));
    u0_m0_wo0_mtree_add0_20_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_41_q(23)) & u0_m0_wo0_mtree_mult1_41_q));
    u0_m0_wo0_mtree_add0_20_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_20_a) + SIGNED(u0_m0_wo0_mtree_add0_20_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_20_q <= u0_m0_wo0_mtree_add0_20_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_10(ADD,215)@16 + 1
    u0_m0_wo0_mtree_add1_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_20_q(24)) & u0_m0_wo0_mtree_add0_20_q));
    u0_m0_wo0_mtree_add1_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_21_q(24)) & u0_m0_wo0_mtree_add0_21_q));
    u0_m0_wo0_mtree_add1_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_10_a) + SIGNED(u0_m0_wo0_mtree_add1_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_10_q <= u0_m0_wo0_mtree_add1_10_o(25 downto 0);

    -- u0_m0_wo0_mtree_add2_5(ADD,223)@17 + 1
    u0_m0_wo0_mtree_add2_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_10_q(25)) & u0_m0_wo0_mtree_add1_10_q));
    u0_m0_wo0_mtree_add2_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_11_q(25)) & u0_m0_wo0_mtree_add1_11_q));
    u0_m0_wo0_mtree_add2_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_5_a) + SIGNED(u0_m0_wo0_mtree_add2_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_5_q <= u0_m0_wo0_mtree_add2_5_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr11(DELAY,34)@13
    u0_m0_wo0_wi0_r0_delayr11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr10_q, xout => u0_m0_wo0_wi0_r0_delayr11_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm11(LOOKUP,89)@12 + 1
    u0_m0_wo0_cm11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm11_q <= "110100011110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm11_q <= "110100011110";
                WHEN "1" => u0_m0_wo0_cm11_q <= "110101001110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm11_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_39(MULT,140)@13 + 2
    u0_m0_wo0_mtree_mult1_39_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_q);
    u0_m0_wo0_mtree_mult1_39_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr11_q);
    u0_m0_wo0_mtree_mult1_39_reset <= areset;
    u0_m0_wo0_mtree_mult1_39_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_39_a0,
        datab => u0_m0_wo0_mtree_mult1_39_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_39_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_39_s1
    );
    u0_m0_wo0_mtree_mult1_39_q <= u0_m0_wo0_mtree_mult1_39_s1;

    -- u0_m0_wo0_wi0_r0_delayr12(DELAY,35)@13
    u0_m0_wo0_wi0_r0_delayr12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => u0_m0_wo0_wi0_r0_delayr12_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm12(LOOKUP,90)@12 + 1
    u0_m0_wo0_cm12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm12_q <= "010000001010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm12_q <= "010000001010";
                WHEN "1" => u0_m0_wo0_cm12_q <= "000100101100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm12_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_38(MULT,141)@13 + 2
    u0_m0_wo0_mtree_mult1_38_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm12_q);
    u0_m0_wo0_mtree_mult1_38_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr12_q);
    u0_m0_wo0_mtree_mult1_38_reset <= areset;
    u0_m0_wo0_mtree_mult1_38_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_38_a0,
        datab => u0_m0_wo0_mtree_mult1_38_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_38_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_38_s1
    );
    u0_m0_wo0_mtree_mult1_38_q <= u0_m0_wo0_mtree_mult1_38_s1;

    -- u0_m0_wo0_mtree_add0_19(ADD,199)@15 + 1
    u0_m0_wo0_mtree_add0_19_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_38_q(23)) & u0_m0_wo0_mtree_mult1_38_q));
    u0_m0_wo0_mtree_add0_19_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_39_q(23)) & u0_m0_wo0_mtree_mult1_39_q));
    u0_m0_wo0_mtree_add0_19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_19_a) + SIGNED(u0_m0_wo0_mtree_add0_19_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_19_q <= u0_m0_wo0_mtree_add0_19_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr13(DELAY,36)@13
    u0_m0_wo0_wi0_r0_delayr13 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => u0_m0_wo0_wi0_r0_delayr13_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm13(LOOKUP,91)@12 + 1
    u0_m0_wo0_cm13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm13_q <= "110001011001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm13_q <= "110001011001";
                WHEN "1" => u0_m0_wo0_cm13_q <= "000101010010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm13_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_37(MULT,142)@13 + 2
    u0_m0_wo0_mtree_mult1_37_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm13_q);
    u0_m0_wo0_mtree_mult1_37_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr13_q);
    u0_m0_wo0_mtree_mult1_37_reset <= areset;
    u0_m0_wo0_mtree_mult1_37_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_37_a0,
        datab => u0_m0_wo0_mtree_mult1_37_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_37_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_37_s1
    );
    u0_m0_wo0_mtree_mult1_37_q <= u0_m0_wo0_mtree_mult1_37_s1;

    -- u0_m0_wo0_wi0_r0_delayr14(DELAY,37)@13
    u0_m0_wo0_wi0_r0_delayr14 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => u0_m0_wo0_wi0_r0_delayr14_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm14(LOOKUP,92)@12 + 1
    u0_m0_wo0_cm14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm14_q <= "000110001010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm14_q <= "000110001010";
                WHEN "1" => u0_m0_wo0_cm14_q <= "110000101000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm14_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_36(MULT,143)@13 + 2
    u0_m0_wo0_mtree_mult1_36_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm14_q);
    u0_m0_wo0_mtree_mult1_36_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr14_q);
    u0_m0_wo0_mtree_mult1_36_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_36_a0,
        datab => u0_m0_wo0_mtree_mult1_36_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_36_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_36_s1
    );
    u0_m0_wo0_mtree_mult1_36_q <= u0_m0_wo0_mtree_mult1_36_s1;

    -- u0_m0_wo0_mtree_add0_18(ADD,198)@15 + 1
    u0_m0_wo0_mtree_add0_18_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_36_q(23)) & u0_m0_wo0_mtree_mult1_36_q));
    u0_m0_wo0_mtree_add0_18_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_37_q(23)) & u0_m0_wo0_mtree_mult1_37_q));
    u0_m0_wo0_mtree_add0_18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_18_a) + SIGNED(u0_m0_wo0_mtree_add0_18_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_18_q <= u0_m0_wo0_mtree_add0_18_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_9(ADD,214)@16 + 1
    u0_m0_wo0_mtree_add1_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_18_q(24)) & u0_m0_wo0_mtree_add0_18_q));
    u0_m0_wo0_mtree_add1_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_19_q(24)) & u0_m0_wo0_mtree_add0_19_q));
    u0_m0_wo0_mtree_add1_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_9_a) + SIGNED(u0_m0_wo0_mtree_add1_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_9_q <= u0_m0_wo0_mtree_add1_9_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr15(DELAY,38)@13
    u0_m0_wo0_wi0_r0_delayr15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr14_q, xout => u0_m0_wo0_wi0_r0_delayr15_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm15(LOOKUP,93)@12 + 1
    u0_m0_wo0_cm15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm15_q <= "000110101111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm15_q <= "000110101111";
                WHEN "1" => u0_m0_wo0_cm15_q <= "010100111010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm15_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_35(MULT,144)@13 + 2
    u0_m0_wo0_mtree_mult1_35_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm15_q);
    u0_m0_wo0_mtree_mult1_35_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr15_q);
    u0_m0_wo0_mtree_mult1_35_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_35_a0,
        datab => u0_m0_wo0_mtree_mult1_35_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_35_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_35_s1
    );
    u0_m0_wo0_mtree_mult1_35_q <= u0_m0_wo0_mtree_mult1_35_s1;

    -- u0_m0_wo0_wi0_r0_delayr16(DELAY,39)@13
    u0_m0_wo0_wi0_r0_delayr16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr15_q, xout => u0_m0_wo0_wi0_r0_delayr16_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm16(LOOKUP,94)@12 + 1
    u0_m0_wo0_cm16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm16_q <= "101100111001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm16_q <= "101100111001";
                WHEN "1" => u0_m0_wo0_cm16_q <= "101101100111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm16_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_34(MULT,145)@13 + 2
    u0_m0_wo0_mtree_mult1_34_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm16_q);
    u0_m0_wo0_mtree_mult1_34_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr16_q);
    u0_m0_wo0_mtree_mult1_34_reset <= areset;
    u0_m0_wo0_mtree_mult1_34_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_34_a0,
        datab => u0_m0_wo0_mtree_mult1_34_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_34_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_34_s1
    );
    u0_m0_wo0_mtree_mult1_34_q <= u0_m0_wo0_mtree_mult1_34_s1;

    -- u0_m0_wo0_mtree_add0_17(ADD,197)@15 + 1
    u0_m0_wo0_mtree_add0_17_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_34_q(23)) & u0_m0_wo0_mtree_mult1_34_q));
    u0_m0_wo0_mtree_add0_17_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_35_q(23)) & u0_m0_wo0_mtree_mult1_35_q));
    u0_m0_wo0_mtree_add0_17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_17_a) + SIGNED(u0_m0_wo0_mtree_add0_17_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_17_q <= u0_m0_wo0_mtree_add0_17_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr17(DELAY,40)@13
    u0_m0_wo0_wi0_r0_delayr17 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => u0_m0_wo0_wi0_r0_delayr17_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm17(LOOKUP,95)@12 + 1
    u0_m0_wo0_cm17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm17_q <= "011001010011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm17_q <= "011001010011";
                WHEN "1" => u0_m0_wo0_cm17_q <= "000111100100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm17_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_33(MULT,146)@13 + 2
    u0_m0_wo0_mtree_mult1_33_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm17_q);
    u0_m0_wo0_mtree_mult1_33_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr17_q);
    u0_m0_wo0_mtree_mult1_33_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_33_a0,
        datab => u0_m0_wo0_mtree_mult1_33_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_33_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_33_s1
    );
    u0_m0_wo0_mtree_mult1_33_q <= u0_m0_wo0_mtree_mult1_33_s1;

    -- u0_m0_wo0_wi0_r0_delayr18(DELAY,41)@13
    u0_m0_wo0_wi0_r0_delayr18 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr17_q, xout => u0_m0_wo0_wi0_r0_delayr18_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm18(LOOKUP,96)@12 + 1
    u0_m0_wo0_cm18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm18_q <= "101010010010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm18_q <= "101010010010";
                WHEN "1" => u0_m0_wo0_cm18_q <= "001000000100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm18_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_32(MULT,147)@13 + 2
    u0_m0_wo0_mtree_mult1_32_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm18_q);
    u0_m0_wo0_mtree_mult1_32_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr18_q);
    u0_m0_wo0_mtree_mult1_32_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_32_a0,
        datab => u0_m0_wo0_mtree_mult1_32_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_32_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_32_s1
    );
    u0_m0_wo0_mtree_mult1_32_q <= u0_m0_wo0_mtree_mult1_32_s1;

    -- u0_m0_wo0_mtree_add0_16(ADD,196)@15 + 1
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_32_q(23)) & u0_m0_wo0_mtree_mult1_32_q));
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_33_q(23)) & u0_m0_wo0_mtree_mult1_33_q));
    u0_m0_wo0_mtree_add0_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_8(ADD,213)@16 + 1
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_16_q(24)) & u0_m0_wo0_mtree_add0_16_q));
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_17_q(24)) & u0_m0_wo0_mtree_add0_17_q));
    u0_m0_wo0_mtree_add1_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(25 downto 0);

    -- u0_m0_wo0_mtree_add2_4(ADD,222)@17 + 1
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_8_q(25)) & u0_m0_wo0_mtree_add1_8_q));
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_9_q(25)) & u0_m0_wo0_mtree_add1_9_q));
    u0_m0_wo0_mtree_add2_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(26 downto 0);

    -- u0_m0_wo0_mtree_add3_2(ADD,226)@18 + 1
    u0_m0_wo0_mtree_add3_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add2_4_q(26)) & u0_m0_wo0_mtree_add2_4_q));
    u0_m0_wo0_mtree_add3_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add2_5_q(26)) & u0_m0_wo0_mtree_add2_5_q));
    u0_m0_wo0_mtree_add3_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_2_a) + SIGNED(u0_m0_wo0_mtree_add3_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_2_q <= u0_m0_wo0_mtree_add3_2_o(27 downto 0);

    -- u0_m0_wo0_mtree_add4_1(ADD,228)@19 + 1
    u0_m0_wo0_mtree_add4_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add3_2_q(27)) & u0_m0_wo0_mtree_add3_2_q));
    u0_m0_wo0_mtree_add4_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 26 => u0_m0_wo0_mtree_add1_12_q(25)) & u0_m0_wo0_mtree_add1_12_q));
    u0_m0_wo0_mtree_add4_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_1_a) + SIGNED(u0_m0_wo0_mtree_add4_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_1_q <= u0_m0_wo0_mtree_add4_1_o(28 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr19(DELAY,42)@13
    u0_m0_wo0_wi0_r0_delayr19 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => u0_m0_wo0_wi0_r0_delayr19_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm19(LOOKUP,97)@12 + 1
    u0_m0_wo0_cm19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm19_q <= "001000101110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm19_q <= "001000101110";
                WHEN "1" => u0_m0_wo0_cm19_q <= "101001101101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm19_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_31(MULT,148)@13 + 2
    u0_m0_wo0_mtree_mult1_31_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm19_q);
    u0_m0_wo0_mtree_mult1_31_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr19_q);
    u0_m0_wo0_mtree_mult1_31_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_31_a0,
        datab => u0_m0_wo0_mtree_mult1_31_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_31_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_31_s1
    );
    u0_m0_wo0_mtree_mult1_31_q <= u0_m0_wo0_mtree_mult1_31_s1;

    -- u0_m0_wo0_wi0_r0_delayr20(DELAY,43)@13
    u0_m0_wo0_wi0_r0_delayr20 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr19_q, xout => u0_m0_wo0_wi0_r0_delayr20_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm20(LOOKUP,98)@12 + 1
    u0_m0_wo0_cm20_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm20_q <= "001001000110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm20_q <= "001001000110";
                WHEN "1" => u0_m0_wo0_cm20_q <= "011100110111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm20_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_30(MULT,149)@13 + 2
    u0_m0_wo0_mtree_mult1_30_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm20_q);
    u0_m0_wo0_mtree_mult1_30_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr20_q);
    u0_m0_wo0_mtree_mult1_30_reset <= areset;
    u0_m0_wo0_mtree_mult1_30_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_30_a0,
        datab => u0_m0_wo0_mtree_mult1_30_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_30_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_30_s1
    );
    u0_m0_wo0_mtree_mult1_30_q <= u0_m0_wo0_mtree_mult1_30_s1;

    -- u0_m0_wo0_mtree_add0_15(ADD,195)@15 + 1
    u0_m0_wo0_mtree_add0_15_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_30_q(23)) & u0_m0_wo0_mtree_mult1_30_q));
    u0_m0_wo0_mtree_add0_15_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_31_q(23)) & u0_m0_wo0_mtree_mult1_31_q));
    u0_m0_wo0_mtree_add0_15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_15_a) + SIGNED(u0_m0_wo0_mtree_add0_15_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_15_q <= u0_m0_wo0_mtree_add0_15_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr21(DELAY,44)@13
    u0_m0_wo0_wi0_r0_delayr21 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr20_q, xout => u0_m0_wo0_wi0_r0_delayr21_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm21(LOOKUP,99)@12 + 1
    u0_m0_wo0_cm21_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm21_q <= "100111011001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm21_q <= "100111011001";
                WHEN "1" => u0_m0_wo0_cm21_q <= "100111110001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm21_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_29(MULT,150)@13 + 2
    u0_m0_wo0_mtree_mult1_29_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm21_q);
    u0_m0_wo0_mtree_mult1_29_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr21_q);
    u0_m0_wo0_mtree_mult1_29_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_29_a0,
        datab => u0_m0_wo0_mtree_mult1_29_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_29_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_29_s1
    );
    u0_m0_wo0_mtree_mult1_29_q <= u0_m0_wo0_mtree_mult1_29_s1;

    -- u0_m0_wo0_wi0_r0_delayr22(DELAY,45)@13
    u0_m0_wo0_wi0_r0_delayr22 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => u0_m0_wo0_wi0_r0_delayr22_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm22(LOOKUP,100)@12 + 1
    u0_m0_wo0_cm22_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm22_q <= "011111001011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm22_q <= "011111001011";
                WHEN "1" => u0_m0_wo0_cm22_q <= "001001100001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm22_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_28(MULT,151)@13 + 2
    u0_m0_wo0_mtree_mult1_28_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm22_q);
    u0_m0_wo0_mtree_mult1_28_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr22_q);
    u0_m0_wo0_mtree_mult1_28_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_28_a0,
        datab => u0_m0_wo0_mtree_mult1_28_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_28_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_28_s1
    );
    u0_m0_wo0_mtree_mult1_28_q <= u0_m0_wo0_mtree_mult1_28_s1;

    -- u0_m0_wo0_mtree_add0_14(ADD,194)@15 + 1
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_28_q(23)) & u0_m0_wo0_mtree_mult1_28_q));
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_29_q(23)) & u0_m0_wo0_mtree_mult1_29_q));
    u0_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,212)@16 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_14_q(24)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_15_q(24)) & u0_m0_wo0_mtree_add0_15_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr23(DELAY,46)@13
    u0_m0_wo0_wi0_r0_delayr23 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr22_q, xout => u0_m0_wo0_wi0_r0_delayr23_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm23(LOOKUP,101)@12 + 1
    u0_m0_wo0_cm23_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm23_q <= "100110011000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm23_q <= "100110011000";
                WHEN "1" => u0_m0_wo0_cm23_q <= "001001101110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm23_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_27(MULT,152)@13 + 2
    u0_m0_wo0_mtree_mult1_27_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm23_q);
    u0_m0_wo0_mtree_mult1_27_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr23_q);
    u0_m0_wo0_mtree_mult1_27_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_27_a0,
        datab => u0_m0_wo0_mtree_mult1_27_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_27_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_27_s1
    );
    u0_m0_wo0_mtree_mult1_27_q <= u0_m0_wo0_mtree_mult1_27_s1;

    -- u0_m0_wo0_wi0_r0_delayr24(DELAY,47)@13
    u0_m0_wo0_wi0_r0_delayr24 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr23_q, xout => u0_m0_wo0_wi0_r0_delayr24_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm24(LOOKUP,102)@12 + 1
    u0_m0_wo0_cm24_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm24_q <= "001001110111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm24_q <= "001001110111";
                WHEN "1" => u0_m0_wo0_cm24_q <= "100110001111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm24_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_26(MULT,153)@13 + 2
    u0_m0_wo0_mtree_mult1_26_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm24_q);
    u0_m0_wo0_mtree_mult1_26_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr24_q);
    u0_m0_wo0_mtree_mult1_26_reset <= areset;
    u0_m0_wo0_mtree_mult1_26_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_26_a0,
        datab => u0_m0_wo0_mtree_mult1_26_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_26_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_26_s1
    );
    u0_m0_wo0_mtree_mult1_26_q <= u0_m0_wo0_mtree_mult1_26_s1;

    -- u0_m0_wo0_mtree_add0_13(ADD,193)@15 + 1
    u0_m0_wo0_mtree_add0_13_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_26_q(23)) & u0_m0_wo0_mtree_mult1_26_q));
    u0_m0_wo0_mtree_add0_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_27_q(23)) & u0_m0_wo0_mtree_mult1_27_q));
    u0_m0_wo0_mtree_add0_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_13_a) + SIGNED(u0_m0_wo0_mtree_add0_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_13_q <= u0_m0_wo0_mtree_add0_13_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr25(DELAY,48)@13
    u0_m0_wo0_wi0_r0_delayr25 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr24_q, xout => u0_m0_wo0_wi0_r0_delayr25_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm25(LOOKUP,103)@12 + 1
    u0_m0_wo0_cm25_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm25_q <= "001001110111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm25_q <= "001001110111";
                WHEN "1" => u0_m0_wo0_cm25_q <= "011111111111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm25_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_25(MULT,154)@13 + 2
    u0_m0_wo0_mtree_mult1_25_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm25_q);
    u0_m0_wo0_mtree_mult1_25_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr25_q);
    u0_m0_wo0_mtree_mult1_25_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_25_a0,
        datab => u0_m0_wo0_mtree_mult1_25_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_25_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_25_s1
    );
    u0_m0_wo0_mtree_mult1_25_q <= u0_m0_wo0_mtree_mult1_25_s1;

    -- u0_m0_wo0_wi0_r0_delayr26(DELAY,49)@13
    u0_m0_wo0_wi0_r0_delayr26 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr25_q, xout => u0_m0_wo0_wi0_r0_delayr26_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm26(LOOKUP,104)@12 + 1
    u0_m0_wo0_cm26_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm26_q <= "100110011000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm26_q <= "100110011000";
                WHEN "1" => u0_m0_wo0_cm26_q <= "100110001111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm26_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_24(MULT,155)@13 + 2
    u0_m0_wo0_mtree_mult1_24_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm26_q);
    u0_m0_wo0_mtree_mult1_24_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr26_q);
    u0_m0_wo0_mtree_mult1_24_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_24_a0,
        datab => u0_m0_wo0_mtree_mult1_24_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_24_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_24_s1
    );
    u0_m0_wo0_mtree_mult1_24_q <= u0_m0_wo0_mtree_mult1_24_s1;

    -- u0_m0_wo0_mtree_add0_12(ADD,192)@15 + 1
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_24_q(23)) & u0_m0_wo0_mtree_mult1_24_q));
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_25_q(23)) & u0_m0_wo0_mtree_mult1_25_q));
    u0_m0_wo0_mtree_add0_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,211)@16 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_12_q(24)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_13_q(24)) & u0_m0_wo0_mtree_add0_13_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(25 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,221)@17 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_6_q(25)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_7_q(25)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr27(DELAY,50)@13
    u0_m0_wo0_wi0_r0_delayr27 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr26_q, xout => u0_m0_wo0_wi0_r0_delayr27_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm27(LOOKUP,105)@12 + 1
    u0_m0_wo0_cm27_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm27_q <= "011111001011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm27_q <= "011111001011";
                WHEN "1" => u0_m0_wo0_cm27_q <= "001001101110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm27_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_23(MULT,156)@13 + 2
    u0_m0_wo0_mtree_mult1_23_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm27_q);
    u0_m0_wo0_mtree_mult1_23_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr27_q);
    u0_m0_wo0_mtree_mult1_23_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_23_a0,
        datab => u0_m0_wo0_mtree_mult1_23_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_23_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_23_s1
    );
    u0_m0_wo0_mtree_mult1_23_q <= u0_m0_wo0_mtree_mult1_23_s1;

    -- u0_m0_wo0_wi0_r0_delayr28(DELAY,51)@13
    u0_m0_wo0_wi0_r0_delayr28 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr27_q, xout => u0_m0_wo0_wi0_r0_delayr28_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm28(LOOKUP,106)@12 + 1
    u0_m0_wo0_cm28_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm28_q <= "100111011001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm28_q <= "100111011001";
                WHEN "1" => u0_m0_wo0_cm28_q <= "001001100001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm28_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_22(MULT,157)@13 + 2
    u0_m0_wo0_mtree_mult1_22_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm28_q);
    u0_m0_wo0_mtree_mult1_22_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr28_q);
    u0_m0_wo0_mtree_mult1_22_reset <= areset;
    u0_m0_wo0_mtree_mult1_22_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_22_a0,
        datab => u0_m0_wo0_mtree_mult1_22_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_22_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_22_s1
    );
    u0_m0_wo0_mtree_mult1_22_q <= u0_m0_wo0_mtree_mult1_22_s1;

    -- u0_m0_wo0_mtree_add0_11(ADD,191)@15 + 1
    u0_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_22_q(23)) & u0_m0_wo0_mtree_mult1_22_q));
    u0_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_23_q(23)) & u0_m0_wo0_mtree_mult1_23_q));
    u0_m0_wo0_mtree_add0_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_11_a) + SIGNED(u0_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr29(DELAY,52)@13
    u0_m0_wo0_wi0_r0_delayr29 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr28_q, xout => u0_m0_wo0_wi0_r0_delayr29_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm29(LOOKUP,107)@12 + 1
    u0_m0_wo0_cm29_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm29_q <= "001001000110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm29_q <= "001001000110";
                WHEN "1" => u0_m0_wo0_cm29_q <= "100111110001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm29_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_21(MULT,158)@13 + 2
    u0_m0_wo0_mtree_mult1_21_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm29_q);
    u0_m0_wo0_mtree_mult1_21_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr29_q);
    u0_m0_wo0_mtree_mult1_21_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_21_a0,
        datab => u0_m0_wo0_mtree_mult1_21_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_21_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_21_s1
    );
    u0_m0_wo0_mtree_mult1_21_q <= u0_m0_wo0_mtree_mult1_21_s1;

    -- u0_m0_wo0_wi0_r0_delayr30(DELAY,53)@13
    u0_m0_wo0_wi0_r0_delayr30 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr29_q, xout => u0_m0_wo0_wi0_r0_delayr30_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm30(LOOKUP,108)@12 + 1
    u0_m0_wo0_cm30_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm30_q <= "001000101110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm30_q <= "001000101110";
                WHEN "1" => u0_m0_wo0_cm30_q <= "011100110111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm30_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_20(MULT,159)@13 + 2
    u0_m0_wo0_mtree_mult1_20_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm30_q);
    u0_m0_wo0_mtree_mult1_20_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr30_q);
    u0_m0_wo0_mtree_mult1_20_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_20_a0,
        datab => u0_m0_wo0_mtree_mult1_20_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_20_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_20_s1
    );
    u0_m0_wo0_mtree_mult1_20_q <= u0_m0_wo0_mtree_mult1_20_s1;

    -- u0_m0_wo0_mtree_add0_10(ADD,190)@15 + 1
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_20_q(23)) & u0_m0_wo0_mtree_mult1_20_q));
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_21_q(23)) & u0_m0_wo0_mtree_mult1_21_q));
    u0_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,210)@16 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_10_q(24)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_11_q(24)) & u0_m0_wo0_mtree_add0_11_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr31(DELAY,54)@13
    u0_m0_wo0_wi0_r0_delayr31 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr30_q, xout => u0_m0_wo0_wi0_r0_delayr31_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm31(LOOKUP,109)@12 + 1
    u0_m0_wo0_cm31_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm31_q <= "101010010010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm31_q <= "101010010010";
                WHEN "1" => u0_m0_wo0_cm31_q <= "101001101101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm31_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_19(MULT,160)@13 + 2
    u0_m0_wo0_mtree_mult1_19_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm31_q);
    u0_m0_wo0_mtree_mult1_19_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr31_q);
    u0_m0_wo0_mtree_mult1_19_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_19_a0,
        datab => u0_m0_wo0_mtree_mult1_19_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_19_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_19_s1
    );
    u0_m0_wo0_mtree_mult1_19_q <= u0_m0_wo0_mtree_mult1_19_s1;

    -- u0_m0_wo0_wi0_r0_delayr32(DELAY,55)@13
    u0_m0_wo0_wi0_r0_delayr32 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr31_q, xout => u0_m0_wo0_wi0_r0_delayr32_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm32(LOOKUP,110)@12 + 1
    u0_m0_wo0_cm32_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm32_q <= "011001010011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm32_q <= "011001010011";
                WHEN "1" => u0_m0_wo0_cm32_q <= "001000000100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm32_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_18(MULT,161)@13 + 2
    u0_m0_wo0_mtree_mult1_18_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm32_q);
    u0_m0_wo0_mtree_mult1_18_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_q);
    u0_m0_wo0_mtree_mult1_18_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_18_a0,
        datab => u0_m0_wo0_mtree_mult1_18_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_18_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_18_s1
    );
    u0_m0_wo0_mtree_mult1_18_q <= u0_m0_wo0_mtree_mult1_18_s1;

    -- u0_m0_wo0_mtree_add0_9(ADD,189)@15 + 1
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_18_q(23)) & u0_m0_wo0_mtree_mult1_18_q));
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_19_q(23)) & u0_m0_wo0_mtree_mult1_19_q));
    u0_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr33(DELAY,56)@13
    u0_m0_wo0_wi0_r0_delayr33 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr32_q, xout => u0_m0_wo0_wi0_r0_delayr33_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm33(LOOKUP,111)@12 + 1
    u0_m0_wo0_cm33_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm33_q <= "101100111001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm33_q <= "101100111001";
                WHEN "1" => u0_m0_wo0_cm33_q <= "000111100100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm33_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_17(MULT,162)@13 + 2
    u0_m0_wo0_mtree_mult1_17_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm33_q);
    u0_m0_wo0_mtree_mult1_17_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr33_q);
    u0_m0_wo0_mtree_mult1_17_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_17_a0,
        datab => u0_m0_wo0_mtree_mult1_17_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_17_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_17_s1
    );
    u0_m0_wo0_mtree_mult1_17_q <= u0_m0_wo0_mtree_mult1_17_s1;

    -- u0_m0_wo0_wi0_r0_delayr34(DELAY,57)@13
    u0_m0_wo0_wi0_r0_delayr34 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr33_q, xout => u0_m0_wo0_wi0_r0_delayr34_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm34(LOOKUP,112)@12 + 1
    u0_m0_wo0_cm34_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm34_q <= "000110101111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm34_q <= "000110101111";
                WHEN "1" => u0_m0_wo0_cm34_q <= "101101100111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm34_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_16(MULT,163)@13 + 2
    u0_m0_wo0_mtree_mult1_16_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm34_q);
    u0_m0_wo0_mtree_mult1_16_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr34_q);
    u0_m0_wo0_mtree_mult1_16_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_16_a0,
        datab => u0_m0_wo0_mtree_mult1_16_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_16_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_16_s1
    );
    u0_m0_wo0_mtree_mult1_16_q <= u0_m0_wo0_mtree_mult1_16_s1;

    -- u0_m0_wo0_mtree_add0_8(ADD,188)@15 + 1
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_16_q(23)) & u0_m0_wo0_mtree_mult1_16_q));
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_17_q(23)) & u0_m0_wo0_mtree_mult1_17_q));
    u0_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,209)@16 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_8_q(24)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_9_q(24)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(25 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,220)@17 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_4_q(25)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_5_q(25)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(26 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,225)@18 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add2_2_q(26)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add2_3_q(26)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(27 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr35(DELAY,58)@13
    u0_m0_wo0_wi0_r0_delayr35 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr34_q, xout => u0_m0_wo0_wi0_r0_delayr35_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm35(LOOKUP,113)@12 + 1
    u0_m0_wo0_cm35_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm35_q <= "000110001010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm35_q <= "000110001010";
                WHEN "1" => u0_m0_wo0_cm35_q <= "010100111010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm35_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_15(MULT,164)@13 + 2
    u0_m0_wo0_mtree_mult1_15_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm35_q);
    u0_m0_wo0_mtree_mult1_15_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr35_q);
    u0_m0_wo0_mtree_mult1_15_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_15_a0,
        datab => u0_m0_wo0_mtree_mult1_15_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_15_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_15_s1
    );
    u0_m0_wo0_mtree_mult1_15_q <= u0_m0_wo0_mtree_mult1_15_s1;

    -- u0_m0_wo0_wi0_r0_delayr36(DELAY,59)@13
    u0_m0_wo0_wi0_r0_delayr36 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr35_q, xout => u0_m0_wo0_wi0_r0_delayr36_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm36(LOOKUP,114)@12 + 1
    u0_m0_wo0_cm36_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm36_q <= "110001011001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm36_q <= "110001011001";
                WHEN "1" => u0_m0_wo0_cm36_q <= "110000101000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm36_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_14(MULT,165)@13 + 2
    u0_m0_wo0_mtree_mult1_14_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm36_q);
    u0_m0_wo0_mtree_mult1_14_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr36_q);
    u0_m0_wo0_mtree_mult1_14_reset <= areset;
    u0_m0_wo0_mtree_mult1_14_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_14_a0,
        datab => u0_m0_wo0_mtree_mult1_14_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_14_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_14_s1
    );
    u0_m0_wo0_mtree_mult1_14_q <= u0_m0_wo0_mtree_mult1_14_s1;

    -- u0_m0_wo0_mtree_add0_7(ADD,187)@15 + 1
    u0_m0_wo0_mtree_add0_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_14_q(23)) & u0_m0_wo0_mtree_mult1_14_q));
    u0_m0_wo0_mtree_add0_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_15_q(23)) & u0_m0_wo0_mtree_mult1_15_q));
    u0_m0_wo0_mtree_add0_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_7_a) + SIGNED(u0_m0_wo0_mtree_add0_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr37(DELAY,60)@13
    u0_m0_wo0_wi0_r0_delayr37 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr36_q, xout => u0_m0_wo0_wi0_r0_delayr37_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm37(LOOKUP,115)@12 + 1
    u0_m0_wo0_cm37_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm37_q <= "010000001010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm37_q <= "010000001010";
                WHEN "1" => u0_m0_wo0_cm37_q <= "000101010010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm37_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_13(MULT,166)@13 + 2
    u0_m0_wo0_mtree_mult1_13_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm37_q);
    u0_m0_wo0_mtree_mult1_13_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr37_q);
    u0_m0_wo0_mtree_mult1_13_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_13_a0,
        datab => u0_m0_wo0_mtree_mult1_13_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_13_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_13_s1
    );
    u0_m0_wo0_mtree_mult1_13_q <= u0_m0_wo0_mtree_mult1_13_s1;

    -- u0_m0_wo0_wi0_r0_delayr38(DELAY,61)@13
    u0_m0_wo0_wi0_r0_delayr38 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr37_q, xout => u0_m0_wo0_wi0_r0_delayr38_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm38(LOOKUP,116)@12 + 1
    u0_m0_wo0_cm38_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm38_q <= "110100011110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm38_q <= "110100011110";
                WHEN "1" => u0_m0_wo0_cm38_q <= "000100101100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm38_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_12(MULT,167)@13 + 2
    u0_m0_wo0_mtree_mult1_12_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm38_q);
    u0_m0_wo0_mtree_mult1_12_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr38_q);
    u0_m0_wo0_mtree_mult1_12_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_12_a0,
        datab => u0_m0_wo0_mtree_mult1_12_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_12_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_12_s1
    );
    u0_m0_wo0_mtree_mult1_12_q <= u0_m0_wo0_mtree_mult1_12_s1;

    -- u0_m0_wo0_mtree_add0_6(ADD,186)@15 + 1
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_12_q(23)) & u0_m0_wo0_mtree_mult1_12_q));
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_13_q(23)) & u0_m0_wo0_mtree_mult1_13_q));
    u0_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,208)@16 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_6_q(24)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_7_q(24)) & u0_m0_wo0_mtree_add0_7_q));
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr39(DELAY,62)@13
    u0_m0_wo0_wi0_r0_delayr39 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr38_q, xout => u0_m0_wo0_wi0_r0_delayr39_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm39(LOOKUP,117)@12 + 1
    u0_m0_wo0_cm39_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm39_q <= "000011110110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm39_q <= "000011110110";
                WHEN "1" => u0_m0_wo0_cm39_q <= "110101001110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm39_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_11(MULT,168)@13 + 2
    u0_m0_wo0_mtree_mult1_11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm39_q);
    u0_m0_wo0_mtree_mult1_11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr39_q);
    u0_m0_wo0_mtree_mult1_11_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_11_a0,
        datab => u0_m0_wo0_mtree_mult1_11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_11_s1
    );
    u0_m0_wo0_mtree_mult1_11_q <= u0_m0_wo0_mtree_mult1_11_s1;

    -- u0_m0_wo0_wi0_r0_delayr40(DELAY,63)@13
    u0_m0_wo0_wi0_r0_delayr40 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr39_q, xout => u0_m0_wo0_wi0_r0_delayr40_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm40(LOOKUP,118)@12 + 1
    u0_m0_wo0_cm40_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm40_q <= "000011010011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm40_q <= "000011010011";
                WHEN "1" => u0_m0_wo0_cm40_q <= "001011100011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm40_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_10(MULT,169)@13 + 2
    u0_m0_wo0_mtree_mult1_10_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm40_q);
    u0_m0_wo0_mtree_mult1_10_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr40_q);
    u0_m0_wo0_mtree_mult1_10_reset <= areset;
    u0_m0_wo0_mtree_mult1_10_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_10_a0,
        datab => u0_m0_wo0_mtree_mult1_10_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_10_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_10_s1
    );
    u0_m0_wo0_mtree_mult1_10_q <= u0_m0_wo0_mtree_mult1_10_s1;

    -- u0_m0_wo0_mtree_add0_5(ADD,185)@15 + 1
    u0_m0_wo0_mtree_add0_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_10_q(23)) & u0_m0_wo0_mtree_mult1_10_q));
    u0_m0_wo0_mtree_add0_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_11_q(23)) & u0_m0_wo0_mtree_mult1_11_q));
    u0_m0_wo0_mtree_add0_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_5_a) + SIGNED(u0_m0_wo0_mtree_add0_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_5_q <= u0_m0_wo0_mtree_add0_5_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr41(DELAY,64)@13
    u0_m0_wo0_wi0_r0_delayr41 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr40_q, xout => u0_m0_wo0_wi0_r0_delayr41_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm41(LOOKUP,119)@12 + 1
    u0_m0_wo0_cm41_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm41_q <= "111000101100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm41_q <= "111000101100";
                WHEN "1" => u0_m0_wo0_cm41_q <= "111000000010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm41_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_9(MULT,170)@13 + 2
    u0_m0_wo0_mtree_mult1_9_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm41_q);
    u0_m0_wo0_mtree_mult1_9_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr41_q);
    u0_m0_wo0_mtree_mult1_9_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_9_a0,
        datab => u0_m0_wo0_mtree_mult1_9_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_9_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_9_s1
    );
    u0_m0_wo0_mtree_mult1_9_q <= u0_m0_wo0_mtree_mult1_9_s1;

    -- u0_m0_wo0_wi0_r0_delayr42(DELAY,65)@13
    u0_m0_wo0_wi0_r0_delayr42 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr41_q, xout => u0_m0_wo0_wi0_r0_delayr42_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm42(LOOKUP,120)@12 + 1
    u0_m0_wo0_cm42_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm42_q <= "000111100011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm42_q <= "000111100011";
                WHEN "1" => u0_m0_wo0_cm42_q <= "000010100011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm42_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_8(MULT,171)@13 + 2
    u0_m0_wo0_mtree_mult1_8_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm42_q);
    u0_m0_wo0_mtree_mult1_8_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr42_q);
    u0_m0_wo0_mtree_mult1_8_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_8_a0,
        datab => u0_m0_wo0_mtree_mult1_8_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_8_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_8_s1
    );
    u0_m0_wo0_mtree_mult1_8_q <= u0_m0_wo0_mtree_mult1_8_s1;

    -- u0_m0_wo0_mtree_add0_4(ADD,184)@15 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_8_q(23)) & u0_m0_wo0_mtree_mult1_8_q));
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_9_q(23)) & u0_m0_wo0_mtree_mult1_9_q));
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,207)@16 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_4_q(24)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_5_q(24)) & u0_m0_wo0_mtree_add0_5_q));
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(25 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,219)@17 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_2_q(25)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_3_q(25)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr43(DELAY,66)@13
    u0_m0_wo0_wi0_r0_delayr43 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr42_q, xout => u0_m0_wo0_wi0_r0_delayr43_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm43(LOOKUP,121)@12 + 1
    u0_m0_wo0_cm43_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm43_q <= "111010111111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm43_q <= "111010111111";
                WHEN "1" => u0_m0_wo0_cm43_q <= "000010000111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm43_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_7(MULT,172)@13 + 2
    u0_m0_wo0_mtree_mult1_7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm43_q);
    u0_m0_wo0_mtree_mult1_7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr43_q);
    u0_m0_wo0_mtree_mult1_7_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_7_a0,
        datab => u0_m0_wo0_mtree_mult1_7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_7_s1
    );
    u0_m0_wo0_mtree_mult1_7_q <= u0_m0_wo0_mtree_mult1_7_s1;

    -- u0_m0_wo0_wi0_r0_delayr44(DELAY,67)@13
    u0_m0_wo0_wi0_r0_delayr44 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr43_q, xout => u0_m0_wo0_wi0_r0_delayr44_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm44(LOOKUP,122)@12 + 1
    u0_m0_wo0_cm44_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm44_q <= "000001100011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm44_q <= "000001100011";
                WHEN "1" => u0_m0_wo0_cm44_q <= "111011011111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm44_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_6(MULT,173)@13 + 2
    u0_m0_wo0_mtree_mult1_6_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm44_q);
    u0_m0_wo0_mtree_mult1_6_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr44_q);
    u0_m0_wo0_mtree_mult1_6_reset <= areset;
    u0_m0_wo0_mtree_mult1_6_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_6_a0,
        datab => u0_m0_wo0_mtree_mult1_6_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_6_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_6_s1
    );
    u0_m0_wo0_mtree_mult1_6_q <= u0_m0_wo0_mtree_mult1_6_s1;

    -- u0_m0_wo0_mtree_add0_3(ADD,183)@15 + 1
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_6_q(23)) & u0_m0_wo0_mtree_mult1_6_q));
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_7_q(23)) & u0_m0_wo0_mtree_mult1_7_q));
    u0_m0_wo0_mtree_add0_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr45(DELAY,68)@13
    u0_m0_wo0_wi0_r0_delayr45 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr44_q, xout => u0_m0_wo0_wi0_r0_delayr45_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm45(LOOKUP,123)@12 + 1
    u0_m0_wo0_cm45_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm45_q <= "000001001111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm45_q <= "000001001111";
                WHEN "1" => u0_m0_wo0_cm45_q <= "000100100000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm45_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_5(MULT,174)@13 + 2
    u0_m0_wo0_mtree_mult1_5_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm45_q);
    u0_m0_wo0_mtree_mult1_5_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr45_q);
    u0_m0_wo0_mtree_mult1_5_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_5_a0,
        datab => u0_m0_wo0_mtree_mult1_5_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_5_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_5_s1
    );
    u0_m0_wo0_mtree_mult1_5_q <= u0_m0_wo0_mtree_mult1_5_s1;

    -- u0_m0_wo0_wi0_r0_delayr46(DELAY,69)@13
    u0_m0_wo0_wi0_r0_delayr46 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr45_q, xout => u0_m0_wo0_wi0_r0_delayr46_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm46(LOOKUP,124)@12 + 1
    u0_m0_wo0_cm46_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm46_q <= "111101011001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm46_q <= "111101011001";
                WHEN "1" => u0_m0_wo0_cm46_q <= "111101000110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm46_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_4(MULT,175)@13 + 2
    u0_m0_wo0_mtree_mult1_4_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm46_q);
    u0_m0_wo0_mtree_mult1_4_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr46_q);
    u0_m0_wo0_mtree_mult1_4_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_4_a0,
        datab => u0_m0_wo0_mtree_mult1_4_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_4_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_4_s1
    );
    u0_m0_wo0_mtree_mult1_4_q <= u0_m0_wo0_mtree_mult1_4_s1;

    -- u0_m0_wo0_mtree_add0_2(ADD,182)@15 + 1
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_4_q(23)) & u0_m0_wo0_mtree_mult1_4_q));
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_5_q(23)) & u0_m0_wo0_mtree_mult1_5_q));
    u0_m0_wo0_mtree_add0_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,206)@16 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_2_q(24)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_3_q(24)) & u0_m0_wo0_mtree_add0_3_q));
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr47(DELAY,70)@13
    u0_m0_wo0_wi0_r0_delayr47 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr46_q, xout => u0_m0_wo0_wi0_r0_delayr47_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm47(LOOKUP,125)@12 + 1
    u0_m0_wo0_cm47_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm47_q <= "000010100111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm47_q <= "000010100111";
                WHEN "1" => u0_m0_wo0_cm47_q <= "000000111001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm47_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_3(MULT,176)@13 + 2
    u0_m0_wo0_mtree_mult1_3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm47_q);
    u0_m0_wo0_mtree_mult1_3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr47_q);
    u0_m0_wo0_mtree_mult1_3_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_3_a0,
        datab => u0_m0_wo0_mtree_mult1_3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_3_s1
    );
    u0_m0_wo0_mtree_mult1_3_q <= u0_m0_wo0_mtree_mult1_3_s1;

    -- u0_m0_wo0_wi0_r0_delayr48(DELAY,71)@13
    u0_m0_wo0_wi0_r0_delayr48 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr47_q, xout => u0_m0_wo0_wi0_r0_delayr48_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm48(LOOKUP,126)@12 + 1
    u0_m0_wo0_cm48_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm48_q <= "111110001110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm48_q <= "111110001110";
                WHEN "1" => u0_m0_wo0_cm48_q <= "000000101111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm48_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_2(MULT,177)@13 + 2
    u0_m0_wo0_mtree_mult1_2_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm48_q);
    u0_m0_wo0_mtree_mult1_2_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr48_q);
    u0_m0_wo0_mtree_mult1_2_reset <= areset;
    u0_m0_wo0_mtree_mult1_2_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_2_a0,
        datab => u0_m0_wo0_mtree_mult1_2_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_2_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_2_s1
    );
    u0_m0_wo0_mtree_mult1_2_q <= u0_m0_wo0_mtree_mult1_2_s1;

    -- u0_m0_wo0_mtree_add0_1(ADD,181)@15 + 1
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_2_q(23)) & u0_m0_wo0_mtree_mult1_2_q));
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_3_q(23)) & u0_m0_wo0_mtree_mult1_3_q));
    u0_m0_wo0_mtree_add0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr49(DELAY,72)@13
    u0_m0_wo0_wi0_r0_delayr49 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr48_q, xout => u0_m0_wo0_wi0_r0_delayr49_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm49(LOOKUP,127)@12 + 1
    u0_m0_wo0_cm49_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm49_q <= "000000100111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm49_q <= "000000100111";
                WHEN "1" => u0_m0_wo0_cm49_q <= "111110010101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm49_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_1(MULT,178)@13 + 2
    u0_m0_wo0_mtree_mult1_1_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm49_q);
    u0_m0_wo0_mtree_mult1_1_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr49_q);
    u0_m0_wo0_mtree_mult1_1_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_1_a0,
        datab => u0_m0_wo0_mtree_mult1_1_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_1_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_1_s1
    );
    u0_m0_wo0_mtree_mult1_1_q <= u0_m0_wo0_mtree_mult1_1_s1;

    -- u0_m0_wo0_wi0_r0_delayr50(DELAY,73)@13
    u0_m0_wo0_wi0_r0_delayr50 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr49_q, xout => u0_m0_wo0_wi0_r0_delayr50_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm50(LOOKUP,128)@12 + 1
    u0_m0_wo0_cm50_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm50_q <= "000000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca50_q) IS
                WHEN "0" => u0_m0_wo0_cm50_q <= "000000000000";
                WHEN "1" => u0_m0_wo0_cm50_q <= "000001111011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm50_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_0(MULT,179)@13 + 2
    u0_m0_wo0_mtree_mult1_0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm50_q);
    u0_m0_wo0_mtree_mult1_0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr50_q);
    u0_m0_wo0_mtree_mult1_0_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 12,
        lpm_widthb => 12,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_a0,
        datab => u0_m0_wo0_mtree_mult1_0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_s1
    );
    u0_m0_wo0_mtree_mult1_0_q <= u0_m0_wo0_mtree_mult1_0_s1;

    -- u0_m0_wo0_mtree_add0_0(ADD,180)@15 + 1
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_0_q(23)) & u0_m0_wo0_mtree_mult1_0_q));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_1_q(23)) & u0_m0_wo0_mtree_mult1_1_q));
    u0_m0_wo0_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(24 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,205)@16 + 1
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_0_q(24)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add0_1_q(24)) & u0_m0_wo0_mtree_add0_1_q));
    u0_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(25 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,218)@17 + 1
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_0_q(25)) & u0_m0_wo0_mtree_add1_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add1_1_q(25)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(26 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,224)@18 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add2_0_q(26)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add2_1_q(26)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(27 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,227)@19 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add3_0_q(27)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add3_1_q(27)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(28 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,229)@20 + 1
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_add4_0_q(28)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_add4_1_q(28)) & u0_m0_wo0_mtree_add4_1_q));
    u0_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(29 downto 0);

    -- u0_m0_wo0_accum(ADD,231)@21 + 1
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add5_0_q(29)) & u0_m0_wo0_mtree_add5_0_q));
    u0_m0_wo0_accum_b <= STD_LOGIC_VECTOR(u0_m0_wo0_accum_q);
    u0_m0_wo0_accum_i <= u0_m0_wo0_accum_a;
    u0_m0_wo0_accum_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_accum_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_21_q = "1") THEN
                IF (u0_m0_wo0_aseq_q = "1") THEN
                    u0_m0_wo0_accum_o <= u0_m0_wo0_accum_i;
                ELSE
                    u0_m0_wo0_accum_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_accum_a) + SIGNED(u0_m0_wo0_accum_b));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(30 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,232)@20 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(3 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "0001";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_20_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "0000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 1;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(3 downto 3));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,233)@21
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_q and d_u0_m0_wo0_compute_q_21_q;

    -- u0_m0_wo0_oseq_gated_reg(REG,234)@21 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,239)@22 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;

END normal;
