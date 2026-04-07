v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -390 -40 -300 -40 {lab=#net1}
N -390 -60 -350 -60 {lab=vss}
N -390 -80 -350 -80 {lab=clk}
N -390 -100 -350 -100 {lab=vdd}
N -390 -120 -350 -120 {lab=rst}
N -390 -140 -350 -140 {lab=vdd}
N -390 110 -350 110 {lab=vss}
N -390 90 -350 90 {lab=clk}
N -390 70 -300 70 {lab=#net1}
N -390 50 -350 50 {lab=rst}
N -390 30 -350 30 {lab=vdd}
N -390 130 -300 130 {lab=#net2}
N -390 -160 -350 -160 {lab=0b}
N -390 10 -350 10 {lab=1b}
N -300 -40 -300 70 {lab=#net1}
N -390 280 -350 280 {lab=vss}
N -390 260 -350 260 {lab=clk}
N -390 240 -300 240 {lab=#net2}
N -390 220 -350 220 {lab=rst}
N -390 200 -350 200 {lab=vdd}
N -390 300 -300 300 {lab=#net3}
N -390 180 -350 180 {lab=2b}
N -300 130 -300 240 {lab=#net2}
N -390 450 -350 450 {lab=vss}
N -390 430 -350 430 {lab=clk}
N -390 410 -300 410 {lab=#net3}
N -390 390 -350 390 {lab=rst}
N -390 370 -350 370 {lab=vdd}
N -390 350 -350 350 {lab=#net5}
N -300 300 -300 410 {lab=#net3}
C {blocks/count1bit/schematic/count1bit.sym} -540 -100 0 0 {name=x1}
C {blocks/count1bit/schematic/count1bit.sym} -540 70 0 0 {name=x2}
C {lab_pin.sym} -350 30 2 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -350 50 2 0 {name=p12 sig_type=std_logic lab=rst}
C {lab_pin.sym} -350 110 2 0 {name=p13 sig_type=std_logic lab=vss}
C {iopin.sym} -350 -140 0 0 {name=p35 lab=vdd}
C {iopin.sym} -350 -80 0 0 {name=p36 lab=clk}
C {iopin.sym} -350 -120 0 0 {name=p38 lab=rst}
C {iopin.sym} -350 -160 0 0 {name=p32 lab=0b}
C {iopin.sym} -350 180 0 0 {name=p41 lab=2b}
C {iopin.sym} -350 350 0 0 {name=p42 lab=3b}
C {lab_pin.sym} -350 90 2 0 {name=p2 sig_type=std_logic lab=clk}
C {lab_pin.sym} -350 -100 2 0 {name=p3 sig_type=std_logic lab=vdd}
C {iopin.sym} -350 -60 0 0 {name=p6 lab=vss}
C {iopin.sym} -350 10 0 0 {name=p21 lab=1b}
C {blocks/count1bit/schematic/count1bit.sym} -540 240 0 0 {name=x3}
C {lab_pin.sym} -350 200 2 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -350 220 2 0 {name=p4 sig_type=std_logic lab=rst}
C {lab_pin.sym} -350 280 2 0 {name=p5 sig_type=std_logic lab=vss}
C {lab_pin.sym} -350 260 2 0 {name=p7 sig_type=std_logic lab=clk}
C {blocks/count1bit/schematic/count1bit.sym} -540 410 0 0 {name=x4}
C {lab_pin.sym} -350 370 2 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -350 390 2 0 {name=p11 sig_type=std_logic lab=rst}
C {lab_pin.sym} -350 450 2 0 {name=p14 sig_type=std_logic lab=vss}
C {lab_pin.sym} -350 430 2 0 {name=p15 sig_type=std_logic lab=clk}
