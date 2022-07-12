transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/Incinerador.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/multiplicador.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/comparador.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/mux.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/registrador.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/registrador_clear.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/shift_right_3x.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/somador.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/subtrator.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/temporizador2minutos.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/temporizador20min.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/temporizador45.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/Controladora.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/DataPath.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/comparador_peso.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/comparador_temperatura_segura.vhd}
vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/comparador_temperatura_max.vhd}

vcom -93 -work work {C:/Users/spide/Documents/UFMG/UFMG_4_semestre/LSD/PROJETO RTL/Projetos VHDL/Incinerador/tb_Incinerador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Incinerador

add wave *
view structure
view signals
run 400 ns
