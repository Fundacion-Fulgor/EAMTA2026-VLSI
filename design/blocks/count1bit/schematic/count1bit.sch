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
N -360 -120 -360 -80 {lab=vss}
N -440 -290 -440 -180 {lab=#net2}
N -360 -270 -360 -220 {lab=vdd}
N -440 -180 -440 -130 {lab=#net2}
N -460 -160 -460 -130 {lab=in}
N -550 -160 -460 -160 {lab=in}
N -450 -30 -450 10 {lab=out}
N -510 -90 -490 -90 {lab=vss}
N -380 -50 -360 -50 {lab=vdd}
N -380 -90 -380 -50 {lab=vdd}
N -410 -90 -380 -90 {lab=vdd}
N -140 -240 -120 -240 {lab=vdd}
N -140 -180 -120 -180 {lab=rst}
N -140 -140 -120 -140 {lab=clk}
N -140 -120 -120 -120 {lab=vss}
N -210 -160 -120 -160 {lab=#net2}
N -210 -290 -210 -160 {lab=#net2}
N -440 -290 -210 -290 {lab=#net2}
N -240 -200 -240 -170 {lab=#net1}
N -240 -200 -120 -200 {lab=#net1}
C {blocks/xorgate/schematic/xorgate.sym} -410 -170 0 0 {name=x2}
C {iopin.sym} -550 -160 2 0 {name=p2 lab=in}
C {iopin.sym} -140 -140 2 0 {name=p13 lab=clk}
C {lab_pin.sym} -140 -240 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {iopin.sym} -450 10 1 0 {name=p16 lab=out}
C {iopin.sym} -140 -180 2 0 {name=p17 lab=rst}
C {iopin.sym} -360 -80 0 0 {name=p3 lab=vss}
C {lab_pin.sym} -140 -120 0 0 {name=p4 sig_type=std_logic lab=vss}
C {iopin.sym} -360 -270 2 0 {name=p1 lab=vdd}
C {blocks/andgate/schematic/andgate.sym} -460 -130 1 0 {name=x1}
C {lab_pin.sym} -360 -50 2 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -510 -90 0 0 {name=p6 sig_type=std_logic lab=vss}
C {blocks/dff/schematic/dff.sym} 30 -180 2 0 {name=x3}
