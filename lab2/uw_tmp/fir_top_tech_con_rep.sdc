###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name INFF -value "FALSE" -port -type STRING clock_27 -design gatelevel 
set_attribute -name NOPAD -value "TRUE" -port aud_bclk -design gatelevel 
set_attribute -name NOPAD -value "1" -port i2c_sdat -design gatelevel 
set_attribute -name PLL_TYPE -value "FAST" -instance -type string u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name INTENDED_DEVICE_FAMILY -value "Cyclone II" -instance -type string u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name INCLK0_INPUT_FREQUENCY -value "37037" -instance -type integer u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name COMPENSATE_CLOCK -value "CLK0" -instance -type string u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name CLK1_PHASE_SHIFT -value "0" -instance -type string u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name CLK1_MULTIPLY_BY -value "2" -instance -type integer u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name CLK1_DUTY_CYCLE -value "50" -instance -type integer u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name CLK1_DIVIDE_BY -value "3" -instance -type integer u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name CLK0_PHASE_SHIFT -value "0" -instance -type string u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name CLK0_MULTIPLY_BY -value "14" -instance -type integer u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name CLK0_DUTY_CYCLE -value "50" -instance -type integer u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name CLK0_DIVIDE_BY -value "15" -instance -type integer u_audio_dac_p1_altpll -design gatelevel 
set_attribute -name width_a -value "12" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name widthad_a -value "6" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name numwords_a -value "64" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name width_b -value "12" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name widthad_b -value "6" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name numwords_b -value "64" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name init_file -value "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING u_sine_modgen_rom_ix21__ix62120z58996 -design gatelevel 
set_attribute -name width_a -value "8" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name widthad_a -value "10" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name numwords_a -value "1024" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name outdata_reg_a -value "UNREGISTERED" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name address_aclr_a -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name outdata_aclr_a -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name indata_aclr_a -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name wrcontrol_aclr_a -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name byteena_aclr_a -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name width_byteena_a -value "1" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name width_b -value "8" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name widthad_b -value "10" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name numwords_b -value "1024" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name rdcontrol_reg_b -value "CLOCK1" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name address_reg_b -value "CLOCK1" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name outdata_reg_b -value "UNREGISTERED" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name outdata_aclr_b -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name rdcontrol_aclr_b -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name indata_reg_b -value "CLOCK1" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name wrcontrol_wraddress_reg_b -value "CLOCK1" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name byteena_reg_b -value "CLOCK1" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name indata_aclr_b -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name wrcontrol_aclr_b -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name byteena_aclr_b -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name width_byteena_b -value "1" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name address_aclr_b -value "NONE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name byte_size -value "8" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name read_during_write_mode_mixed_ports -value "DONT_CARE" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name ram_block_type -value "AUTO" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name init_file -value "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name init_file_layout -value "UNUSED" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name maximum_depth -value "0" -instance -type INTEGER u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name intended_device_family -value "Stratix" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name lpm_hint -value "UNUSED" -instance -type STRING u_noise_modgen_rom_ix24__ix62120z34212 -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(14) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(13) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(12) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(11) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(10) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(9) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(8) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(7) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(6) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(5) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(4) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(3) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(2) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(1) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(0)(0) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(13) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(12) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(11) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(10) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(9) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(8) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(7) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(6) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(5) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(4) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(3) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(2) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(1) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(1)(0) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(13) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(12) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(11) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(10) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(9) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(8) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(7) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(6) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(5) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(4) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(3) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(2) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(1) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(2)(0) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(14) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(13) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(12) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(11) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(10) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(9) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(8) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(7) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(6) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(5) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(4) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(3) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(2) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(1) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(4)(0) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(14) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(13) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(12) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(11) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(10) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(9) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(8) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(7) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(6) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(5) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(4) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(3) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(2) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(1) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(5)(0) -design gatelevel 
set_attribute -name logic_block -value "1" -net -type default low_pass/prod(6)(0) -design gatelevel 

##################
# Clocks
##################
create_clock { aud_bclk } -domain ClockDomain1 -name aud_bclk -period 4.000000 -waveform { 0.000000 2.000000 } -design gatelevel 
create_clock { clock_27 } -domain ClockDomain0 -name clock_27 -period 4.000000 -waveform { 0.000000 2.000000 } -design gatelevel 
create_generated_clock { u_audio_dac_reg_lrck_1x/regout } -domain ClockDomain2 -name u_audio_dac_reg_lrck_1x/regout -multiply_by 1  -divide_by 3 -source clock_27 -duty_cycle 50.000000  -design gatelevel 
create_generated_clock { u_i2c_av_config/reg_m_i2c_ctrl_clk/regout } -domain ClockDomain3 -name u_i2c_av_config/reg_m_i2c_ctrl_clk/regout -multiply_by 1  -divide_by 2 -source clock_27 -duty_cycle 50.000000  -design gatelevel 

