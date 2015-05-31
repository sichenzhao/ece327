###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name INFF -value "FALSE" -port -type STRING i_clock -design gatelevel 

##################
# Clocks
##################
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 4.000000 -waveform { 0.000000 2.000000 } -design gatelevel 

##################
# Input delays
##################
set_input_delay 0.000 -clock i_clock -add_delay  -design gatelevel  {i_clock i_cur_temp(*) i_des_temp(*) i_reset}

###################
# Output delays
###################
set_output_delay 0.000 -clock i_clock -add_delay  -design gatelevel  {o_heatmode(*)}

