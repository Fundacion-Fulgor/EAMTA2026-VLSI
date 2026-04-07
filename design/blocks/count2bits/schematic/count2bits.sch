v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -390 -60 -350 -60 {lab=vss}
N -390 -80 -350 -80 {lab=clk}
N -390 -100 -350 -100 {lab=vdd}
N -390 -120 -350 -120 {lab=rst}
N -390 -140 -350 -140 {lab=vdd}
N -390 90 -350 90 {lab=clk}
N -390 70 -300 70 {lab=#net1}
N -390 50 -350 50 {lab=rst}
N -390 30 -350 30 {lab=vdd}
N -390 -40 -300 -40 {lab=#net1}
N -390 -160 -350 -160 {lab=0b}
N -390 10 -350 10 {lab=1b}
N -300 -40 -300 70 {lab=#net1}
N -390 110 -340 110 {lab=#net2}
C {blocks/count1bit/schematic/count1bit.sym} -540 -100 0 0 {name=x1}
C {blocks/count1bit/schematic/count1bit.sym} -540 70 0 0 {name=x2}
C {lab_pin.sym} -350 30 2 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -350 50 2 0 {name=p12 sig_type=std_logic lab=rst}
C {iopin.sym} -350 -140 0 0 {name=p35 lab=vdd}
C {iopin.sym} -350 -80 0 0 {name=p36 lab=clk}
C {iopin.sym} -350 -120 0 0 {name=p38 lab=rst}
C {iopin.sym} -350 -160 0 0 {name=p32 lab=0b}
C {lab_pin.sym} -350 90 2 0 {name=p2 sig_type=std_logic lab=clk}
C {lab_pin.sym} -350 -100 2 0 {name=p3 sig_type=std_logic lab=vdd}
C {iopin.sym} -350 -60 0 0 {name=p6 lab=vss}
C {iopin.sym} -350 10 0 0 {name=p21 lab=1b}
C {lab_pin.sym} -340 110 2 0 {name=p1 sig_type=std_logic lab=vss}
