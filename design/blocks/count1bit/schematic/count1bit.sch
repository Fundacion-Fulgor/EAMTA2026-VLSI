v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -310 -170 -240 -170 {lab=#net1}
N -460 -160 -410 -160 {lab=in}
N -440 -180 -410 -180 {lab=#net2}
N -200 -130 -200 -80 {lab=nlck}
N -160 -250 -160 -210 {lab=vdd}
N -200 -250 -200 -210 {lab=clk}
N -160 -130 -160 -80 {lab=vss}
N -110 -170 -40 -170 {lab=#net2}
N -140 -130 -140 -100 {lab=rst}
N -360 -120 -360 -80 {lab=vss}
N -440 -290 -440 -180 {lab=#net2}
N -440 -290 -40 -290 {lab=#net2}
N -40 -290 -40 -170 {lab=#net2}
N -360 -270 -360 -220 {lab=vdd}
N -440 -180 -440 -130 {lab=#net2}
N -460 -160 -460 -130 {lab=in}
N -550 -160 -460 -160 {lab=in}
N -450 -30 -450 10 {lab=out}
N -510 -90 -490 -90 {lab=vss}
N -380 -50 -360 -50 {lab=vdd}
N -380 -90 -380 -50 {lab=vdd}
N -410 -90 -380 -90 {lab=vdd}
C {blocks/xorgate/schematic/xorgate.sym} -410 -170 0 0 {name=x2}
C {blocks/register/schematic/register.sym} -150 -170 0 0 {name=x3}
C {iopin.sym} -550 -160 2 0 {name=p2 lab=in}
C {lab_pin.sym} -360 -240 2 0 {name=p10 sig_type=std_logic lab=vdd}
C {iopin.sym} -200 -80 2 0 {name=p12 lab=nlck}
C {iopin.sym} -200 -250 2 0 {name=p13 lab=clk}
C {lab_pin.sym} -160 -250 2 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -160 -80 2 0 {name=p15 sig_type=std_logic lab=vss}
C {iopin.sym} -450 10 1 0 {name=p16 lab=out}
C {iopin.sym} -140 -100 0 0 {name=p17 lab=rst}
C {iopin.sym} -360 -80 0 0 {name=p3 lab=vss}
C {lab_pin.sym} -360 -100 2 0 {name=p4 sig_type=std_logic lab=vss}
C {iopin.sym} -360 -270 2 0 {name=p1 lab=vdd}
C {blocks/andgate/schematic/andgate.sym} -460 -130 1 0 {name=x1}
C {lab_pin.sym} -360 -50 2 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -510 -90 0 0 {name=p6 sig_type=std_logic lab=vss}
