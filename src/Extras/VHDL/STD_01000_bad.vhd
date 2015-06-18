-------------------------------------------------------------------------------------------------
-- Company   : CNES
-- Author    : Mickael Carl (CNES)
-- Copyright : Copyright (c) CNES. 
-- Licensing : GNU GPLv3
-------------------------------------------------------------------------------------------------
-- Version         : V1
-- Version history : 
--    V1 : 2015-04-08 : Mickael Carl (CNES): Creation
-------------------------------------------------------------------------------------------------
-- File name          : STD_01000_bad.vhd
-- File Creation date : 2015-04-08
-- Project name       : VHDL Handbook CNES Edition 
-------------------------------------------------------------------------------------------------
-- Softwares             :  Microsoft Windows (Windows 7) - Editor (Eclipse + VEditor)
-------------------------------------------------------------------------------------------------
-- Description : Handbook example: Number of entities per file: bad example
--
-- Limitations : This file is an example of the VHDL handbook made by CNES. It is a stub aimed at
--               demonstrating good practices in VHDL and as such, its design is minimalistic.
--               It is provided as is, without any warranty.
--               This example is compliant with the Handbook version 1.
--
-------------------------------------------------------------------------------------------------
-- Naming conventions: 
--
-- i_Port: Input entity port
-- o_Port: Output entity port
-- b_Port: Bidirectional entity port
-- g_My_Generic: Generic entity port
--
-- c_My_Constant: Constant definition 
-- t_My_Type: Custom type definition
--
-- My_Signal_n: Active low signal
-- v_My_Variable: Variable
-- sm_My_Signal: FSM signal
-- pkg_Param: Element Param coming from a package
--
-- My_Signal_re: Rising edge detection of My_Signal
-- My_Signal_fe: Falling edge detection of My_Signal
-- My_Signal_rX: X times registered My_Signal signal
--
-- P_Process_Name: Process
--
-------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--CODE
entity STD_01000_bad is
   port  (
      i_A         : in std_logic;   -- First Mux input
      i_B         : in std_logic;   -- Second Mux input
      i_S         : in std_logic;   -- Mux select
      o_O         : out std_logic   -- Output signal
   );
end STD_01000_bad;

architecture Behavioral of STD_01000_bad is
   component Mux
   port (
      i_A : in std_logic;  -- First Mux input
      i_B : in std_logic;  -- Second Mux input
      i_S : in std_logic;  -- Mux select
      o_O : out std_logic  -- Mux output
   );
   end component;
begin
   Mux1:Mux
   port map (
      i_A => i_A,
      i_B => i_B,
      i_S => i_S,
      o_O => o_O
   );
end Behavioral;

entity Mux is
   port (
      i_A : in std_logic;  -- First Mux input
      i_B : in std_logic;  -- Second Mux input
      i_S : in std_logic;  -- Mux select
      o_O : out std_logic  -- Mux output
   );
end Mux;

architecture Behavioral of Mux is
begin
   o_O <= i_A when (i_S='0')
     else i_B;
end Behavioral;
--CODE