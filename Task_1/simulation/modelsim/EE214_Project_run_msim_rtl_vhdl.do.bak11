transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Revan/OneDrive/Desktop/Autumn_24(3)/EE214/Project/Task_1/SPI_Master.vhd}
vcom -93 -work work {C:/Users/Revan/OneDrive/Desktop/Autumn_24(3)/EE214/Project/Task_1/SPI_Slave.vhd}
vcom -93 -work work {C:/Users/Revan/OneDrive/Desktop/Autumn_24(3)/EE214/Project/Task_1/TopLevelEntity.vhd}

vcom -93 -work work {C:/Users/Revan/OneDrive/Desktop/Autumn_24(3)/EE214/Project/Task_1/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
