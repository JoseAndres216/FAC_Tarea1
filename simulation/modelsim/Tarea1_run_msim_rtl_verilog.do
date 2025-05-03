transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1 {C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1/decoder.sv}
vlog -sv -work work +incdir+C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1 {C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1/encoder.sv}
vlog -sv -work work +incdir+C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1 {C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1/sevenSegDecoder.sv}
vlog -sv -work work +incdir+C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1 {C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1/decoupler.sv}
vlog -sv -work work +incdir+C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1 {C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1/logicBlock.sv}

vlog -sv -work work +incdir+C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1 {C:/Users/josea/OneDrive/Escritorio/Andres/TEC/2025_SemestreI/FundamentosDeArquitecturaDeComputadores/Tarea1/FAC_Tarea1/decoupler_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  decoupler_tb

add wave *
view structure
view signals
run -all
