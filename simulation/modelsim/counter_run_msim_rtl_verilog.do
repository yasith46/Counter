transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/yasit/OneDrive\ -\ University\ of\ Moratuwa/Documents/Verilog/New\ folder {C:/Users/yasit/OneDrive - University of Moratuwa/Documents/Verilog/New folder/baudGenerator.v}
vlog -vlog01compat -work work +incdir+C:/Users/yasit/OneDrive\ -\ University\ of\ Moratuwa/Documents/Verilog/New\ folder {C:/Users/yasit/OneDrive - University of Moratuwa/Documents/Verilog/New folder/counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/yasit/OneDrive\ -\ University\ of\ Moratuwa/Documents/Verilog/New\ folder {C:/Users/yasit/OneDrive - University of Moratuwa/Documents/Verilog/New folder/TBcounter.v}

