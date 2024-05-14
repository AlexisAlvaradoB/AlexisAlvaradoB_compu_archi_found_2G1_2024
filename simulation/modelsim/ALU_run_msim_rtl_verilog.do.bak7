transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Alexis/A_TEC/Semestre_5/Fundamentos/Proyecto_Grupal_Fundamentos/Proyecto_Fundamentos {D:/Alexis/A_TEC/Semestre_5/Fundamentos/Proyecto_Grupal_Fundamentos/Proyecto_Fundamentos/unit_adder.sv}
vlog -sv -work work +incdir+D:/Alexis/A_TEC/Semestre_5/Fundamentos/Proyecto_Grupal_Fundamentos/Proyecto_Fundamentos {D:/Alexis/A_TEC/Semestre_5/Fundamentos/Proyecto_Grupal_Fundamentos/Proyecto_Fundamentos/full_adder.sv}

vlog -sv -work work +incdir+D:/Alexis/A_TEC/Semestre_5/Fundamentos/Proyecto_Grupal_Fundamentos/Proyecto_Fundamentos {D:/Alexis/A_TEC/Semestre_5/Fundamentos/Proyecto_Grupal_Fundamentos/Proyecto_Fundamentos/full_adder_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  full_adder_tb

add wave *
view structure
view signals
run -all
