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

-- VHDL created from firipx_rtl_core
-- VHDL created on Tue Mar 08 13:52:03 2022


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

entity firipx_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(9 downto 0);  -- sfix10
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(23 downto 0);  -- sfix24
        clk : in std_logic;
        areset : in std_logic
    );
end firipx_rtl_core;

architecture normal of firipx_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr2_q_13_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr3_q_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr4_q_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr5_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr6_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr7_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr8_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr8_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr9_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr9_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr10_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr10_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr11_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr12_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr13_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr13_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr14_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr14_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr15_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr15_q_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr16_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr16_q_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr17_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr17_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr18_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr18_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr19_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr19_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr20_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr20_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr21_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr21_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr22_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr22_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr23_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr23_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr24_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr25_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr25_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr26_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr27_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr27_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr28_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr28_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr29_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr29_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr30_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr30_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr31_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr31_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr32_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr33_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr33_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr34_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr35_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr35_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr36_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr37_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr37_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr38_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr38_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr39_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr39_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr40_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr40_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr41_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr41_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr42_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr42_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr43_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr43_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr44_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr44_q_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr45_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr45_q_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr46_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr46_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr47_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr47_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr48_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr48_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr49_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr49_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr50_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr50_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr51_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr51_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr52_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr52_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr53_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr53_q_11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr54_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr55_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr56_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr56_q_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr57_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr58_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_5_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_5_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_5_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_5_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_13_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_13_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_13_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_13_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_15_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_15_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_15_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_15_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_17_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_17_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_17_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_17_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_18_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_18_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_18_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_18_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_19_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_19_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_19_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_19_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_20_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_20_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_20_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_20_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_21_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_21_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_21_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_21_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_22_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_22_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_22_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_22_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_23_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_23_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_23_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_23_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_24_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_24_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_24_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_24_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_25_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_25_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_25_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_25_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_26_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_26_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_26_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_26_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_add0_27_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_27_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_27_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_27_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_28_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_add0_28_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_add0_28_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_add0_28_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_8_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_8_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_8_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_8_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_9_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_9_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_9_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_9_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add1_10_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_10_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_10_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_10_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_11_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add1_11_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add1_11_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add1_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add1_12_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_12_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_12_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_12_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_13_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_13_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_13_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_13_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_add1_14_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add1_14_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add1_14_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add1_14_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_4_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_4_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_4_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_4_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add2_5_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add2_5_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add2_5_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add2_5_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add2_6_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_6_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_6_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add2_6_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add3_2_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add3_2_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add3_2_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add3_2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add3_3_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add3_3_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add3_3_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add3_3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add4_1_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add4_1_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add4_1_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add4_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_sub_0_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_sub_0_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_sub_0_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_sub_0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_sub_0_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_sub_0_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_sub_0_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_sub_0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_sub_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_sub_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_sub_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_sub_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_sub_0_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_sub_0_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_sub_0_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_sub_0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_sub_2_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_sub_2_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_sub_2_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_sub_2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_sub_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_sub_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_sub_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_sub_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_sub_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_sub_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_sub_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_sub_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_sub_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_sub_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_sub_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_sub_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_sub_0_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_sub_0_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_sub_0_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_sub_0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_sub_3_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_sub_3_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_sub_3_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_sub_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_add_1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_add_1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_add_1_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_add_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_add_3_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_add_3_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_add_3_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_add_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_sub_3_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_sub_3_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_sub_3_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_sub_3_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_add_1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_add_1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_add_1_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_add_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_sub_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_sub_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_sub_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_sub_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_add_3_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_add_3_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_add_3_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_add_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_3_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_3_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_3_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_3_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_5_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_5_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_5_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_add_5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_add_3_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_add_3_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_add_3_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_add_3_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_3_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_3_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_3_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_add_5_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_add_5_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_add_5_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_add_5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_3_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_3_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_3_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_add_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_add_3_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_add_3_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_add_3_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_add_3_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_3_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_3_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_3_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_add_3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_sub_1_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_sub_1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_sub_1_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_sub_1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_add_3_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_add_3_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_add_3_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_add_3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_add_3_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_add_3_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_add_3_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_add_3_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_add_3_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_add_3_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_add_3_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_add_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_3_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_3_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_3_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_5_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_5_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_5_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_3_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_3_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_3_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_add_3_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_3_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_3_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_3_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_3_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_5_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_5_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_5_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_sub_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_sub_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_sub_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_sub_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_3_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_3_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_3_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_1_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_3_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_3_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_3_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_3_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_3_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_3_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_sub_0_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_sub_0_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_sub_0_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_sub_0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_sub_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_0_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_0_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_0_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_2_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_2_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_2_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_sub_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_sub_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_sub_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_sub_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_0_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_0_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_0_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_sub_0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_sub_0_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_sub_0_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_sub_0_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_sub_0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_shift1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_shift1_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_shift2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_shift2_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_shift2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_shift2_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_shift2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_shift2_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift2_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_shift0_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_shift0_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift2_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift2_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift2_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_shift1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_shift1_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_shift4_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_shift4_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_shift4_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_shift4_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_shift4_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_shift4_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_shift4_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_shift4_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_shift4_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_shift4_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift4_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift4_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift4_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift4_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift4_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift4_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift4_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift4_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift4_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift4_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift4_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift4_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift4_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift4_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift4_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift4_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift4_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift4_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- u0_m0_wo0_wi0_r0_delayr1(DELAY,20)@10
    u0_m0_wo0_wi0_r0_delayr1 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => u0_m0_wo0_wi0_r0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr2(DELAY,21)@10
    u0_m0_wo0_wi0_r0_delayr2 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => u0_m0_wo0_wi0_r0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr2_q_13(DELAY,451)@10 + 3
    d_u0_m0_wo0_wi0_r0_delayr2_q_13 : dspba_delay
    GENERIC MAP ( width => 10, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => d_u0_m0_wo0_wi0_r0_delayr2_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_58_sub_0(SUB,276)@13 + 1
    u0_m0_wo0_mtree_mult1_58_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_58_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => d_u0_m0_wo0_wi0_r0_delayr2_q_13_q(9)) & d_u0_m0_wo0_wi0_r0_delayr2_q_13_q));
    u0_m0_wo0_mtree_mult1_58_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_58_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_58_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_58_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_58_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_58_sub_0_q <= u0_m0_wo0_mtree_mult1_58_sub_0_o(10 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr3(DELAY,22)@10
    u0_m0_wo0_wi0_r0_delayr3 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => u0_m0_wo0_wi0_r0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr3_q_12(DELAY,452)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr3_q_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => d_u0_m0_wo0_wi0_r0_delayr3_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_57_sub_0(SUB,277)@12 + 1
    u0_m0_wo0_mtree_mult1_57_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_57_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => d_u0_m0_wo0_wi0_r0_delayr3_q_12_q(9)) & d_u0_m0_wo0_wi0_r0_delayr3_q_12_q));
    u0_m0_wo0_mtree_mult1_57_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_57_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_57_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_57_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_57_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_57_sub_0_q <= u0_m0_wo0_mtree_mult1_57_sub_0_o(10 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr4(DELAY,23)@10
    u0_m0_wo0_wi0_r0_delayr4 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => u0_m0_wo0_wi0_r0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr4_q_12(DELAY,453)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr4_q_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => d_u0_m0_wo0_wi0_r0_delayr4_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_56_shift0(BITSHIFT,278)@12
    u0_m0_wo0_mtree_mult1_56_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr4_q_12_q & "0";
    u0_m0_wo0_mtree_mult1_56_shift0_q <= u0_m0_wo0_mtree_mult1_56_shift0_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_56_sub_1(SUB,279)@12 + 1
    u0_m0_wo0_mtree_mult1_56_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_56_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_56_shift0_q(10)) & u0_m0_wo0_mtree_mult1_56_shift0_q));
    u0_m0_wo0_mtree_mult1_56_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_56_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_56_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_56_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_56_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_56_sub_1_q <= u0_m0_wo0_mtree_mult1_56_sub_1_o(11 downto 0);

    -- u0_m0_wo0_mtree_add0_28(ADD,233)@13 + 1
    u0_m0_wo0_mtree_add0_28_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_56_sub_1_q(11)) & u0_m0_wo0_mtree_mult1_56_sub_1_q));
    u0_m0_wo0_mtree_add0_28_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => u0_m0_wo0_mtree_mult1_57_sub_0_q(10)) & u0_m0_wo0_mtree_mult1_57_sub_0_q));
    u0_m0_wo0_mtree_add0_28_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_28_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_28_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_28_a) + SIGNED(u0_m0_wo0_mtree_add0_28_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_28_q <= u0_m0_wo0_mtree_add0_28_o(12 downto 0);

    -- u0_m0_wo0_mtree_add1_14(ADD,249)@14 + 1
    u0_m0_wo0_mtree_add1_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_add0_28_q(12)) & u0_m0_wo0_mtree_add0_28_q));
    u0_m0_wo0_mtree_add1_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 11 => u0_m0_wo0_mtree_mult1_58_sub_0_q(10)) & u0_m0_wo0_mtree_mult1_58_sub_0_q));
    u0_m0_wo0_mtree_add1_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_14_a) + SIGNED(u0_m0_wo0_mtree_add1_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_14_q <= u0_m0_wo0_mtree_add1_14_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_55_shift0(BITSHIFT,280)@11
    u0_m0_wo0_mtree_mult1_55_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr5_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_55_shift0_q <= u0_m0_wo0_mtree_mult1_55_shift0_qint(11 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr5(DELAY,24)@10
    u0_m0_wo0_wi0_r0_delayr5 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => u0_m0_wo0_wi0_r0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr5_q_11(DELAY,454)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr5_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => d_u0_m0_wo0_wi0_r0_delayr5_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_55_sub_1(SUB,281)@11 + 1
    u0_m0_wo0_mtree_mult1_55_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => d_u0_m0_wo0_wi0_r0_delayr5_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr5_q_11_q));
    u0_m0_wo0_mtree_mult1_55_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_55_shift0_q(11)) & u0_m0_wo0_mtree_mult1_55_shift0_q));
    u0_m0_wo0_mtree_mult1_55_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_55_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_55_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_55_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_55_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_55_sub_1_q <= u0_m0_wo0_mtree_mult1_55_sub_1_o(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr6(DELAY,25)@10
    u0_m0_wo0_wi0_r0_delayr6 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => u0_m0_wo0_wi0_r0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr6_q_11(DELAY,455)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr6_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr6_q, xout => d_u0_m0_wo0_wi0_r0_delayr6_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_54_shift0(BITSHIFT,282)@11
    u0_m0_wo0_mtree_mult1_54_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr6_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_54_shift0_q <= u0_m0_wo0_mtree_mult1_54_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_54_sub_1(SUB,283)@11 + 1
    u0_m0_wo0_mtree_mult1_54_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_54_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_54_shift0_q(11)) & u0_m0_wo0_mtree_mult1_54_shift0_q));
    u0_m0_wo0_mtree_mult1_54_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_54_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_54_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_54_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_54_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_54_sub_1_q <= u0_m0_wo0_mtree_mult1_54_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_add0_27(ADD,232)@12 + 1
    u0_m0_wo0_mtree_add0_27_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_54_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_54_sub_1_q));
    u0_m0_wo0_mtree_add0_27_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_55_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_55_sub_1_q));
    u0_m0_wo0_mtree_add0_27_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_27_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_27_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_27_a) + SIGNED(u0_m0_wo0_mtree_add0_27_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_27_q <= u0_m0_wo0_mtree_add0_27_o(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr7(DELAY,26)@10
    u0_m0_wo0_wi0_r0_delayr7 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr6_q, xout => u0_m0_wo0_wi0_r0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr7_q_11(DELAY,456)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr7_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => d_u0_m0_wo0_wi0_r0_delayr7_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_53_shift1(BITSHIFT,285)@11
    u0_m0_wo0_mtree_mult1_53_shift1_qint <= d_u0_m0_wo0_wi0_r0_delayr7_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_53_shift1_q <= u0_m0_wo0_mtree_mult1_53_shift1_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_53_sub_0(SUB,284)@10 + 1
    u0_m0_wo0_mtree_mult1_53_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_53_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_wi0_r0_delayr7_q(9)) & u0_m0_wo0_wi0_r0_delayr7_q));
    u0_m0_wo0_mtree_mult1_53_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_53_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_53_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_53_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_53_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_53_sub_0_q <= u0_m0_wo0_mtree_mult1_53_sub_0_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_53_sub_2(SUB,286)@11 + 1
    u0_m0_wo0_mtree_mult1_53_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => u0_m0_wo0_mtree_mult1_53_sub_0_q(10)) & u0_m0_wo0_mtree_mult1_53_sub_0_q));
    u0_m0_wo0_mtree_mult1_53_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_53_shift1_q(11)) & u0_m0_wo0_mtree_mult1_53_shift1_q));
    u0_m0_wo0_mtree_mult1_53_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_53_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_53_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_53_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_53_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_53_sub_2_q <= u0_m0_wo0_mtree_mult1_53_sub_2_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_52_shift0(BITSHIFT,287)@11
    u0_m0_wo0_mtree_mult1_52_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr8_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_52_shift0_q <= u0_m0_wo0_mtree_mult1_52_shift0_qint(11 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr8(DELAY,27)@10
    u0_m0_wo0_wi0_r0_delayr8 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => u0_m0_wo0_wi0_r0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr8_q_11(DELAY,457)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr8_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => d_u0_m0_wo0_wi0_r0_delayr8_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_52_sub_1(SUB,288)@11 + 1
    u0_m0_wo0_mtree_mult1_52_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => d_u0_m0_wo0_wi0_r0_delayr8_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr8_q_11_q));
    u0_m0_wo0_mtree_mult1_52_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_52_shift0_q(11)) & u0_m0_wo0_mtree_mult1_52_shift0_q));
    u0_m0_wo0_mtree_mult1_52_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_52_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_52_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_52_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_52_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_52_sub_1_q <= u0_m0_wo0_mtree_mult1_52_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_52_shift2(BITSHIFT,289)@12
    u0_m0_wo0_mtree_mult1_52_shift2_qint <= u0_m0_wo0_mtree_mult1_52_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_52_shift2_q <= u0_m0_wo0_mtree_mult1_52_shift2_qint(13 downto 0);

    -- u0_m0_wo0_mtree_add0_26(ADD,231)@12 + 1
    u0_m0_wo0_mtree_add0_26_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_52_shift2_q(13)) & u0_m0_wo0_mtree_mult1_52_shift2_q));
    u0_m0_wo0_mtree_add0_26_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => u0_m0_wo0_mtree_mult1_53_sub_2_q(12)) & u0_m0_wo0_mtree_mult1_53_sub_2_q));
    u0_m0_wo0_mtree_add0_26_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_26_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_26_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_26_a) + SIGNED(u0_m0_wo0_mtree_add0_26_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_26_q <= u0_m0_wo0_mtree_add0_26_o(14 downto 0);

    -- u0_m0_wo0_mtree_add1_13(ADD,248)@13 + 1
    u0_m0_wo0_mtree_add1_13_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_add0_26_q(14)) & u0_m0_wo0_mtree_add0_26_q));
    u0_m0_wo0_mtree_add1_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_mtree_add0_27_q(13)) & u0_m0_wo0_mtree_add0_27_q));
    u0_m0_wo0_mtree_add1_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_13_a) + SIGNED(u0_m0_wo0_mtree_add1_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_13_q <= u0_m0_wo0_mtree_add1_13_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_51_shift0(BITSHIFT,290)@11
    u0_m0_wo0_mtree_mult1_51_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr9_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_51_shift0_q <= u0_m0_wo0_mtree_mult1_51_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr9(DELAY,28)@10
    u0_m0_wo0_wi0_r0_delayr9 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => u0_m0_wo0_wi0_r0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr9_q_11(DELAY,458)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr9_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => d_u0_m0_wo0_wi0_r0_delayr9_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_51_sub_1(SUB,291)@11 + 1
    u0_m0_wo0_mtree_mult1_51_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => d_u0_m0_wo0_wi0_r0_delayr9_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr9_q_11_q));
    u0_m0_wo0_mtree_mult1_51_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_51_shift0_q(12)) & u0_m0_wo0_mtree_mult1_51_shift0_q));
    u0_m0_wo0_mtree_mult1_51_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_51_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_51_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_51_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_51_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_51_sub_1_q <= u0_m0_wo0_mtree_mult1_51_sub_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_50_shift0(BITSHIFT,292)@11
    u0_m0_wo0_mtree_mult1_50_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr10_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_50_shift0_q <= u0_m0_wo0_mtree_mult1_50_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr10(DELAY,29)@10
    u0_m0_wo0_wi0_r0_delayr10 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => u0_m0_wo0_wi0_r0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr10_q_11(DELAY,459)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr10_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr10_q, xout => d_u0_m0_wo0_wi0_r0_delayr10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_50_sub_1(SUB,293)@11 + 1
    u0_m0_wo0_mtree_mult1_50_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => d_u0_m0_wo0_wi0_r0_delayr10_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr10_q_11_q));
    u0_m0_wo0_mtree_mult1_50_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_50_shift0_q(12)) & u0_m0_wo0_mtree_mult1_50_shift0_q));
    u0_m0_wo0_mtree_mult1_50_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_50_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_50_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_50_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_50_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_50_sub_1_q <= u0_m0_wo0_mtree_mult1_50_sub_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_add0_25(ADD,230)@12 + 1
    u0_m0_wo0_mtree_add0_25_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_50_sub_1_q(13)) & u0_m0_wo0_mtree_mult1_50_sub_1_q));
    u0_m0_wo0_mtree_add0_25_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_51_sub_1_q(13)) & u0_m0_wo0_mtree_mult1_51_sub_1_q));
    u0_m0_wo0_mtree_add0_25_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_25_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_25_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_25_a) + SIGNED(u0_m0_wo0_mtree_add0_25_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_25_q <= u0_m0_wo0_mtree_add0_25_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_49_shift0(BITSHIFT,294)@11
    u0_m0_wo0_mtree_mult1_49_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr11_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_49_shift0_q <= u0_m0_wo0_mtree_mult1_49_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr11(DELAY,30)@10
    u0_m0_wo0_wi0_r0_delayr11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr10_q, xout => u0_m0_wo0_wi0_r0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr11_q_11(DELAY,460)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr11_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => d_u0_m0_wo0_wi0_r0_delayr11_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_49_sub_1(SUB,295)@11 + 1
    u0_m0_wo0_mtree_mult1_49_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => d_u0_m0_wo0_wi0_r0_delayr11_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr11_q_11_q));
    u0_m0_wo0_mtree_mult1_49_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_49_shift0_q(12)) & u0_m0_wo0_mtree_mult1_49_shift0_q));
    u0_m0_wo0_mtree_mult1_49_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_49_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_49_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_49_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_49_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_49_sub_1_q <= u0_m0_wo0_mtree_mult1_49_sub_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_48_shift0(BITSHIFT,296)@11
    u0_m0_wo0_mtree_mult1_48_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr12_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_48_shift0_q <= u0_m0_wo0_mtree_mult1_48_shift0_qint(11 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr12(DELAY,31)@10
    u0_m0_wo0_wi0_r0_delayr12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => u0_m0_wo0_wi0_r0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr12_q_11(DELAY,461)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr12_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => d_u0_m0_wo0_wi0_r0_delayr12_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_48_sub_1(SUB,297)@11 + 1
    u0_m0_wo0_mtree_mult1_48_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => d_u0_m0_wo0_wi0_r0_delayr12_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr12_q_11_q));
    u0_m0_wo0_mtree_mult1_48_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_48_shift0_q(11)) & u0_m0_wo0_mtree_mult1_48_shift0_q));
    u0_m0_wo0_mtree_mult1_48_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_48_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_48_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_48_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_48_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_48_sub_1_q <= u0_m0_wo0_mtree_mult1_48_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_48_shift2(BITSHIFT,298)@12
    u0_m0_wo0_mtree_mult1_48_shift2_qint <= u0_m0_wo0_mtree_mult1_48_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_48_shift2_q <= u0_m0_wo0_mtree_mult1_48_shift2_qint(13 downto 0);

    -- u0_m0_wo0_mtree_add0_24(ADD,229)@12 + 1
    u0_m0_wo0_mtree_add0_24_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_48_shift2_q(13)) & u0_m0_wo0_mtree_mult1_48_shift2_q));
    u0_m0_wo0_mtree_add0_24_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_49_sub_1_q(13)) & u0_m0_wo0_mtree_mult1_49_sub_1_q));
    u0_m0_wo0_mtree_add0_24_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_24_a) + SIGNED(u0_m0_wo0_mtree_add0_24_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_24_q <= u0_m0_wo0_mtree_add0_24_o(14 downto 0);

    -- u0_m0_wo0_mtree_add1_12(ADD,247)@13 + 1
    u0_m0_wo0_mtree_add1_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_add0_24_q(14)) & u0_m0_wo0_mtree_add0_24_q));
    u0_m0_wo0_mtree_add1_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_add0_25_q(14)) & u0_m0_wo0_mtree_add0_25_q));
    u0_m0_wo0_mtree_add1_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_12_a) + SIGNED(u0_m0_wo0_mtree_add1_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_12_q <= u0_m0_wo0_mtree_add1_12_o(15 downto 0);

    -- u0_m0_wo0_mtree_add2_6(ADD,256)@14 + 1
    u0_m0_wo0_mtree_add2_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add1_12_q(15)) & u0_m0_wo0_mtree_add1_12_q));
    u0_m0_wo0_mtree_add2_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add1_13_q(15)) & u0_m0_wo0_mtree_add1_13_q));
    u0_m0_wo0_mtree_add2_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_6_a) + SIGNED(u0_m0_wo0_mtree_add2_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_6_q <= u0_m0_wo0_mtree_add2_6_o(16 downto 0);

    -- u0_m0_wo0_mtree_add3_3(ADD,261)@15 + 1
    u0_m0_wo0_mtree_add3_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_add2_6_q(16)) & u0_m0_wo0_mtree_add2_6_q));
    u0_m0_wo0_mtree_add3_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 14 => u0_m0_wo0_mtree_add1_14_q(13)) & u0_m0_wo0_mtree_add1_14_q));
    u0_m0_wo0_mtree_add3_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_3_a) + SIGNED(u0_m0_wo0_mtree_add3_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_3_q <= u0_m0_wo0_mtree_add3_3_o(17 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr13(DELAY,32)@10
    u0_m0_wo0_wi0_r0_delayr13 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => u0_m0_wo0_wi0_r0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr13_q_11(DELAY,462)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr13_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => d_u0_m0_wo0_wi0_r0_delayr13_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_47_shift0(BITSHIFT,299)@11
    u0_m0_wo0_mtree_mult1_47_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr13_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_47_shift0_q <= u0_m0_wo0_mtree_mult1_47_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_47_sub_1(SUB,300)@11 + 1
    u0_m0_wo0_mtree_mult1_47_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_47_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_47_shift0_q(11)) & u0_m0_wo0_mtree_mult1_47_shift0_q));
    u0_m0_wo0_mtree_mult1_47_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_47_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_47_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_47_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_47_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_47_sub_1_q <= u0_m0_wo0_mtree_mult1_47_sub_1_o(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr14(DELAY,33)@10
    u0_m0_wo0_wi0_r0_delayr14 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => u0_m0_wo0_wi0_r0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr14_q_11(DELAY,463)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr14_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr14_q, xout => d_u0_m0_wo0_wi0_r0_delayr14_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_46_sub_0(SUB,301)@11 + 1
    u0_m0_wo0_mtree_mult1_46_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_46_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => d_u0_m0_wo0_wi0_r0_delayr14_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr14_q_11_q));
    u0_m0_wo0_mtree_mult1_46_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_46_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_46_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_46_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_46_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_46_sub_0_q <= u0_m0_wo0_mtree_mult1_46_sub_0_o(10 downto 0);

    -- u0_m0_wo0_mtree_add0_23(ADD,228)@12 + 1
    u0_m0_wo0_mtree_add0_23_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 11 => u0_m0_wo0_mtree_mult1_46_sub_0_q(10)) & u0_m0_wo0_mtree_mult1_46_sub_0_q));
    u0_m0_wo0_mtree_add0_23_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_47_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_47_sub_1_q));
    u0_m0_wo0_mtree_add0_23_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_23_a) + SIGNED(u0_m0_wo0_mtree_add0_23_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_23_q <= u0_m0_wo0_mtree_add0_23_o(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr15(DELAY,34)@10
    u0_m0_wo0_wi0_r0_delayr15 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr14_q, xout => u0_m0_wo0_wi0_r0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr15_q_12(DELAY,464)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr15_q_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr15_q, xout => d_u0_m0_wo0_wi0_r0_delayr15_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_45_shift0(BITSHIFT,302)@12
    u0_m0_wo0_mtree_mult1_45_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr15_q_12_q & "0";
    u0_m0_wo0_mtree_mult1_45_shift0_q <= u0_m0_wo0_mtree_mult1_45_shift0_qint(10 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr16(DELAY,35)@10
    u0_m0_wo0_wi0_r0_delayr16 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr15_q, xout => u0_m0_wo0_wi0_r0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr16_q_12(DELAY,465)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr16_q_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => d_u0_m0_wo0_wi0_r0_delayr16_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_44_shift0(BITSHIFT,303)@12
    u0_m0_wo0_mtree_mult1_44_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr16_q_12_q & "000";
    u0_m0_wo0_mtree_mult1_44_shift0_q <= u0_m0_wo0_mtree_mult1_44_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_add0_22(ADD,227)@12 + 1
    u0_m0_wo0_mtree_add0_22_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_44_shift0_q(12)) & u0_m0_wo0_mtree_mult1_44_shift0_q));
    u0_m0_wo0_mtree_add0_22_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 11 => u0_m0_wo0_mtree_mult1_45_shift0_q(10)) & u0_m0_wo0_mtree_mult1_45_shift0_q));
    u0_m0_wo0_mtree_add0_22_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_22_a) + SIGNED(u0_m0_wo0_mtree_add0_22_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_22_q <= u0_m0_wo0_mtree_add0_22_o(13 downto 0);

    -- u0_m0_wo0_mtree_add1_11(ADD,246)@13 + 1
    u0_m0_wo0_mtree_add1_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_mtree_add0_22_q(13)) & u0_m0_wo0_mtree_add0_22_q));
    u0_m0_wo0_mtree_add1_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_mtree_add0_23_q(13)) & u0_m0_wo0_mtree_add0_23_q));
    u0_m0_wo0_mtree_add1_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_11_a) + SIGNED(u0_m0_wo0_mtree_add1_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_11_q <= u0_m0_wo0_mtree_add1_11_o(16 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr17(DELAY,36)@10
    u0_m0_wo0_wi0_r0_delayr17 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => u0_m0_wo0_wi0_r0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr17_q_11(DELAY,466)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr17_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr17_q, xout => d_u0_m0_wo0_wi0_r0_delayr17_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_43_shift0(BITSHIFT,304)@11
    u0_m0_wo0_mtree_mult1_43_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr17_q_11_q & "0000";
    u0_m0_wo0_mtree_mult1_43_shift0_q <= u0_m0_wo0_mtree_mult1_43_shift0_qint(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_43_sub_1(SUB,305)@11 + 1
    u0_m0_wo0_mtree_mult1_43_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_43_shift0_q(13)) & u0_m0_wo0_mtree_mult1_43_shift0_q));
    u0_m0_wo0_mtree_mult1_43_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 10 => d_u0_m0_wo0_wi0_r0_delayr17_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr17_q_11_q));
    u0_m0_wo0_mtree_mult1_43_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_43_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_43_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_43_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_43_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_43_sub_1_q <= u0_m0_wo0_mtree_mult1_43_sub_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_42_shift0(BITSHIFT,306)@10
    u0_m0_wo0_mtree_mult1_42_shift0_qint <= u0_m0_wo0_wi0_r0_delayr18_q & "000";
    u0_m0_wo0_mtree_mult1_42_shift0_q <= u0_m0_wo0_mtree_mult1_42_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr18(DELAY,37)@10
    u0_m0_wo0_wi0_r0_delayr18 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr17_q, xout => u0_m0_wo0_wi0_r0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_42_add_1(ADD,307)@10 + 1
    u0_m0_wo0_mtree_mult1_42_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr18_q(9)) & u0_m0_wo0_wi0_r0_delayr18_q));
    u0_m0_wo0_mtree_mult1_42_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_42_shift0_q(12)) & u0_m0_wo0_mtree_mult1_42_shift0_q));
    u0_m0_wo0_mtree_mult1_42_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_42_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_42_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_42_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_42_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_42_add_1_q <= u0_m0_wo0_mtree_mult1_42_add_1_o(13 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr18_q_11(DELAY,467)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr18_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => d_u0_m0_wo0_wi0_r0_delayr18_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_42_shift2(BITSHIFT,308)@11
    u0_m0_wo0_mtree_mult1_42_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr18_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_42_shift2_q <= u0_m0_wo0_mtree_mult1_42_shift2_qint(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_42_sub_3(SUB,309)@11 + 1
    u0_m0_wo0_mtree_mult1_42_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_42_shift2_q(14)) & u0_m0_wo0_mtree_mult1_42_shift2_q));
    u0_m0_wo0_mtree_mult1_42_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_mtree_mult1_42_add_1_q(13)) & u0_m0_wo0_mtree_mult1_42_add_1_q));
    u0_m0_wo0_mtree_mult1_42_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_42_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_42_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_42_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_42_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_42_sub_3_q <= u0_m0_wo0_mtree_mult1_42_sub_3_o(15 downto 0);

    -- u0_m0_wo0_mtree_add0_21(ADD,226)@12 + 1
    u0_m0_wo0_mtree_add0_21_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_42_sub_3_q(15)) & u0_m0_wo0_mtree_mult1_42_sub_3_q));
    u0_m0_wo0_mtree_add0_21_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => u0_m0_wo0_mtree_mult1_43_sub_1_q(14)) & u0_m0_wo0_mtree_mult1_43_sub_1_q));
    u0_m0_wo0_mtree_add0_21_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_21_a) + SIGNED(u0_m0_wo0_mtree_add0_21_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_21_q <= u0_m0_wo0_mtree_add0_21_o(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_41_shift0(BITSHIFT,310)@11
    u0_m0_wo0_mtree_mult1_41_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr19_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_41_shift0_q <= u0_m0_wo0_mtree_mult1_41_shift0_qint(14 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr19(DELAY,38)@10
    u0_m0_wo0_wi0_r0_delayr19 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => u0_m0_wo0_wi0_r0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr19_q_11(DELAY,468)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr19_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr19_q, xout => d_u0_m0_wo0_wi0_r0_delayr19_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_41_add_1(ADD,311)@11 + 1
    u0_m0_wo0_mtree_mult1_41_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 10 => d_u0_m0_wo0_wi0_r0_delayr19_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr19_q_11_q));
    u0_m0_wo0_mtree_mult1_41_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_41_shift0_q(14)) & u0_m0_wo0_mtree_mult1_41_shift0_q));
    u0_m0_wo0_mtree_mult1_41_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_41_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_41_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_41_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_41_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_41_add_1_q <= u0_m0_wo0_mtree_mult1_41_add_1_o(15 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr20(DELAY,39)@10
    u0_m0_wo0_wi0_r0_delayr20 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr19_q, xout => u0_m0_wo0_wi0_r0_delayr20_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr20_q_11(DELAY,469)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr20_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr20_q, xout => d_u0_m0_wo0_wi0_r0_delayr20_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_40_shift2(BITSHIFT,314)@11
    u0_m0_wo0_mtree_mult1_40_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr20_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_40_shift2_q <= u0_m0_wo0_mtree_mult1_40_shift2_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_40_shift0(BITSHIFT,312)@10
    u0_m0_wo0_mtree_mult1_40_shift0_qint <= u0_m0_wo0_wi0_r0_delayr20_q & "0";
    u0_m0_wo0_mtree_mult1_40_shift0_q <= u0_m0_wo0_mtree_mult1_40_shift0_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_40_add_1(ADD,313)@10 + 1
    u0_m0_wo0_mtree_mult1_40_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => u0_m0_wo0_wi0_r0_delayr20_q(9)) & u0_m0_wo0_wi0_r0_delayr20_q));
    u0_m0_wo0_mtree_mult1_40_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_40_shift0_q(10)) & u0_m0_wo0_mtree_mult1_40_shift0_q));
    u0_m0_wo0_mtree_mult1_40_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_40_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_40_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_40_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_40_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_40_add_1_q <= u0_m0_wo0_mtree_mult1_40_add_1_o(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_40_add_3(ADD,315)@11 + 1
    u0_m0_wo0_mtree_mult1_40_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => u0_m0_wo0_mtree_mult1_40_add_1_q(11)) & u0_m0_wo0_mtree_mult1_40_add_1_q));
    u0_m0_wo0_mtree_mult1_40_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_40_shift2_q(12)) & u0_m0_wo0_mtree_mult1_40_shift2_q));
    u0_m0_wo0_mtree_mult1_40_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_40_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_40_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_40_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_40_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_40_add_3_q <= u0_m0_wo0_mtree_mult1_40_add_3_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_40_shift4(BITSHIFT,316)@12
    u0_m0_wo0_mtree_mult1_40_shift4_qint <= u0_m0_wo0_mtree_mult1_40_add_3_q & "00";
    u0_m0_wo0_mtree_mult1_40_shift4_q <= u0_m0_wo0_mtree_mult1_40_shift4_qint(15 downto 0);

    -- u0_m0_wo0_mtree_add0_20(ADD,225)@12 + 1
    u0_m0_wo0_mtree_add0_20_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_40_shift4_q(15)) & u0_m0_wo0_mtree_mult1_40_shift4_q));
    u0_m0_wo0_mtree_add0_20_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_41_add_1_q(15)) & u0_m0_wo0_mtree_mult1_41_add_1_q));
    u0_m0_wo0_mtree_add0_20_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_20_a) + SIGNED(u0_m0_wo0_mtree_add0_20_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_20_q <= u0_m0_wo0_mtree_add0_20_o(16 downto 0);

    -- u0_m0_wo0_mtree_add1_10(ADD,245)@13 + 1
    u0_m0_wo0_mtree_add1_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_add0_20_q(16)) & u0_m0_wo0_mtree_add0_20_q));
    u0_m0_wo0_mtree_add1_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_add0_21_q(16)) & u0_m0_wo0_mtree_add0_21_q));
    u0_m0_wo0_mtree_add1_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_10_a) + SIGNED(u0_m0_wo0_mtree_add1_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_10_q <= u0_m0_wo0_mtree_add1_10_o(18 downto 0);

    -- u0_m0_wo0_mtree_add2_5(ADD,255)@14 + 1
    u0_m0_wo0_mtree_add2_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add1_10_q(18)) & u0_m0_wo0_mtree_add1_10_q));
    u0_m0_wo0_mtree_add2_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 17 => u0_m0_wo0_mtree_add1_11_q(16)) & u0_m0_wo0_mtree_add1_11_q));
    u0_m0_wo0_mtree_add2_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_5_a) + SIGNED(u0_m0_wo0_mtree_add2_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_5_q <= u0_m0_wo0_mtree_add2_5_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_39_shift0(BITSHIFT,317)@10
    u0_m0_wo0_mtree_mult1_39_shift0_qint <= u0_m0_wo0_wi0_r0_delayr21_q & "000";
    u0_m0_wo0_mtree_mult1_39_shift0_q <= u0_m0_wo0_mtree_mult1_39_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr21(DELAY,40)@10
    u0_m0_wo0_wi0_r0_delayr21 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr20_q, xout => u0_m0_wo0_wi0_r0_delayr21_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_39_add_1(ADD,318)@10 + 1
    u0_m0_wo0_mtree_mult1_39_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr21_q(9)) & u0_m0_wo0_wi0_r0_delayr21_q));
    u0_m0_wo0_mtree_mult1_39_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_39_shift0_q(12)) & u0_m0_wo0_mtree_mult1_39_shift0_q));
    u0_m0_wo0_mtree_mult1_39_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_39_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_39_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_39_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_39_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_39_add_1_q <= u0_m0_wo0_mtree_mult1_39_add_1_o(13 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr21_q_11(DELAY,470)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr21_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => d_u0_m0_wo0_wi0_r0_delayr21_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_39_shift2(BITSHIFT,319)@11
    u0_m0_wo0_mtree_mult1_39_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr21_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_39_shift2_q <= u0_m0_wo0_mtree_mult1_39_shift2_qint(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_39_sub_3(SUB,320)@11 + 1
    u0_m0_wo0_mtree_mult1_39_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_39_shift2_q(15)) & u0_m0_wo0_mtree_mult1_39_shift2_q));
    u0_m0_wo0_mtree_mult1_39_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_mtree_mult1_39_add_1_q(13)) & u0_m0_wo0_mtree_mult1_39_add_1_q));
    u0_m0_wo0_mtree_mult1_39_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_39_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_39_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_39_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_39_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_39_sub_3_q <= u0_m0_wo0_mtree_mult1_39_sub_3_o(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_38_shift0(BITSHIFT,321)@11
    u0_m0_wo0_mtree_mult1_38_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr22_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_38_shift0_q <= u0_m0_wo0_mtree_mult1_38_shift0_qint(14 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr22(DELAY,41)@10
    u0_m0_wo0_wi0_r0_delayr22 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => u0_m0_wo0_wi0_r0_delayr22_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr22_q_11(DELAY,471)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr22_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr22_q, xout => d_u0_m0_wo0_wi0_r0_delayr22_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_38_add_1(ADD,322)@11 + 1
    u0_m0_wo0_mtree_mult1_38_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 10 => d_u0_m0_wo0_wi0_r0_delayr22_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr22_q_11_q));
    u0_m0_wo0_mtree_mult1_38_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_38_shift0_q(14)) & u0_m0_wo0_mtree_mult1_38_shift0_q));
    u0_m0_wo0_mtree_mult1_38_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_38_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_38_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_38_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_38_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_38_add_1_q <= u0_m0_wo0_mtree_mult1_38_add_1_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_38_shift2(BITSHIFT,323)@12
    u0_m0_wo0_mtree_mult1_38_shift2_qint <= u0_m0_wo0_mtree_mult1_38_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_38_shift2_q <= u0_m0_wo0_mtree_mult1_38_shift2_qint(16 downto 0);

    -- u0_m0_wo0_mtree_add0_19(ADD,224)@12 + 1
    u0_m0_wo0_mtree_add0_19_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_38_shift2_q(16)) & u0_m0_wo0_mtree_mult1_38_shift2_q));
    u0_m0_wo0_mtree_add0_19_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_39_sub_3_q(16)) & u0_m0_wo0_mtree_mult1_39_sub_3_q));
    u0_m0_wo0_mtree_add0_19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_19_a) + SIGNED(u0_m0_wo0_mtree_add0_19_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_19_q <= u0_m0_wo0_mtree_add0_19_o(17 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr23(DELAY,42)@10
    u0_m0_wo0_wi0_r0_delayr23 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr22_q, xout => u0_m0_wo0_wi0_r0_delayr23_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr23_q_11(DELAY,472)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr23_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr23_q, xout => d_u0_m0_wo0_wi0_r0_delayr23_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_37_shift2(BITSHIFT,326)@11
    u0_m0_wo0_mtree_mult1_37_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr23_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_37_shift2_q <= u0_m0_wo0_mtree_mult1_37_shift2_qint(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_37_shift0(BITSHIFT,324)@10
    u0_m0_wo0_mtree_mult1_37_shift0_qint <= u0_m0_wo0_wi0_r0_delayr23_q & "000";
    u0_m0_wo0_mtree_mult1_37_shift0_q <= u0_m0_wo0_mtree_mult1_37_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_37_sub_1(SUB,325)@10 + 1
    u0_m0_wo0_mtree_mult1_37_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_37_shift0_q(12)) & u0_m0_wo0_mtree_mult1_37_shift0_q));
    u0_m0_wo0_mtree_mult1_37_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr23_q(9)) & u0_m0_wo0_wi0_r0_delayr23_q));
    u0_m0_wo0_mtree_mult1_37_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_37_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_37_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_37_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_37_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_37_sub_1_q <= u0_m0_wo0_mtree_mult1_37_sub_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_37_add_3(ADD,327)@11 + 1
    u0_m0_wo0_mtree_mult1_37_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_mtree_mult1_37_sub_1_q(13)) & u0_m0_wo0_mtree_mult1_37_sub_1_q));
    u0_m0_wo0_mtree_mult1_37_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_37_shift2_q(14)) & u0_m0_wo0_mtree_mult1_37_shift2_q));
    u0_m0_wo0_mtree_mult1_37_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_37_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_37_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_37_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_37_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_37_add_3_q <= u0_m0_wo0_mtree_mult1_37_add_3_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_37_shift4(BITSHIFT,328)@12
    u0_m0_wo0_mtree_mult1_37_shift4_qint <= u0_m0_wo0_mtree_mult1_37_add_3_q & "0";
    u0_m0_wo0_mtree_mult1_37_shift4_q <= u0_m0_wo0_mtree_mult1_37_shift4_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_shift2(BITSHIFT,331)@10
    u0_m0_wo0_mtree_mult1_36_shift2_qint <= u0_m0_wo0_wi0_r0_delayr24_q & "00";
    u0_m0_wo0_mtree_mult1_36_shift2_q <= u0_m0_wo0_mtree_mult1_36_shift2_qint(11 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr24(DELAY,43)@10
    u0_m0_wo0_wi0_r0_delayr24 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr23_q, xout => u0_m0_wo0_wi0_r0_delayr24_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_36_add_3(ADD,332)@10 + 1
    u0_m0_wo0_mtree_mult1_36_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr24_q(9)) & u0_m0_wo0_wi0_r0_delayr24_q));
    u0_m0_wo0_mtree_mult1_36_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_36_shift2_q(11)) & u0_m0_wo0_mtree_mult1_36_shift2_q));
    u0_m0_wo0_mtree_mult1_36_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_add_3_q <= u0_m0_wo0_mtree_mult1_36_add_3_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_shift4(BITSHIFT,333)@11
    u0_m0_wo0_mtree_mult1_36_shift4_qint <= u0_m0_wo0_mtree_mult1_36_add_3_q & "0000";
    u0_m0_wo0_mtree_mult1_36_shift4_q <= u0_m0_wo0_mtree_mult1_36_shift4_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_shift0(BITSHIFT,329)@10
    u0_m0_wo0_mtree_mult1_36_shift0_qint <= u0_m0_wo0_wi0_r0_delayr24_q & "000";
    u0_m0_wo0_mtree_mult1_36_shift0_q <= u0_m0_wo0_mtree_mult1_36_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_add_1(ADD,330)@10 + 1
    u0_m0_wo0_mtree_mult1_36_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr24_q(9)) & u0_m0_wo0_wi0_r0_delayr24_q));
    u0_m0_wo0_mtree_mult1_36_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_36_shift0_q(12)) & u0_m0_wo0_mtree_mult1_36_shift0_q));
    u0_m0_wo0_mtree_mult1_36_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_add_1_q <= u0_m0_wo0_mtree_mult1_36_add_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_add_5(ADD,334)@11 + 1
    u0_m0_wo0_mtree_mult1_36_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 14 => u0_m0_wo0_mtree_mult1_36_add_1_q(13)) & u0_m0_wo0_mtree_mult1_36_add_1_q));
    u0_m0_wo0_mtree_mult1_36_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_36_shift4_q(16)) & u0_m0_wo0_mtree_mult1_36_shift4_q));
    u0_m0_wo0_mtree_mult1_36_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_add_5_q <= u0_m0_wo0_mtree_mult1_36_add_5_o(17 downto 0);

    -- u0_m0_wo0_mtree_add0_18(ADD,223)@12 + 1
    u0_m0_wo0_mtree_add0_18_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_36_add_5_q(17)) & u0_m0_wo0_mtree_mult1_36_add_5_q));
    u0_m0_wo0_mtree_add0_18_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_mult1_37_shift4_q(16)) & u0_m0_wo0_mtree_mult1_37_shift4_q));
    u0_m0_wo0_mtree_add0_18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_18_a) + SIGNED(u0_m0_wo0_mtree_add0_18_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_18_q <= u0_m0_wo0_mtree_add0_18_o(18 downto 0);

    -- u0_m0_wo0_mtree_add1_9(ADD,244)@13 + 1
    u0_m0_wo0_mtree_add1_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add0_18_q(18)) & u0_m0_wo0_mtree_add0_18_q));
    u0_m0_wo0_mtree_add1_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_add0_19_q(17)) & u0_m0_wo0_mtree_add0_19_q));
    u0_m0_wo0_mtree_add1_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_9_a) + SIGNED(u0_m0_wo0_mtree_add1_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_9_q <= u0_m0_wo0_mtree_add1_9_o(19 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr25(DELAY,44)@10
    u0_m0_wo0_wi0_r0_delayr25 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr24_q, xout => u0_m0_wo0_wi0_r0_delayr25_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr25_q_11(DELAY,473)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr25_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr25_q, xout => d_u0_m0_wo0_wi0_r0_delayr25_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_35_shift2(BITSHIFT,337)@11
    u0_m0_wo0_mtree_mult1_35_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr25_q_11_q & "0000";
    u0_m0_wo0_mtree_mult1_35_shift2_q <= u0_m0_wo0_mtree_mult1_35_shift2_qint(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_shift0(BITSHIFT,335)@10
    u0_m0_wo0_mtree_mult1_35_shift0_qint <= u0_m0_wo0_wi0_r0_delayr25_q & "000";
    u0_m0_wo0_mtree_mult1_35_shift0_q <= u0_m0_wo0_mtree_mult1_35_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_add_1(ADD,336)@10 + 1
    u0_m0_wo0_mtree_mult1_35_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr25_q(9)) & u0_m0_wo0_wi0_r0_delayr25_q));
    u0_m0_wo0_mtree_mult1_35_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_35_shift0_q(12)) & u0_m0_wo0_mtree_mult1_35_shift0_q));
    u0_m0_wo0_mtree_mult1_35_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_add_1_q <= u0_m0_wo0_mtree_mult1_35_add_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_add_3(ADD,338)@11 + 1
    u0_m0_wo0_mtree_mult1_35_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_35_add_1_q(13)) & u0_m0_wo0_mtree_mult1_35_add_1_q));
    u0_m0_wo0_mtree_mult1_35_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_35_shift2_q(13)) & u0_m0_wo0_mtree_mult1_35_shift2_q));
    u0_m0_wo0_mtree_mult1_35_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_add_3_q <= u0_m0_wo0_mtree_mult1_35_add_3_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_shift4(BITSHIFT,339)@12
    u0_m0_wo0_mtree_mult1_35_shift4_qint <= u0_m0_wo0_mtree_mult1_35_add_3_q & "00";
    u0_m0_wo0_mtree_mult1_35_shift4_q <= u0_m0_wo0_mtree_mult1_35_shift4_qint(16 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr26(DELAY,45)@10
    u0_m0_wo0_wi0_r0_delayr26 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr25_q, xout => u0_m0_wo0_wi0_r0_delayr26_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_34_shift2(BITSHIFT,342)@10
    u0_m0_wo0_mtree_mult1_34_shift2_qint <= u0_m0_wo0_wi0_r0_delayr26_q & "000";
    u0_m0_wo0_mtree_mult1_34_shift2_q <= u0_m0_wo0_mtree_mult1_34_shift2_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_34_sub_3(SUB,343)@10 + 1
    u0_m0_wo0_mtree_mult1_34_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_34_shift2_q(12)) & u0_m0_wo0_mtree_mult1_34_shift2_q));
    u0_m0_wo0_mtree_mult1_34_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr26_q(9)) & u0_m0_wo0_wi0_r0_delayr26_q));
    u0_m0_wo0_mtree_mult1_34_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_34_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_34_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_34_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_34_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_34_sub_3_q <= u0_m0_wo0_mtree_mult1_34_sub_3_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_34_shift4(BITSHIFT,344)@11
    u0_m0_wo0_mtree_mult1_34_shift4_qint <= u0_m0_wo0_mtree_mult1_34_sub_3_q & "0000";
    u0_m0_wo0_mtree_mult1_34_shift4_q <= u0_m0_wo0_mtree_mult1_34_shift4_qint(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_34_shift0(BITSHIFT,340)@10
    u0_m0_wo0_mtree_mult1_34_shift0_qint <= u0_m0_wo0_wi0_r0_delayr26_q & "00";
    u0_m0_wo0_mtree_mult1_34_shift0_q <= u0_m0_wo0_mtree_mult1_34_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_34_sub_1(SUB,341)@10 + 1
    u0_m0_wo0_mtree_mult1_34_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr26_q(9)) & u0_m0_wo0_wi0_r0_delayr26_q));
    u0_m0_wo0_mtree_mult1_34_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_34_shift0_q(11)) & u0_m0_wo0_mtree_mult1_34_shift0_q));
    u0_m0_wo0_mtree_mult1_34_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_34_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_34_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_34_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_34_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_34_sub_1_q <= u0_m0_wo0_mtree_mult1_34_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_34_add_5(ADD,345)@11 + 1
    u0_m0_wo0_mtree_mult1_34_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 13 => u0_m0_wo0_mtree_mult1_34_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_34_sub_1_q));
    u0_m0_wo0_mtree_mult1_34_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_34_shift4_q(17)) & u0_m0_wo0_mtree_mult1_34_shift4_q));
    u0_m0_wo0_mtree_mult1_34_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_34_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_34_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_34_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_34_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_34_add_5_q <= u0_m0_wo0_mtree_mult1_34_add_5_o(18 downto 0);

    -- u0_m0_wo0_mtree_add0_17(ADD,222)@12 + 1
    u0_m0_wo0_mtree_add0_17_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_34_add_5_q);
    u0_m0_wo0_mtree_add0_17_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_mult1_35_shift4_q(16)) & u0_m0_wo0_mtree_mult1_35_shift4_q));
    u0_m0_wo0_mtree_add0_17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_17_a) + SIGNED(u0_m0_wo0_mtree_add0_17_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_17_q <= u0_m0_wo0_mtree_add0_17_o(18 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr27(DELAY,46)@10
    u0_m0_wo0_wi0_r0_delayr27 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr26_q, xout => u0_m0_wo0_wi0_r0_delayr27_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr27_q_11(DELAY,474)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr27_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr27_q, xout => d_u0_m0_wo0_wi0_r0_delayr27_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_33_shift2(BITSHIFT,348)@11
    u0_m0_wo0_mtree_mult1_33_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr27_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_33_shift2_q <= u0_m0_wo0_mtree_mult1_33_shift2_qint(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_shift0(BITSHIFT,346)@10
    u0_m0_wo0_mtree_mult1_33_shift0_qint <= u0_m0_wo0_wi0_r0_delayr27_q & "00";
    u0_m0_wo0_mtree_mult1_33_shift0_q <= u0_m0_wo0_mtree_mult1_33_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_sub_1(SUB,347)@10 + 1
    u0_m0_wo0_mtree_mult1_33_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr27_q(9)) & u0_m0_wo0_wi0_r0_delayr27_q));
    u0_m0_wo0_mtree_mult1_33_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_33_shift0_q(11)) & u0_m0_wo0_mtree_mult1_33_shift0_q));
    u0_m0_wo0_mtree_mult1_33_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_33_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_sub_1_q <= u0_m0_wo0_mtree_mult1_33_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_add_3(ADD,349)@11 + 1
    u0_m0_wo0_mtree_mult1_33_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 13 => u0_m0_wo0_mtree_mult1_33_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_33_sub_1_q));
    u0_m0_wo0_mtree_mult1_33_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_33_shift2_q(14)) & u0_m0_wo0_mtree_mult1_33_shift2_q));
    u0_m0_wo0_mtree_mult1_33_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_33_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_add_3_q <= u0_m0_wo0_mtree_mult1_33_add_3_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_shift4(BITSHIFT,350)@12
    u0_m0_wo0_mtree_mult1_33_shift4_qint <= u0_m0_wo0_mtree_mult1_33_add_3_q & "00";
    u0_m0_wo0_mtree_mult1_33_shift4_q <= u0_m0_wo0_mtree_mult1_33_shift4_qint(17 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr28(DELAY,47)@10
    u0_m0_wo0_wi0_r0_delayr28 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr27_q, xout => u0_m0_wo0_wi0_r0_delayr28_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr28_q_11(DELAY,475)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr28_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr28_q, xout => d_u0_m0_wo0_wi0_r0_delayr28_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_32_shift2(BITSHIFT,353)@11
    u0_m0_wo0_mtree_mult1_32_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr28_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_32_shift2_q <= u0_m0_wo0_mtree_mult1_32_shift2_qint(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_shift0(BITSHIFT,351)@10
    u0_m0_wo0_mtree_mult1_32_shift0_qint <= u0_m0_wo0_wi0_r0_delayr28_q & "00";
    u0_m0_wo0_mtree_mult1_32_shift0_q <= u0_m0_wo0_mtree_mult1_32_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_sub_1(SUB,352)@10 + 1
    u0_m0_wo0_mtree_mult1_32_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr28_q(9)) & u0_m0_wo0_wi0_r0_delayr28_q));
    u0_m0_wo0_mtree_mult1_32_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_32_shift0_q(11)) & u0_m0_wo0_mtree_mult1_32_shift0_q));
    u0_m0_wo0_mtree_mult1_32_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_32_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_sub_1_q <= u0_m0_wo0_mtree_mult1_32_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_add_3(ADD,354)@11 + 1
    u0_m0_wo0_mtree_mult1_32_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 13 => u0_m0_wo0_mtree_mult1_32_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_32_sub_1_q));
    u0_m0_wo0_mtree_mult1_32_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_32_shift2_q(15)) & u0_m0_wo0_mtree_mult1_32_shift2_q));
    u0_m0_wo0_mtree_mult1_32_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_32_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_add_3_q <= u0_m0_wo0_mtree_mult1_32_add_3_o(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_shift4(BITSHIFT,355)@12
    u0_m0_wo0_mtree_mult1_32_shift4_qint <= u0_m0_wo0_mtree_mult1_32_add_3_q & "0";
    u0_m0_wo0_mtree_mult1_32_shift4_q <= u0_m0_wo0_mtree_mult1_32_shift4_qint(17 downto 0);

    -- u0_m0_wo0_mtree_add0_16(ADD,221)@12 + 1
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_32_shift4_q(17)) & u0_m0_wo0_mtree_mult1_32_shift4_q));
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_33_shift4_q(17)) & u0_m0_wo0_mtree_mult1_33_shift4_q));
    u0_m0_wo0_mtree_add0_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(18 downto 0);

    -- u0_m0_wo0_mtree_add1_8(ADD,243)@13 + 1
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add0_16_q(18)) & u0_m0_wo0_mtree_add0_16_q));
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add0_17_q(18)) & u0_m0_wo0_mtree_add0_17_q));
    u0_m0_wo0_mtree_add1_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(19 downto 0);

    -- u0_m0_wo0_mtree_add2_4(ADD,254)@14 + 1
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add1_8_q(19)) & u0_m0_wo0_mtree_add1_8_q));
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add1_9_q(19)) & u0_m0_wo0_mtree_add1_9_q));
    u0_m0_wo0_mtree_add2_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(20 downto 0);

    -- u0_m0_wo0_mtree_add3_2(ADD,260)@15 + 1
    u0_m0_wo0_mtree_add3_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_add2_4_q(20)) & u0_m0_wo0_mtree_add2_4_q));
    u0_m0_wo0_mtree_add3_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => u0_m0_wo0_mtree_add2_5_q(19)) & u0_m0_wo0_mtree_add2_5_q));
    u0_m0_wo0_mtree_add3_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_2_a) + SIGNED(u0_m0_wo0_mtree_add3_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_2_q <= u0_m0_wo0_mtree_add3_2_o(21 downto 0);

    -- u0_m0_wo0_mtree_add4_1(ADD,263)@16 + 1
    u0_m0_wo0_mtree_add4_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add3_2_q(21)) & u0_m0_wo0_mtree_add3_2_q));
    u0_m0_wo0_mtree_add4_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 18 => u0_m0_wo0_mtree_add3_3_q(17)) & u0_m0_wo0_mtree_add3_3_q));
    u0_m0_wo0_mtree_add4_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_1_a) + SIGNED(u0_m0_wo0_mtree_add4_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_1_q <= u0_m0_wo0_mtree_add4_1_o(22 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr29(DELAY,48)@10
    u0_m0_wo0_wi0_r0_delayr29 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr28_q, xout => u0_m0_wo0_wi0_r0_delayr29_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr29_q_11(DELAY,476)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr29_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr29_q, xout => d_u0_m0_wo0_wi0_r0_delayr29_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_31_shift2(BITSHIFT,358)@11
    u0_m0_wo0_mtree_mult1_31_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr29_q_11_q & "0000000";
    u0_m0_wo0_mtree_mult1_31_shift2_q <= u0_m0_wo0_mtree_mult1_31_shift2_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_shift0(BITSHIFT,356)@10
    u0_m0_wo0_mtree_mult1_31_shift0_qint <= u0_m0_wo0_wi0_r0_delayr29_q & "00";
    u0_m0_wo0_mtree_mult1_31_shift0_q <= u0_m0_wo0_mtree_mult1_31_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_sub_1(SUB,357)@10 + 1
    u0_m0_wo0_mtree_mult1_31_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr29_q(9)) & u0_m0_wo0_wi0_r0_delayr29_q));
    u0_m0_wo0_mtree_mult1_31_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_31_shift0_q(11)) & u0_m0_wo0_mtree_mult1_31_shift0_q));
    u0_m0_wo0_mtree_mult1_31_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_31_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_sub_1_q <= u0_m0_wo0_mtree_mult1_31_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_add_3(ADD,359)@11 + 1
    u0_m0_wo0_mtree_mult1_31_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 13 => u0_m0_wo0_mtree_mult1_31_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_31_sub_1_q));
    u0_m0_wo0_mtree_mult1_31_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_31_shift2_q(16)) & u0_m0_wo0_mtree_mult1_31_shift2_q));
    u0_m0_wo0_mtree_mult1_31_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_add_3_q <= u0_m0_wo0_mtree_mult1_31_add_3_o(17 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr30(DELAY,49)@10
    u0_m0_wo0_wi0_r0_delayr30 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr29_q, xout => u0_m0_wo0_wi0_r0_delayr30_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr30_q_11(DELAY,477)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr30_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr30_q, xout => d_u0_m0_wo0_wi0_r0_delayr30_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_30_shift0(BITSHIFT,360)@11
    u0_m0_wo0_mtree_mult1_30_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr30_q_11_q & "0000000";
    u0_m0_wo0_mtree_mult1_30_shift0_q <= u0_m0_wo0_mtree_mult1_30_shift0_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_30_sub_1(SUB,361)@11 + 1
    u0_m0_wo0_mtree_mult1_30_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_30_shift0_q(16)) & u0_m0_wo0_mtree_mult1_30_shift0_q));
    u0_m0_wo0_mtree_mult1_30_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 10 => d_u0_m0_wo0_wi0_r0_delayr30_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr30_q_11_q));
    u0_m0_wo0_mtree_mult1_30_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_30_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_30_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_30_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_30_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_30_sub_1_q <= u0_m0_wo0_mtree_mult1_30_sub_1_o(17 downto 0);

    -- u0_m0_wo0_mtree_add0_15(ADD,220)@12 + 1
    u0_m0_wo0_mtree_add0_15_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_30_sub_1_q(17)) & u0_m0_wo0_mtree_mult1_30_sub_1_q));
    u0_m0_wo0_mtree_add0_15_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_31_add_3_q(17)) & u0_m0_wo0_mtree_mult1_31_add_3_q));
    u0_m0_wo0_mtree_add0_15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_15_a) + SIGNED(u0_m0_wo0_mtree_add0_15_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_15_q <= u0_m0_wo0_mtree_add0_15_o(18 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr31(DELAY,50)@10
    u0_m0_wo0_wi0_r0_delayr31 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr30_q, xout => u0_m0_wo0_wi0_r0_delayr31_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr31_q_11(DELAY,478)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr31_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr31_q, xout => d_u0_m0_wo0_wi0_r0_delayr31_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_29_shift2(BITSHIFT,364)@11
    u0_m0_wo0_mtree_mult1_29_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr31_q_11_q & "0000000";
    u0_m0_wo0_mtree_mult1_29_shift2_q <= u0_m0_wo0_mtree_mult1_29_shift2_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_shift0(BITSHIFT,362)@10
    u0_m0_wo0_mtree_mult1_29_shift0_qint <= u0_m0_wo0_wi0_r0_delayr31_q & "00";
    u0_m0_wo0_mtree_mult1_29_shift0_q <= u0_m0_wo0_mtree_mult1_29_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_sub_1(SUB,363)@10 + 1
    u0_m0_wo0_mtree_mult1_29_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr31_q(9)) & u0_m0_wo0_wi0_r0_delayr31_q));
    u0_m0_wo0_mtree_mult1_29_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_29_shift0_q(11)) & u0_m0_wo0_mtree_mult1_29_shift0_q));
    u0_m0_wo0_mtree_mult1_29_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_29_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_sub_1_q <= u0_m0_wo0_mtree_mult1_29_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_add_3(ADD,365)@11 + 1
    u0_m0_wo0_mtree_mult1_29_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 13 => u0_m0_wo0_mtree_mult1_29_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_29_sub_1_q));
    u0_m0_wo0_mtree_mult1_29_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_29_shift2_q(16)) & u0_m0_wo0_mtree_mult1_29_shift2_q));
    u0_m0_wo0_mtree_mult1_29_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_add_3_q <= u0_m0_wo0_mtree_mult1_29_add_3_o(17 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr32(DELAY,51)@10
    u0_m0_wo0_wi0_r0_delayr32 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr31_q, xout => u0_m0_wo0_wi0_r0_delayr32_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr32_q_11(DELAY,479)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr32_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr32_q, xout => d_u0_m0_wo0_wi0_r0_delayr32_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_28_shift2(BITSHIFT,368)@11
    u0_m0_wo0_mtree_mult1_28_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr32_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_28_shift2_q <= u0_m0_wo0_mtree_mult1_28_shift2_qint(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_shift0(BITSHIFT,366)@10
    u0_m0_wo0_mtree_mult1_28_shift0_qint <= u0_m0_wo0_wi0_r0_delayr32_q & "00";
    u0_m0_wo0_mtree_mult1_28_shift0_q <= u0_m0_wo0_mtree_mult1_28_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_sub_1(SUB,367)@10 + 1
    u0_m0_wo0_mtree_mult1_28_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr32_q(9)) & u0_m0_wo0_wi0_r0_delayr32_q));
    u0_m0_wo0_mtree_mult1_28_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_28_shift0_q(11)) & u0_m0_wo0_mtree_mult1_28_shift0_q));
    u0_m0_wo0_mtree_mult1_28_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_28_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_sub_1_q <= u0_m0_wo0_mtree_mult1_28_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_add_3(ADD,369)@11 + 1
    u0_m0_wo0_mtree_mult1_28_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 13 => u0_m0_wo0_mtree_mult1_28_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_28_sub_1_q));
    u0_m0_wo0_mtree_mult1_28_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_28_shift2_q(15)) & u0_m0_wo0_mtree_mult1_28_shift2_q));
    u0_m0_wo0_mtree_mult1_28_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_28_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_add_3_q <= u0_m0_wo0_mtree_mult1_28_add_3_o(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_shift4(BITSHIFT,370)@12
    u0_m0_wo0_mtree_mult1_28_shift4_qint <= u0_m0_wo0_mtree_mult1_28_add_3_q & "0";
    u0_m0_wo0_mtree_mult1_28_shift4_q <= u0_m0_wo0_mtree_mult1_28_shift4_qint(17 downto 0);

    -- u0_m0_wo0_mtree_add0_14(ADD,219)@12 + 1
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_28_shift4_q(17)) & u0_m0_wo0_mtree_mult1_28_shift4_q));
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_29_add_3_q(17)) & u0_m0_wo0_mtree_mult1_29_add_3_q));
    u0_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(18 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,242)@13 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add0_14_q(18)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add0_15_q(18)) & u0_m0_wo0_mtree_add0_15_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(19 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr33(DELAY,52)@10
    u0_m0_wo0_wi0_r0_delayr33 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr32_q, xout => u0_m0_wo0_wi0_r0_delayr33_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr33_q_11(DELAY,480)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr33_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr33_q, xout => d_u0_m0_wo0_wi0_r0_delayr33_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_27_shift2(BITSHIFT,373)@11
    u0_m0_wo0_mtree_mult1_27_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr33_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_27_shift2_q <= u0_m0_wo0_mtree_mult1_27_shift2_qint(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_shift0(BITSHIFT,371)@10
    u0_m0_wo0_mtree_mult1_27_shift0_qint <= u0_m0_wo0_wi0_r0_delayr33_q & "00";
    u0_m0_wo0_mtree_mult1_27_shift0_q <= u0_m0_wo0_mtree_mult1_27_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_sub_1(SUB,372)@10 + 1
    u0_m0_wo0_mtree_mult1_27_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr33_q(9)) & u0_m0_wo0_wi0_r0_delayr33_q));
    u0_m0_wo0_mtree_mult1_27_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_27_shift0_q(11)) & u0_m0_wo0_mtree_mult1_27_shift0_q));
    u0_m0_wo0_mtree_mult1_27_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_27_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_sub_1_q <= u0_m0_wo0_mtree_mult1_27_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_add_3(ADD,374)@11 + 1
    u0_m0_wo0_mtree_mult1_27_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 13 => u0_m0_wo0_mtree_mult1_27_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_27_sub_1_q));
    u0_m0_wo0_mtree_mult1_27_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_27_shift2_q(14)) & u0_m0_wo0_mtree_mult1_27_shift2_q));
    u0_m0_wo0_mtree_mult1_27_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_add_3_q <= u0_m0_wo0_mtree_mult1_27_add_3_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_shift4(BITSHIFT,375)@12
    u0_m0_wo0_mtree_mult1_27_shift4_qint <= u0_m0_wo0_mtree_mult1_27_add_3_q & "00";
    u0_m0_wo0_mtree_mult1_27_shift4_q <= u0_m0_wo0_mtree_mult1_27_shift4_qint(17 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr34(DELAY,53)@10
    u0_m0_wo0_wi0_r0_delayr34 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr33_q, xout => u0_m0_wo0_wi0_r0_delayr34_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_26_shift2(BITSHIFT,378)@10
    u0_m0_wo0_mtree_mult1_26_shift2_qint <= u0_m0_wo0_wi0_r0_delayr34_q & "000";
    u0_m0_wo0_mtree_mult1_26_shift2_q <= u0_m0_wo0_mtree_mult1_26_shift2_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_sub_3(SUB,379)@10 + 1
    u0_m0_wo0_mtree_mult1_26_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_26_shift2_q(12)) & u0_m0_wo0_mtree_mult1_26_shift2_q));
    u0_m0_wo0_mtree_mult1_26_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr34_q(9)) & u0_m0_wo0_wi0_r0_delayr34_q));
    u0_m0_wo0_mtree_mult1_26_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_26_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_26_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_26_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_26_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_26_sub_3_q <= u0_m0_wo0_mtree_mult1_26_sub_3_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_shift4(BITSHIFT,380)@11
    u0_m0_wo0_mtree_mult1_26_shift4_qint <= u0_m0_wo0_mtree_mult1_26_sub_3_q & "0000";
    u0_m0_wo0_mtree_mult1_26_shift4_q <= u0_m0_wo0_mtree_mult1_26_shift4_qint(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_shift0(BITSHIFT,376)@10
    u0_m0_wo0_mtree_mult1_26_shift0_qint <= u0_m0_wo0_wi0_r0_delayr34_q & "00";
    u0_m0_wo0_mtree_mult1_26_shift0_q <= u0_m0_wo0_mtree_mult1_26_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_sub_1(SUB,377)@10 + 1
    u0_m0_wo0_mtree_mult1_26_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr34_q(9)) & u0_m0_wo0_wi0_r0_delayr34_q));
    u0_m0_wo0_mtree_mult1_26_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_26_shift0_q(11)) & u0_m0_wo0_mtree_mult1_26_shift0_q));
    u0_m0_wo0_mtree_mult1_26_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_26_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_26_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_26_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_26_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_26_sub_1_q <= u0_m0_wo0_mtree_mult1_26_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_add_5(ADD,381)@11 + 1
    u0_m0_wo0_mtree_mult1_26_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 13 => u0_m0_wo0_mtree_mult1_26_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_26_sub_1_q));
    u0_m0_wo0_mtree_mult1_26_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_26_shift4_q(17)) & u0_m0_wo0_mtree_mult1_26_shift4_q));
    u0_m0_wo0_mtree_mult1_26_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_26_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_26_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_26_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_26_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_26_add_5_q <= u0_m0_wo0_mtree_mult1_26_add_5_o(18 downto 0);

    -- u0_m0_wo0_mtree_add0_13(ADD,218)@12 + 1
    u0_m0_wo0_mtree_add0_13_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_26_add_5_q);
    u0_m0_wo0_mtree_add0_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_27_shift4_q(17)) & u0_m0_wo0_mtree_mult1_27_shift4_q));
    u0_m0_wo0_mtree_add0_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_13_a) + SIGNED(u0_m0_wo0_mtree_add0_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_13_q <= u0_m0_wo0_mtree_add0_13_o(18 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr35(DELAY,54)@10
    u0_m0_wo0_wi0_r0_delayr35 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr34_q, xout => u0_m0_wo0_wi0_r0_delayr35_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr35_q_11(DELAY,481)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr35_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr35_q, xout => d_u0_m0_wo0_wi0_r0_delayr35_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_25_shift2(BITSHIFT,384)@11
    u0_m0_wo0_mtree_mult1_25_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr35_q_11_q & "0000";
    u0_m0_wo0_mtree_mult1_25_shift2_q <= u0_m0_wo0_mtree_mult1_25_shift2_qint(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_shift0(BITSHIFT,382)@10
    u0_m0_wo0_mtree_mult1_25_shift0_qint <= u0_m0_wo0_wi0_r0_delayr35_q & "000";
    u0_m0_wo0_mtree_mult1_25_shift0_q <= u0_m0_wo0_mtree_mult1_25_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_add_1(ADD,383)@10 + 1
    u0_m0_wo0_mtree_mult1_25_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr35_q(9)) & u0_m0_wo0_wi0_r0_delayr35_q));
    u0_m0_wo0_mtree_mult1_25_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_25_shift0_q(12)) & u0_m0_wo0_mtree_mult1_25_shift0_q));
    u0_m0_wo0_mtree_mult1_25_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_add_1_q <= u0_m0_wo0_mtree_mult1_25_add_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_add_3(ADD,385)@11 + 1
    u0_m0_wo0_mtree_mult1_25_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_25_add_1_q(13)) & u0_m0_wo0_mtree_mult1_25_add_1_q));
    u0_m0_wo0_mtree_mult1_25_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_25_shift2_q(13)) & u0_m0_wo0_mtree_mult1_25_shift2_q));
    u0_m0_wo0_mtree_mult1_25_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_add_3_q <= u0_m0_wo0_mtree_mult1_25_add_3_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_shift4(BITSHIFT,386)@12
    u0_m0_wo0_mtree_mult1_25_shift4_qint <= u0_m0_wo0_mtree_mult1_25_add_3_q & "00";
    u0_m0_wo0_mtree_mult1_25_shift4_q <= u0_m0_wo0_mtree_mult1_25_shift4_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_shift2(BITSHIFT,389)@10
    u0_m0_wo0_mtree_mult1_24_shift2_qint <= u0_m0_wo0_wi0_r0_delayr36_q & "00";
    u0_m0_wo0_mtree_mult1_24_shift2_q <= u0_m0_wo0_mtree_mult1_24_shift2_qint(11 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr36(DELAY,55)@10
    u0_m0_wo0_wi0_r0_delayr36 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr35_q, xout => u0_m0_wo0_wi0_r0_delayr36_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_24_add_3(ADD,390)@10 + 1
    u0_m0_wo0_mtree_mult1_24_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr36_q(9)) & u0_m0_wo0_wi0_r0_delayr36_q));
    u0_m0_wo0_mtree_mult1_24_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_24_shift2_q(11)) & u0_m0_wo0_mtree_mult1_24_shift2_q));
    u0_m0_wo0_mtree_mult1_24_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_add_3_q <= u0_m0_wo0_mtree_mult1_24_add_3_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_shift4(BITSHIFT,391)@11
    u0_m0_wo0_mtree_mult1_24_shift4_qint <= u0_m0_wo0_mtree_mult1_24_add_3_q & "0000";
    u0_m0_wo0_mtree_mult1_24_shift4_q <= u0_m0_wo0_mtree_mult1_24_shift4_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_shift0(BITSHIFT,387)@10
    u0_m0_wo0_mtree_mult1_24_shift0_qint <= u0_m0_wo0_wi0_r0_delayr36_q & "000";
    u0_m0_wo0_mtree_mult1_24_shift0_q <= u0_m0_wo0_mtree_mult1_24_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_add_1(ADD,388)@10 + 1
    u0_m0_wo0_mtree_mult1_24_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr36_q(9)) & u0_m0_wo0_wi0_r0_delayr36_q));
    u0_m0_wo0_mtree_mult1_24_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_24_shift0_q(12)) & u0_m0_wo0_mtree_mult1_24_shift0_q));
    u0_m0_wo0_mtree_mult1_24_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_add_1_q <= u0_m0_wo0_mtree_mult1_24_add_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_add_5(ADD,392)@11 + 1
    u0_m0_wo0_mtree_mult1_24_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 14 => u0_m0_wo0_mtree_mult1_24_add_1_q(13)) & u0_m0_wo0_mtree_mult1_24_add_1_q));
    u0_m0_wo0_mtree_mult1_24_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_24_shift4_q(16)) & u0_m0_wo0_mtree_mult1_24_shift4_q));
    u0_m0_wo0_mtree_mult1_24_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_add_5_q <= u0_m0_wo0_mtree_mult1_24_add_5_o(17 downto 0);

    -- u0_m0_wo0_mtree_add0_12(ADD,217)@12 + 1
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_24_add_5_q(17)) & u0_m0_wo0_mtree_mult1_24_add_5_q));
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_mult1_25_shift4_q(16)) & u0_m0_wo0_mtree_mult1_25_shift4_q));
    u0_m0_wo0_mtree_add0_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(18 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,241)@13 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add0_12_q(18)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add0_13_q(18)) & u0_m0_wo0_mtree_add0_13_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(19 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,253)@14 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add1_6_q(19)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add1_7_q(19)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(20 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr37(DELAY,56)@10
    u0_m0_wo0_wi0_r0_delayr37 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr36_q, xout => u0_m0_wo0_wi0_r0_delayr37_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr37_q_11(DELAY,482)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr37_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr37_q, xout => d_u0_m0_wo0_wi0_r0_delayr37_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_23_shift2(BITSHIFT,395)@11
    u0_m0_wo0_mtree_mult1_23_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr37_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_23_shift2_q <= u0_m0_wo0_mtree_mult1_23_shift2_qint(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_shift0(BITSHIFT,393)@10
    u0_m0_wo0_mtree_mult1_23_shift0_qint <= u0_m0_wo0_wi0_r0_delayr37_q & "000";
    u0_m0_wo0_mtree_mult1_23_shift0_q <= u0_m0_wo0_mtree_mult1_23_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_sub_1(SUB,394)@10 + 1
    u0_m0_wo0_mtree_mult1_23_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_23_shift0_q(12)) & u0_m0_wo0_mtree_mult1_23_shift0_q));
    u0_m0_wo0_mtree_mult1_23_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr37_q(9)) & u0_m0_wo0_wi0_r0_delayr37_q));
    u0_m0_wo0_mtree_mult1_23_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_sub_1_q <= u0_m0_wo0_mtree_mult1_23_sub_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_add_3(ADD,396)@11 + 1
    u0_m0_wo0_mtree_mult1_23_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_mtree_mult1_23_sub_1_q(13)) & u0_m0_wo0_mtree_mult1_23_sub_1_q));
    u0_m0_wo0_mtree_mult1_23_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_23_shift2_q(14)) & u0_m0_wo0_mtree_mult1_23_shift2_q));
    u0_m0_wo0_mtree_mult1_23_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_add_3_q <= u0_m0_wo0_mtree_mult1_23_add_3_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_shift4(BITSHIFT,397)@12
    u0_m0_wo0_mtree_mult1_23_shift4_qint <= u0_m0_wo0_mtree_mult1_23_add_3_q & "0";
    u0_m0_wo0_mtree_mult1_23_shift4_q <= u0_m0_wo0_mtree_mult1_23_shift4_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_22_shift0(BITSHIFT,398)@11
    u0_m0_wo0_mtree_mult1_22_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr38_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_22_shift0_q <= u0_m0_wo0_mtree_mult1_22_shift0_qint(14 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr38(DELAY,57)@10
    u0_m0_wo0_wi0_r0_delayr38 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr37_q, xout => u0_m0_wo0_wi0_r0_delayr38_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr38_q_11(DELAY,483)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr38_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr38_q, xout => d_u0_m0_wo0_wi0_r0_delayr38_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_22_add_1(ADD,399)@11 + 1
    u0_m0_wo0_mtree_mult1_22_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 10 => d_u0_m0_wo0_wi0_r0_delayr38_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr38_q_11_q));
    u0_m0_wo0_mtree_mult1_22_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_22_shift0_q(14)) & u0_m0_wo0_mtree_mult1_22_shift0_q));
    u0_m0_wo0_mtree_mult1_22_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_22_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_22_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_22_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_22_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_22_add_1_q <= u0_m0_wo0_mtree_mult1_22_add_1_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_22_shift2(BITSHIFT,400)@12
    u0_m0_wo0_mtree_mult1_22_shift2_qint <= u0_m0_wo0_mtree_mult1_22_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_22_shift2_q <= u0_m0_wo0_mtree_mult1_22_shift2_qint(16 downto 0);

    -- u0_m0_wo0_mtree_add0_11(ADD,216)@12 + 1
    u0_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_22_shift2_q(16)) & u0_m0_wo0_mtree_mult1_22_shift2_q));
    u0_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_23_shift4_q(16)) & u0_m0_wo0_mtree_mult1_23_shift4_q));
    u0_m0_wo0_mtree_add0_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_11_a) + SIGNED(u0_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_shift0(BITSHIFT,401)@10
    u0_m0_wo0_mtree_mult1_21_shift0_qint <= u0_m0_wo0_wi0_r0_delayr39_q & "000";
    u0_m0_wo0_mtree_mult1_21_shift0_q <= u0_m0_wo0_mtree_mult1_21_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr39(DELAY,58)@10
    u0_m0_wo0_wi0_r0_delayr39 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr38_q, xout => u0_m0_wo0_wi0_r0_delayr39_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_add_1(ADD,402)@10 + 1
    u0_m0_wo0_mtree_mult1_21_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr39_q(9)) & u0_m0_wo0_wi0_r0_delayr39_q));
    u0_m0_wo0_mtree_mult1_21_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_21_shift0_q(12)) & u0_m0_wo0_mtree_mult1_21_shift0_q));
    u0_m0_wo0_mtree_mult1_21_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_add_1_q <= u0_m0_wo0_mtree_mult1_21_add_1_o(13 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr39_q_11(DELAY,484)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr39_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr39_q, xout => d_u0_m0_wo0_wi0_r0_delayr39_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_shift2(BITSHIFT,403)@11
    u0_m0_wo0_mtree_mult1_21_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr39_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_21_shift2_q <= u0_m0_wo0_mtree_mult1_21_shift2_qint(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_sub_3(SUB,404)@11 + 1
    u0_m0_wo0_mtree_mult1_21_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_21_shift2_q(15)) & u0_m0_wo0_mtree_mult1_21_shift2_q));
    u0_m0_wo0_mtree_mult1_21_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_mtree_mult1_21_add_1_q(13)) & u0_m0_wo0_mtree_mult1_21_add_1_q));
    u0_m0_wo0_mtree_mult1_21_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_21_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_sub_3_q <= u0_m0_wo0_mtree_mult1_21_sub_3_o(16 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr40(DELAY,59)@10
    u0_m0_wo0_wi0_r0_delayr40 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr39_q, xout => u0_m0_wo0_wi0_r0_delayr40_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr40_q_11(DELAY,485)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr40_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr40_q, xout => d_u0_m0_wo0_wi0_r0_delayr40_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_20_shift2(BITSHIFT,407)@11
    u0_m0_wo0_mtree_mult1_20_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr40_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_20_shift2_q <= u0_m0_wo0_mtree_mult1_20_shift2_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_shift0(BITSHIFT,405)@10
    u0_m0_wo0_mtree_mult1_20_shift0_qint <= u0_m0_wo0_wi0_r0_delayr40_q & "0";
    u0_m0_wo0_mtree_mult1_20_shift0_q <= u0_m0_wo0_mtree_mult1_20_shift0_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_add_1(ADD,406)@10 + 1
    u0_m0_wo0_mtree_mult1_20_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => u0_m0_wo0_wi0_r0_delayr40_q(9)) & u0_m0_wo0_wi0_r0_delayr40_q));
    u0_m0_wo0_mtree_mult1_20_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_20_shift0_q(10)) & u0_m0_wo0_mtree_mult1_20_shift0_q));
    u0_m0_wo0_mtree_mult1_20_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_add_1_q <= u0_m0_wo0_mtree_mult1_20_add_1_o(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_add_3(ADD,408)@11 + 1
    u0_m0_wo0_mtree_mult1_20_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => u0_m0_wo0_mtree_mult1_20_add_1_q(11)) & u0_m0_wo0_mtree_mult1_20_add_1_q));
    u0_m0_wo0_mtree_mult1_20_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_20_shift2_q(12)) & u0_m0_wo0_mtree_mult1_20_shift2_q));
    u0_m0_wo0_mtree_mult1_20_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_add_3_q <= u0_m0_wo0_mtree_mult1_20_add_3_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_shift4(BITSHIFT,409)@12
    u0_m0_wo0_mtree_mult1_20_shift4_qint <= u0_m0_wo0_mtree_mult1_20_add_3_q & "00";
    u0_m0_wo0_mtree_mult1_20_shift4_q <= u0_m0_wo0_mtree_mult1_20_shift4_qint(15 downto 0);

    -- u0_m0_wo0_mtree_add0_10(ADD,215)@12 + 1
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => u0_m0_wo0_mtree_mult1_20_shift4_q(15)) & u0_m0_wo0_mtree_mult1_20_shift4_q));
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_21_sub_3_q(16)) & u0_m0_wo0_mtree_mult1_21_sub_3_q));
    u0_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(17 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,240)@13 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_add0_10_q(17)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_add0_11_q(17)) & u0_m0_wo0_mtree_add0_11_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_shift0(BITSHIFT,410)@11
    u0_m0_wo0_mtree_mult1_19_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr41_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_19_shift0_q <= u0_m0_wo0_mtree_mult1_19_shift0_qint(14 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr41(DELAY,60)@10
    u0_m0_wo0_wi0_r0_delayr41 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr40_q, xout => u0_m0_wo0_wi0_r0_delayr41_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr41_q_11(DELAY,486)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr41_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr41_q, xout => d_u0_m0_wo0_wi0_r0_delayr41_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_add_1(ADD,411)@11 + 1
    u0_m0_wo0_mtree_mult1_19_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 10 => d_u0_m0_wo0_wi0_r0_delayr41_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr41_q_11_q));
    u0_m0_wo0_mtree_mult1_19_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_19_shift0_q(14)) & u0_m0_wo0_mtree_mult1_19_shift0_q));
    u0_m0_wo0_mtree_mult1_19_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_add_1_q <= u0_m0_wo0_mtree_mult1_19_add_1_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_shift0(BITSHIFT,412)@10
    u0_m0_wo0_mtree_mult1_18_shift0_qint <= u0_m0_wo0_wi0_r0_delayr42_q & "000";
    u0_m0_wo0_mtree_mult1_18_shift0_q <= u0_m0_wo0_mtree_mult1_18_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr42(DELAY,61)@10
    u0_m0_wo0_wi0_r0_delayr42 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr41_q, xout => u0_m0_wo0_wi0_r0_delayr42_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_18_add_1(ADD,413)@10 + 1
    u0_m0_wo0_mtree_mult1_18_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_wi0_r0_delayr42_q(9)) & u0_m0_wo0_wi0_r0_delayr42_q));
    u0_m0_wo0_mtree_mult1_18_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_18_shift0_q(12)) & u0_m0_wo0_mtree_mult1_18_shift0_q));
    u0_m0_wo0_mtree_mult1_18_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_add_1_q <= u0_m0_wo0_mtree_mult1_18_add_1_o(13 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr42_q_11(DELAY,487)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr42_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr42_q, xout => d_u0_m0_wo0_wi0_r0_delayr42_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_18_shift2(BITSHIFT,414)@11
    u0_m0_wo0_mtree_mult1_18_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr42_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_18_shift2_q <= u0_m0_wo0_mtree_mult1_18_shift2_qint(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_sub_3(SUB,415)@11 + 1
    u0_m0_wo0_mtree_mult1_18_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_18_shift2_q(14)) & u0_m0_wo0_mtree_mult1_18_shift2_q));
    u0_m0_wo0_mtree_mult1_18_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_mtree_mult1_18_add_1_q(13)) & u0_m0_wo0_mtree_mult1_18_add_1_q));
    u0_m0_wo0_mtree_mult1_18_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_sub_3_q <= u0_m0_wo0_mtree_mult1_18_sub_3_o(15 downto 0);

    -- u0_m0_wo0_mtree_add0_9(ADD,214)@12 + 1
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_18_sub_3_q(15)) & u0_m0_wo0_mtree_mult1_18_sub_3_q));
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_19_add_1_q(15)) & u0_m0_wo0_mtree_mult1_19_add_1_q));
    u0_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(16 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr43(DELAY,62)@10
    u0_m0_wo0_wi0_r0_delayr43 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr42_q, xout => u0_m0_wo0_wi0_r0_delayr43_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr43_q_11(DELAY,488)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr43_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr43_q, xout => d_u0_m0_wo0_wi0_r0_delayr43_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_shift0(BITSHIFT,416)@11
    u0_m0_wo0_mtree_mult1_17_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr43_q_11_q & "0000";
    u0_m0_wo0_mtree_mult1_17_shift0_q <= u0_m0_wo0_mtree_mult1_17_shift0_qint(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_sub_1(SUB,417)@11 + 1
    u0_m0_wo0_mtree_mult1_17_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_17_shift0_q(13)) & u0_m0_wo0_mtree_mult1_17_shift0_q));
    u0_m0_wo0_mtree_mult1_17_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 10 => d_u0_m0_wo0_wi0_r0_delayr43_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr43_q_11_q));
    u0_m0_wo0_mtree_mult1_17_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_17_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_sub_1_q <= u0_m0_wo0_mtree_mult1_17_sub_1_o(14 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr44(DELAY,63)@10
    u0_m0_wo0_wi0_r0_delayr44 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr43_q, xout => u0_m0_wo0_wi0_r0_delayr44_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr44_q_12(DELAY,489)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr44_q_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr44_q, xout => d_u0_m0_wo0_wi0_r0_delayr44_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_16_shift0(BITSHIFT,418)@12
    u0_m0_wo0_mtree_mult1_16_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr44_q_12_q & "000";
    u0_m0_wo0_mtree_mult1_16_shift0_q <= u0_m0_wo0_mtree_mult1_16_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_add0_8(ADD,213)@12 + 1
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 13 => u0_m0_wo0_mtree_mult1_16_shift0_q(12)) & u0_m0_wo0_mtree_mult1_16_shift0_q));
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_17_sub_1_q(14)) & u0_m0_wo0_mtree_mult1_17_sub_1_q));
    u0_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(15 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,239)@13 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 16 => u0_m0_wo0_mtree_add0_8_q(15)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_add0_9_q(16)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(18 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,252)@14 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => u0_m0_wo0_mtree_add1_4_q(18)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add1_5_q(19)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(20 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,259)@15 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_add2_2_q(20)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_add2_3_q(20)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(21 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr45(DELAY,64)@10
    u0_m0_wo0_wi0_r0_delayr45 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr44_q, xout => u0_m0_wo0_wi0_r0_delayr45_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr45_q_12(DELAY,490)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr45_q_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr45_q, xout => d_u0_m0_wo0_wi0_r0_delayr45_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_15_shift0(BITSHIFT,419)@12
    u0_m0_wo0_mtree_mult1_15_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr45_q_12_q & "0";
    u0_m0_wo0_mtree_mult1_15_shift0_q <= u0_m0_wo0_mtree_mult1_15_shift0_qint(10 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr46(DELAY,65)@10
    u0_m0_wo0_wi0_r0_delayr46 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr45_q, xout => u0_m0_wo0_wi0_r0_delayr46_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr46_q_11(DELAY,491)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr46_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr46_q, xout => d_u0_m0_wo0_wi0_r0_delayr46_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_14_sub_0(SUB,420)@11 + 1
    u0_m0_wo0_mtree_mult1_14_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_14_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => d_u0_m0_wo0_wi0_r0_delayr46_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr46_q_11_q));
    u0_m0_wo0_mtree_mult1_14_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_14_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_14_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_14_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_14_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_14_sub_0_q <= u0_m0_wo0_mtree_mult1_14_sub_0_o(10 downto 0);

    -- u0_m0_wo0_mtree_add0_7(ADD,212)@12 + 1
    u0_m0_wo0_mtree_add0_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_14_sub_0_q(10)) & u0_m0_wo0_mtree_mult1_14_sub_0_q));
    u0_m0_wo0_mtree_add0_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_15_shift0_q(10)) & u0_m0_wo0_mtree_mult1_15_shift0_q));
    u0_m0_wo0_mtree_add0_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_7_a) + SIGNED(u0_m0_wo0_mtree_add0_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(11 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr47(DELAY,66)@10
    u0_m0_wo0_wi0_r0_delayr47 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr46_q, xout => u0_m0_wo0_wi0_r0_delayr47_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr47_q_11(DELAY,492)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr47_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr47_q, xout => d_u0_m0_wo0_wi0_r0_delayr47_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_13_shift0(BITSHIFT,421)@11
    u0_m0_wo0_mtree_mult1_13_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr47_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_13_shift0_q <= u0_m0_wo0_mtree_mult1_13_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_sub_1(SUB,422)@11 + 1
    u0_m0_wo0_mtree_mult1_13_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_13_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_13_shift0_q(11)) & u0_m0_wo0_mtree_mult1_13_shift0_q));
    u0_m0_wo0_mtree_mult1_13_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_sub_1_q <= u0_m0_wo0_mtree_mult1_13_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_shift0(BITSHIFT,423)@11
    u0_m0_wo0_mtree_mult1_12_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr48_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_12_shift0_q <= u0_m0_wo0_mtree_mult1_12_shift0_qint(11 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr48(DELAY,67)@10
    u0_m0_wo0_wi0_r0_delayr48 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr47_q, xout => u0_m0_wo0_wi0_r0_delayr48_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr48_q_11(DELAY,493)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr48_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr48_q, xout => d_u0_m0_wo0_wi0_r0_delayr48_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_12_sub_1(SUB,424)@11 + 1
    u0_m0_wo0_mtree_mult1_12_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => d_u0_m0_wo0_wi0_r0_delayr48_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr48_q_11_q));
    u0_m0_wo0_mtree_mult1_12_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_12_shift0_q(11)) & u0_m0_wo0_mtree_mult1_12_shift0_q));
    u0_m0_wo0_mtree_mult1_12_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_12_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_sub_1_q <= u0_m0_wo0_mtree_mult1_12_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_shift2(BITSHIFT,425)@12
    u0_m0_wo0_mtree_mult1_12_shift2_qint <= u0_m0_wo0_mtree_mult1_12_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_12_shift2_q <= u0_m0_wo0_mtree_mult1_12_shift2_qint(13 downto 0);

    -- u0_m0_wo0_mtree_add0_6(ADD,211)@12 + 1
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_12_shift2_q(13)) & u0_m0_wo0_mtree_mult1_12_shift2_q));
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => u0_m0_wo0_mtree_mult1_13_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_13_sub_1_q));
    u0_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(14 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,238)@13 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_add0_6_q(14)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 12 => u0_m0_wo0_mtree_add0_7_q(11)) & u0_m0_wo0_mtree_add0_7_q));
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_shift0(BITSHIFT,426)@11
    u0_m0_wo0_mtree_mult1_11_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr49_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_11_shift0_q <= u0_m0_wo0_mtree_mult1_11_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr49(DELAY,68)@10
    u0_m0_wo0_wi0_r0_delayr49 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr48_q, xout => u0_m0_wo0_wi0_r0_delayr49_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr49_q_11(DELAY,494)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr49_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr49_q, xout => d_u0_m0_wo0_wi0_r0_delayr49_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_11_sub_1(SUB,427)@11 + 1
    u0_m0_wo0_mtree_mult1_11_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => d_u0_m0_wo0_wi0_r0_delayr49_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr49_q_11_q));
    u0_m0_wo0_mtree_mult1_11_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_11_shift0_q(12)) & u0_m0_wo0_mtree_mult1_11_shift0_q));
    u0_m0_wo0_mtree_mult1_11_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_sub_1_q <= u0_m0_wo0_mtree_mult1_11_sub_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_10_shift0(BITSHIFT,428)@11
    u0_m0_wo0_mtree_mult1_10_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr50_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_10_shift0_q <= u0_m0_wo0_mtree_mult1_10_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr50(DELAY,69)@10
    u0_m0_wo0_wi0_r0_delayr50 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr49_q, xout => u0_m0_wo0_wi0_r0_delayr50_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr50_q_11(DELAY,495)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr50_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr50_q, xout => d_u0_m0_wo0_wi0_r0_delayr50_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_10_sub_1(SUB,429)@11 + 1
    u0_m0_wo0_mtree_mult1_10_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => d_u0_m0_wo0_wi0_r0_delayr50_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr50_q_11_q));
    u0_m0_wo0_mtree_mult1_10_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_10_shift0_q(12)) & u0_m0_wo0_mtree_mult1_10_shift0_q));
    u0_m0_wo0_mtree_mult1_10_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_10_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_10_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_10_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_10_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_10_sub_1_q <= u0_m0_wo0_mtree_mult1_10_sub_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_add0_5(ADD,210)@12 + 1
    u0_m0_wo0_mtree_add0_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_10_sub_1_q(13)) & u0_m0_wo0_mtree_mult1_10_sub_1_q));
    u0_m0_wo0_mtree_add0_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_11_sub_1_q(13)) & u0_m0_wo0_mtree_mult1_11_sub_1_q));
    u0_m0_wo0_mtree_add0_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_5_a) + SIGNED(u0_m0_wo0_mtree_add0_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_5_q <= u0_m0_wo0_mtree_add0_5_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_shift0(BITSHIFT,430)@11
    u0_m0_wo0_mtree_mult1_9_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr51_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_9_shift0_q <= u0_m0_wo0_mtree_mult1_9_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr51(DELAY,70)@10
    u0_m0_wo0_wi0_r0_delayr51 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr50_q, xout => u0_m0_wo0_wi0_r0_delayr51_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr51_q_11(DELAY,496)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr51_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr51_q, xout => d_u0_m0_wo0_wi0_r0_delayr51_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_9_sub_1(SUB,431)@11 + 1
    u0_m0_wo0_mtree_mult1_9_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => d_u0_m0_wo0_wi0_r0_delayr51_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr51_q_11_q));
    u0_m0_wo0_mtree_mult1_9_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_9_shift0_q(12)) & u0_m0_wo0_mtree_mult1_9_shift0_q));
    u0_m0_wo0_mtree_mult1_9_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_9_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_sub_1_q <= u0_m0_wo0_mtree_mult1_9_sub_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_shift0(BITSHIFT,432)@11
    u0_m0_wo0_mtree_mult1_8_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr52_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_8_shift0_q <= u0_m0_wo0_mtree_mult1_8_shift0_qint(11 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr52(DELAY,71)@10
    u0_m0_wo0_wi0_r0_delayr52 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr51_q, xout => u0_m0_wo0_wi0_r0_delayr52_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr52_q_11(DELAY,497)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr52_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr52_q, xout => d_u0_m0_wo0_wi0_r0_delayr52_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_8_sub_1(SUB,433)@11 + 1
    u0_m0_wo0_mtree_mult1_8_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => d_u0_m0_wo0_wi0_r0_delayr52_q_11_q(9)) & d_u0_m0_wo0_wi0_r0_delayr52_q_11_q));
    u0_m0_wo0_mtree_mult1_8_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_8_shift0_q(11)) & u0_m0_wo0_mtree_mult1_8_shift0_q));
    u0_m0_wo0_mtree_mult1_8_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_8_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_sub_1_q <= u0_m0_wo0_mtree_mult1_8_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_shift2(BITSHIFT,434)@12
    u0_m0_wo0_mtree_mult1_8_shift2_qint <= u0_m0_wo0_mtree_mult1_8_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_8_shift2_q <= u0_m0_wo0_mtree_mult1_8_shift2_qint(13 downto 0);

    -- u0_m0_wo0_mtree_add0_4(ADD,209)@12 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_8_shift2_q(13)) & u0_m0_wo0_mtree_mult1_8_shift2_q));
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_9_sub_1_q(13)) & u0_m0_wo0_mtree_mult1_9_sub_1_q));
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(14 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,237)@13 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_add0_4_q(14)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_add0_5_q(14)) & u0_m0_wo0_mtree_add0_5_q));
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(15 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,251)@14 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add1_2_q(15)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add1_3_q(15)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(16 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr53(DELAY,72)@10
    u0_m0_wo0_wi0_r0_delayr53 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr52_q, xout => u0_m0_wo0_wi0_r0_delayr53_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr53_q_11(DELAY,498)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr53_q_11 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr53_q, xout => d_u0_m0_wo0_wi0_r0_delayr53_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_7_shift1(BITSHIFT,436)@11
    u0_m0_wo0_mtree_mult1_7_shift1_qint <= d_u0_m0_wo0_wi0_r0_delayr53_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_7_shift1_q <= u0_m0_wo0_mtree_mult1_7_shift1_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_sub_0(SUB,435)@10 + 1
    u0_m0_wo0_mtree_mult1_7_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_7_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_wi0_r0_delayr53_q(9)) & u0_m0_wo0_wi0_r0_delayr53_q));
    u0_m0_wo0_mtree_mult1_7_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_7_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_sub_0_q <= u0_m0_wo0_mtree_mult1_7_sub_0_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_sub_2(SUB,437)@11 + 1
    u0_m0_wo0_mtree_mult1_7_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => u0_m0_wo0_mtree_mult1_7_sub_0_q(10)) & u0_m0_wo0_mtree_mult1_7_sub_0_q));
    u0_m0_wo0_mtree_mult1_7_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_7_shift1_q(11)) & u0_m0_wo0_mtree_mult1_7_shift1_q));
    u0_m0_wo0_mtree_mult1_7_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_7_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_sub_2_q <= u0_m0_wo0_mtree_mult1_7_sub_2_o(12 downto 0);

    -- d_u0_m0_wo0_memread_q_11(DELAY,446)@10 + 1
    d_u0_m0_wo0_memread_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_11(DELAY,448)@10 + 1
    d_u0_m0_wo0_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_compute_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr54(DELAY,73)@11
    u0_m0_wo0_wi0_r0_delayr54 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_r0_delayr53_q_11_q, xout => u0_m0_wo0_wi0_r0_delayr54_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_6_shift0(BITSHIFT,438)@11
    u0_m0_wo0_mtree_mult1_6_shift0_qint <= u0_m0_wo0_wi0_r0_delayr54_q & "00";
    u0_m0_wo0_mtree_mult1_6_shift0_q <= u0_m0_wo0_mtree_mult1_6_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_6_sub_1(SUB,439)@11 + 1
    u0_m0_wo0_mtree_mult1_6_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_6_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_6_shift0_q(11)) & u0_m0_wo0_mtree_mult1_6_shift0_q));
    u0_m0_wo0_mtree_mult1_6_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_6_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_6_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_6_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_6_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_6_sub_1_q <= u0_m0_wo0_mtree_mult1_6_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_add0_3(ADD,208)@12 + 1
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_6_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_6_sub_1_q));
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_7_sub_2_q(12)) & u0_m0_wo0_mtree_mult1_7_sub_2_q));
    u0_m0_wo0_mtree_add0_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_shift0(BITSHIFT,440)@11
    u0_m0_wo0_mtree_mult1_5_shift0_qint <= u0_m0_wo0_wi0_r0_delayr55_q & "00";
    u0_m0_wo0_mtree_mult1_5_shift0_q <= u0_m0_wo0_mtree_mult1_5_shift0_qint(11 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr55(DELAY,74)@11
    u0_m0_wo0_wi0_r0_delayr55 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr54_q, xout => u0_m0_wo0_wi0_r0_delayr55_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_5_sub_1(SUB,441)@11 + 1
    u0_m0_wo0_mtree_mult1_5_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_wi0_r0_delayr55_q(9)) & u0_m0_wo0_wi0_r0_delayr55_q));
    u0_m0_wo0_mtree_mult1_5_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_5_shift0_q(11)) & u0_m0_wo0_mtree_mult1_5_shift0_q));
    u0_m0_wo0_mtree_mult1_5_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_sub_1_q <= u0_m0_wo0_mtree_mult1_5_sub_1_o(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr56(DELAY,75)@11
    u0_m0_wo0_wi0_r0_delayr56 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr55_q, xout => u0_m0_wo0_wi0_r0_delayr56_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_4_shift0(BITSHIFT,442)@11
    u0_m0_wo0_mtree_mult1_4_shift0_qint <= u0_m0_wo0_wi0_r0_delayr56_q & "0";
    u0_m0_wo0_mtree_mult1_4_shift0_q <= u0_m0_wo0_mtree_mult1_4_shift0_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_sub_1(SUB,443)@11 + 1
    u0_m0_wo0_mtree_mult1_4_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_4_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_4_shift0_q(10)) & u0_m0_wo0_mtree_mult1_4_shift0_q));
    u0_m0_wo0_mtree_mult1_4_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_4_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_sub_1_q <= u0_m0_wo0_mtree_mult1_4_sub_1_o(11 downto 0);

    -- u0_m0_wo0_mtree_add0_2(ADD,207)@12 + 1
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => u0_m0_wo0_mtree_mult1_4_sub_1_q(11)) & u0_m0_wo0_mtree_mult1_4_sub_1_q));
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_5_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_5_sub_1_q));
    u0_m0_wo0_mtree_add0_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(13 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,236)@13 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_mtree_add0_2_q(13)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_mtree_add0_3_q(13)) & u0_m0_wo0_mtree_add0_3_q));
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(15 downto 0);

    -- d_u0_m0_wo0_memread_q_12(DELAY,447)@11 + 1
    d_u0_m0_wo0_memread_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_11_q, xout => d_u0_m0_wo0_memread_q_12_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_12(DELAY,449)@11 + 1
    d_u0_m0_wo0_compute_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_11_q, xout => d_u0_m0_wo0_compute_q_12_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr56_q_12(DELAY,499)@11 + 1
    d_u0_m0_wo0_wi0_r0_delayr56_q_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr56_q, xout => d_u0_m0_wo0_wi0_r0_delayr56_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr57(DELAY,76)@12
    u0_m0_wo0_wi0_r0_delayr57 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_r0_delayr56_q_12_q, xout => u0_m0_wo0_wi0_r0_delayr57_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_3_sub_0(SUB,444)@12 + 1
    u0_m0_wo0_mtree_mult1_3_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_3_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_wi0_r0_delayr57_q(9)) & u0_m0_wo0_wi0_r0_delayr57_q));
    u0_m0_wo0_mtree_mult1_3_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_3_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_sub_0_q <= u0_m0_wo0_mtree_mult1_3_sub_0_o(10 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr58(DELAY,77)@12
    u0_m0_wo0_wi0_r0_delayr58 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr57_q, xout => u0_m0_wo0_wi0_r0_delayr58_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_2_sub_0(SUB,445)@12 + 1
    u0_m0_wo0_mtree_mult1_2_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_2_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_wi0_r0_delayr58_q(9)) & u0_m0_wo0_wi0_r0_delayr58_q));
    u0_m0_wo0_mtree_mult1_2_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_2_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_2_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_2_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_2_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_2_sub_0_q <= u0_m0_wo0_mtree_mult1_2_sub_0_o(10 downto 0);

    -- u0_m0_wo0_mtree_add0_1(ADD,206)@13 + 1
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_2_sub_0_q(10)) & u0_m0_wo0_mtree_mult1_2_sub_0_q));
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_3_sub_0_q(10)) & u0_m0_wo0_mtree_mult1_3_sub_0_q));
    u0_m0_wo0_mtree_add0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(11 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,250)@14 + 1
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 12 => u0_m0_wo0_mtree_add0_1_q(11)) & u0_m0_wo0_mtree_add0_1_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add1_1_q(15)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(16 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,258)@15 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_add2_0_q(16)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_add2_1_q(16)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(17 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,262)@16 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 18 => u0_m0_wo0_mtree_add3_0_q(17)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add3_1_q(21)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(22 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,264)@17 + 1
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add4_0_q(22)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add4_1_q(22)) & u0_m0_wo0_mtree_add4_1_q));
    u0_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(23 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_u0_m0_wo0_compute_q_17(DELAY,450)@12 + 5
    d_u0_m0_wo0_compute_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_12_q, xout => d_u0_m0_wo0_compute_q_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_oseq_gated_reg(REG,265)@17 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_17_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,270)@18 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add5_0_q;

END normal;
