v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 285 30 285 60 {lab=avss1p8}
N 285 -60 285 -30 {lab=avdd1p8}
N 185 -60 185 -30 {lab=avss1p8}
N 185 30 185 60 {lab=GND}
N 375 -60 375 -30 {lab=clk1_sig}
N 375 30 375 60 {lab=avss1p8}
N 375 -215 375 -185 {lab=clk2_sig}
N 375 -125 375 -95 {lab=avss1p8}
C {netlist_not_shown.sym} -275 -50 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd = 1.8
.param vss = 0.0
.param Tclk = 10n
.options TEMP = 65.0
* Include Models
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
* OP Parameters & Singals to save
.save all
*Simulations
.control
tran 0.01u 100n
setplot tran1
plot v(clk1_sig)-2 v(clk2_sig) v(0b)+2 v(1b)+4 v(2b)+6 v(3b)+8
reset
dc1 V6 0 1.8 0.01
dc2 V7 0 1.8 0.01
setplot dc1
setplot dc2
set filetype = ascii
write dcsweep.raw
.endc
.end
"}
C {lab_wire.sym} 80 20 0 1 {name=p1 sig_type=std_logic lab=avss1p8
}
C {lab_wire.sym} 80 -20 2 0 {name=p2 sig_type=std_logic lab=avdd1p8
}
C {vsource.sym} 185 0 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {vsource.sym} 285 0 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {vsource.sym} 375 0 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {lab_wire.sym} 285 -60 0 0 {name=p6 sig_type=std_logic lab=avdd1p8
}
C {lab_wire.sym} 185 -60 0 0 {name=p7 sig_type=std_logic lab=avss1p8
}
C {lab_wire.sym} 285 60 0 0 {name=p8 sig_type=std_logic lab=avss1p8
}
C {lab_wire.sym} 375 60 0 0 {name=p9 sig_type=std_logic lab=avss1p8
}
C {lab_wire.sym} 375 -60 0 0 {name=p10 sig_type=std_logic lab=clk1_sig}
C {gnd.sym} 185 60 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -45 -60 0 0 {name=p3 sig_type=std_logic lab=0b
}
C {lab_wire.sym} -15 -60 0 0 {name=p4 sig_type=std_logic lab=1b
}
C {lab_wire.sym} 15 -60 0 0 {name=p5 sig_type=std_logic lab=2b
}
C {lab_wire.sym} 45 -60 0 0 {name=p11 sig_type=std_logic lab=3b
}
C {lab_wire.sym} -80 -20 2 1 {name=p12 sig_type=std_logic lab=avdd1p8
}
C {lab_wire.sym} -30 60 2 1 {name=p13 sig_type=std_logic lab=clk2_sig}
C {lab_wire.sym} 30 60 2 0 {name=p14 sig_type=std_logic lab=avss1p8
}
C {blocks/count4bits_2c/schematic/count4bits_2c.sym} 0 0 0 0 {name=x1}
C {lab_wire.sym} -80 20 0 0 {name=p15 sig_type=std_logic lab=clk1_sig}
C {vsource.sym} 375 -155 0 0 {name=V7 value="PULSE(\{vdd\} 0 \{Tclk/8\} 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {lab_wire.sym} 375 -95 0 0 {name=p16 sig_type=std_logic lab=avss1p8
}
C {lab_wire.sym} 375 -215 0 0 {name=p17 sig_type=std_logic lab=clk2_sig}
