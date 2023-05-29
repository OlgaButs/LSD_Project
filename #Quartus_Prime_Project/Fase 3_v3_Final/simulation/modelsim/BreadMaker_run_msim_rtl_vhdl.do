transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Olga/Downloads/Fase 3_v2_Final/Logic_Blocks/ControlSystemUnit_v2.vhd}

