v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -390 -30 -350 -30 {lab=nclk}
N -390 -50 -350 -50 {lab=vss}
N -390 -70 -350 -70 {lab=rst}
N -390 -90 -350 -90 {lab=0b}
N -390 -110 -350 -110 {lab=vdd}
N -390 -130 -350 -130 {lab=clk}
N -390 -150 -350 -150 {lab=vdd}
N -390 140 -350 140 {lab=nclk}
N -390 120 -350 120 {lab=vss}
N -390 100 -350 100 {lab=rst}
N -390 80 -350 80 {lab=1b}
N -390 60 -350 60 {lab=0b}
N -390 40 -350 40 {lab=clk}
N -390 20 -350 20 {lab=vdd}
N -390 310 -350 310 {lab=nclk}
N -390 290 -350 290 {lab=vss}
N -390 270 -350 270 {lab=rst}
N -390 250 -350 250 {lab=2b}
N -390 230 -350 230 {lab=1b}
N -390 210 -350 210 {lab=clk}
N -390 190 -350 190 {lab=vdd}
N -390 480 -350 480 {lab=nclk}
N -390 460 -350 460 {lab=vss}
N -390 440 -350 440 {lab=rst}
N -390 420 -350 420 {lab=3b}
N -390 400 -350 400 {lab=2b}
N -390 380 -350 380 {lab=clk}
N -390 360 -350 360 {lab=vdd}
N -200 -30 -170 -30 {lab=nclk}
N -200 -50 -170 -50 {lab=vss}
N -200 -70 -170 -70 {lab=rst}
N -200 -130 -170 -130 {lab=clk}
N -200 -150 -170 -150 {lab=vdd}
N -200 130 -160 130 {lab=3b}
N -200 100 -160 100 {lab=2b}
N -200 70 -160 70 {lab=1b}
N -200 40 -160 40 {lab=0b}
C {blocks/count1bit/schematic/count1bit.sym} -540 -90 0 0 {name=x1}
C {lab_pin.sym} -350 -150 2 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -350 -130 2 0 {name=p2 sig_type=std_logic lab=clk}
C {lab_pin.sym} -350 -90 2 0 {name=p4 sig_type=std_logic lab=0b}
C {lab_pin.sym} -350 -70 2 0 {name=p5 sig_type=std_logic lab=rst}
C {lab_pin.sym} -350 -50 2 0 {name=p6 sig_type=std_logic lab=vss}
C {lab_pin.sym} -350 -30 2 0 {name=p7 sig_type=std_logic lab=nclk}
C {blocks/count1bit/schematic/count1bit.sym} -540 80 0 0 {name=x2}
C {lab_pin.sym} -350 20 2 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -350 40 2 0 {name=p9 sig_type=std_logic lab=clk}
C {lab_pin.sym} -350 60 2 0 {name=p10 sig_type=std_logic lab=0b}
C {lab_pin.sym} -350 80 2 0 {name=p11 sig_type=std_logic lab=1b}
C {lab_pin.sym} -350 100 2 0 {name=p12 sig_type=std_logic lab=rst}
C {lab_pin.sym} -350 120 2 0 {name=p13 sig_type=std_logic lab=vss}
C {lab_pin.sym} -350 140 2 0 {name=p14 sig_type=std_logic lab=nclk}
C {blocks/count1bit/schematic/count1bit.sym} -540 250 0 0 {name=x3}
C {lab_pin.sym} -350 190 2 0 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -350 210 2 0 {name=p16 sig_type=std_logic lab=clk}
C {lab_pin.sym} -350 230 2 0 {name=p17 sig_type=std_logic lab=1b}
C {lab_pin.sym} -350 250 2 0 {name=p18 sig_type=std_logic lab=2b}
C {lab_pin.sym} -350 270 2 0 {name=p19 sig_type=std_logic lab=rst}
C {lab_pin.sym} -350 290 2 0 {name=p20 sig_type=std_logic lab=vss}
C {lab_pin.sym} -350 310 2 0 {name=p21 sig_type=std_logic lab=nclk}
C {blocks/count1bit/schematic/count1bit.sym} -540 420 0 0 {name=x4}
C {lab_pin.sym} -350 360 2 0 {name=p22 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -350 380 2 0 {name=p23 sig_type=std_logic lab=clk}
C {lab_pin.sym} -350 400 2 0 {name=p24 sig_type=std_logic lab=2b}
C {lab_pin.sym} -350 420 2 0 {name=p25 sig_type=std_logic lab=3b}
C {lab_pin.sym} -350 440 2 0 {name=p26 sig_type=std_logic lab=rst}
C {lab_pin.sym} -350 460 2 0 {name=p27 sig_type=std_logic lab=vss}
C {lab_pin.sym} -350 480 2 0 {name=p28 sig_type=std_logic lab=nclk}
C {lab_pin.sym} -170 -150 2 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -170 -130 2 0 {name=p30 sig_type=std_logic lab=clk}
C {lab_pin.sym} -170 -70 2 0 {name=p31 sig_type=std_logic lab=rst}
C {lab_pin.sym} -170 -50 2 0 {name=p33 sig_type=std_logic lab=vss}
C {lab_pin.sym} -170 -30 2 0 {name=p34 sig_type=std_logic lab=nclk}
C {iopin.sym} -200 -150 2 0 {name=p35 lab=vdd}
C {iopin.sym} -200 -130 2 0 {name=p36 lab=clk}
C {iopin.sym} -200 -70 2 0 {name=p38 lab=rst}
C {iopin.sym} -200 -50 2 0 {name=p39 lab=vss}
C {iopin.sym} -200 -30 2 0 {name=p40 lab=nclk}
C {lab_pin.sym} -350 -110 2 0 {name=p3 sig_type=std_logic lab=vdd}
C {iopin.sym} -200 40 2 0 {name=p32 lab=0b}
C {iopin.sym} -200 70 2 0 {name=p37 lab=1b}
C {iopin.sym} -200 100 2 0 {name=p41 lab=2b}
C {iopin.sym} -200 130 2 0 {name=p42 lab=3b}
C {lab_pin.sym} -160 40 2 0 {name=p43 sig_type=std_logic lab=0b}
C {lab_pin.sym} -160 70 2 0 {name=p44 sig_type=std_logic lab=1b}
C {lab_pin.sym} -160 100 2 0 {name=p45 sig_type=std_logic lab=2b}
C {lab_pin.sym} -160 130 2 0 {name=p46 sig_type=std_logic lab=3b}
