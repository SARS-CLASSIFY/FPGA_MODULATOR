- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/07/2014 13:09:51"
                                                            
-- Vhdl Test Bench template for design  :  AskDemod
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AskDemod_vhd_tst IS
END AskDemod_vhd_tst;
ARCHITECTURE AskDemod_arch OF AskDemod_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL din : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dout : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT AskDemod
	PORT (
	clk : IN STD_LOGIC;
	din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dout : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AskDemod
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	din => din,
	dout => dout,
	rst => rst
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END AskDemod_arch;
