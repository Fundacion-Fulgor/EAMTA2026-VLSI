v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -310 -170 -240 -170 {lab=#net1}
N -480 -160 -410 -160 {lab=in}
N -480 -160 -480 -80 {lab=in}
N -550 -160 -480 -160 {lab=in}
N -460 -100 -460 -80 {lab=b}
N -440 -180 -410 -180 {lab=a}
N -390 -40 -390 -10 {lab=vdd}
N -430 -40 -390 -40 {lab=vdd}
N -550 -40 -550 -10 {lab=vss}
N -550 -40 -510 -40 {lab=vss}
N -390 -60 -390 -40 {lab=vdd}
N -550 -60 -550 -40 {lab=vss}
N -390 -10 -380 -10 {lab=vdd}
N -390 -60 -380 -60 {lab=vdd}
N -360 -120 -360 -90 {lab=vss}
N -360 -240 -360 -220 {lab=vdd}
N -470 20 -470 40 {lab=#net2}
N -200 -130 -200 -80 {lab=nlck}
N -160 -250 -160 -210 {lab=vdd}
N -200 -250 -200 -210 {lab=clk}
N -160 -130 -160 -80 {lab=vdd}
N -110 -170 -40 -170 {lab=out}
N -40 -200 -30 -200 {lab=out}
N -40 -170 -40 -140 {lab=out}
N -40 -200 -40 -170 {lab=out}
N -40 -140 -30 -140 {lab=out}
C {blocks/xorgate/schematic/xorgate.sym} -410 -170 0 0 {name=x2}
C {blocks/register/schematic/register.sym} -150 -170 0 0 {name=x3}
C {iopin.sym} -550 -160 2 0 {name=p2 lab=in}
C {blocks/andgate/schematic/andgate.sym} -480 -80 1 0 {name=x1}
C {lab_pin.sym} -440 -180 0 0 {name=p1 sig_type=std_logic lab=a}
C {lab_pin.sym} -460 -100 2 0 {name=p3 sig_type=std_logic lab=b}
C {iopin.sym} -550 -10 2 0 {name=p5 lab=vss}
C {iopin.sym} -380 -10 0 0 {name=p6 lab=vdd}
C {lab_pin.sym} -550 -60 0 0 {name=p7 sig_type=std_logic lab=vss}
C {lab_pin.sym} -380 -60 2 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -360 -90 2 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_pin.sym} -360 -240 2 0 {name=p10 sig_type=std_logic lab=vdd}
C {iopin.sym} -200 -80 2 0 {name=p12 lab=nlck}
C {iopin.sym} -200 -250 2 0 {name=p13 lab=clk}
C {lab_pin.sym} -160 -250 2 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -160 -80 2 0 {name=p15 sig_type=std_logic lab=vdd}
C {iopin.sym} -30 -140 0 0 {name=p11 lab=out}
