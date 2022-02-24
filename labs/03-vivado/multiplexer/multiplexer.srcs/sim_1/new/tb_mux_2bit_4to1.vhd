------------------------------------------------------------
--
-- Testbench for 2-bit binary comparator.
-- EDA Playground
--
-- Copyright (c) 2020-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_mux_2bit_4to1 is
    -- Entity of testbench is always empty
end entity tb_mux_2bit_4to1;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_mux_2bit_4to1 is

    -- Local signals
    signal s_a           : std_logic_vector(2 - 1 downto 0);
    signal s_b           : std_logic_vector(2 - 1 downto 0);
    signal s_c              : std_logic_vector(2 - 1 downto 0);
    signal s_d              : std_logic_vector(2 - 1 downto 0);
    signal s_sel           : std_logic_vector(2 - 1 downto 0);
    signal s_f              : std_logic;
begin
    -- Connecting testbench signals with comparator_2bit
    -- entity (Unit Under Test)
    uut_comparator_4bit : entity work.mux_2bit_4to1
        port map(
            a_i           => s_a,
            b_i           => s_b,
            c_i           => s_c,
            d_i           => s_d,
            sel_i           => s_sel,
            f_o => s_f,

        );

    --------------------------------------------------------
    -- Data generation process My last number for student ID are 68.
    --------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_sel <= "00"; s_a <= "1000"; wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 1000, 0110 FAILED" severity error;
		

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
