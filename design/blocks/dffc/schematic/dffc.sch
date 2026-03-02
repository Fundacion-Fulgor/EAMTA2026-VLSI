v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 610 240 650 240 {lab=vdd}
N -130 180 -90 180 {lab=vdd}
N -210 -80 -170 -80 {lab=vdd}
N 390 -80 430 -80 {lab=vdd}
N 610 -79 650 -79 {lab=vss}
N 10 -79 50 -79 {lab=vss}
N 390 241 430 241 {lab=vss}
N -350 181 -310 181 {lab=vss}
N -220 360 -220 380 {lab=vdd}
N -240 360 -220 360 {lab=vdd}
N 240 -110 240 -90 {lab=vdd}
N 220 -110 240 -110 {lab=vdd}
N 860 210 860 230 {lab=vdd}
N 860 210 880 210 {lab=vdd}
N 860 -110 860 -90 {lab=vdd}
N 840 -110 860 -110 {lab=vdd}
N 110 130 110 150 {lab=vdd}
N 110 130 130 130 {lab=vdd}
N -220 480 -220 500 {lab=vss}
N -240 500 -220 500 {lab=vss}
N 240 10 240 30 {lab=vss}
N 220 30 240 30 {lab=vss}
N 860 330 860 350 {lab=vss}
N 860 350 880 350 {lab=vss}
N 110 310 130 310 {lab=vss}
N 840 70 860 70 {lab=vss}
N 110 292 110 310 {lab=vss}
N 860 -90 860 -89 {lab=vdd}
N 110 150 110 151 {lab=vdd}
N 860 52 860 70 {lab=vss}
N 860 230 860 231 {lab=vdd}
N 860 329 860 330 {lab=vss}
N 240 -90 240 -89 {lab=vdd}
N 240 9 240 10 {lab=vss}
N -220 380 -220 381 {lab=vdd}
N -220 479 -220 480 {lab=vss}
N -150 430 -120 430 {lab=clk_neg}
N -210 -40 -170 -40 {lab=D}
N -80 -140 -80 -130 {lab=clk_neg}
N -100 -140 -80 -140 {lab=clk_neg}
N -80 20 -80 60 {lab=clk_pos}
N -100 60 -80 60 {lab=clk_pos}
N -80 -130 -80 -124 {lab=clk_neg}
N 520 180 520 190 {lab=clk_neg}
N 520 180 540 180 {lab=clk_neg}
N 520 190 520 196 {lab=clk_neg}
N 520 340 520 380 {lab=clk_pos}
N 520 380 540 380 {lab=clk_pos}
N 520 -140 520 -130 {lab=clk_pos}
N 500 -140 520 -140 {lab=clk_pos}
N 520 -130 520 -124 {lab=clk_pos}
N -220 120 -220 130 {lab=clk_pos}
N -220 120 -200 120 {lab=clk_pos}
N -220 130 -220 136 {lab=clk_pos}
N -220 280 -220 320 {lab=clk_neg}
N -220 320 -200 320 {lab=clk_neg}
N 520 20 520 60 {lab=clk_neg}
N 500 60 520 60 {lab=clk_neg}
N 10 -40 200 -40 {lab=#net1}
N 180 200 340 200 {lab=#net2}
N 340 30 340 200 {lab=#net2}
N 310 -40 340 -40 {lab=#net2}
N 180 240 200 240 {lab=CLR}
N 171 240 180 240 {lab=CLR}
N 171 200 180 200 {lab=#net2}
N 340 -40 340 30 {lab=#net2}
N -130 220 -20 220 {lab=#net3}
N -450 220 -310 220 {lab=#net1}
N -450 80 -450 220 {lab=#net1}
N -450 80 110 80 {lab=#net1}
N 110 -40 110 80 {lab=#net1}
N -20 220 -12 220 {lab=#net3}
N 340 -40 430 -40 {lab=#net2}
N 770 0 790 0 {lab=CLR}
N 790 0 799 0 {lab=CLR}
N 900 280 1010 280 {lab=Q}
N 1010 -20 1010 170 {lab=Q}
N 750 390 880 390 {lab=Qb}
N 750 280 750 390 {lab=Qb}
N 750 280 790 280 {lab=Qb}
N 1010 170 1010 280 {lab=Q}
N 610 280 750 280 {lab=Qb}
N 290 280 430 280 {lab=#net4}
N 290 130 290 280 {lab=#net4}
N 290 130 670 130 {lab=#net4}
N 670 -40 670 130 {lab=#net4}
N 982 -20 1040 -20 {lab=Q}
N 610 -40 799 -40 {lab=#net4}
N -290 430 -260 430 {lab=CLK}
N -200 320 -40 320 {lab=clk_neg}
N -120 320 -120 430 {lab=clk_neg}
N -120 430 -90 430 {lab=clk_neg}
N -220 360 -50 360 {lab=vdd}
N -50 360 -50 380 {lab=vdd}
N -50 480 -50 500 {lab=vss}
N -220 500 -50 500 {lab=vss}
N 20 430 50 430 {lab=#net5}
N -50 380 -50 381 {lab=vdd}
N -50 479 -50 480 {lab=vss}
C {blocks/transmissiongate/schematic/transmissiongate.sym} -10 -20 0 0 {name=x1}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 590 -20 0 0 {name=x2}
C {blocks/transmissiongate/schematic/transmissiongate.sym} -290 240 0 1 {name=x3}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 450 300 0 1 {name=x4}
C {blocks/norgate/schematic/norgate.sym} 110 220 0 1 {name=x5}
C {blocks/norgate/schematic/norgate.sym} 860 -20 0 0 {name=x6}
C {blocks/inverter/schematic/inverter.sym} -220 430 0 0 {name=x7}
C {blocks/inverter/schematic/inverter.sym} 240 -40 0 0 {name=x8}
C {blocks/inverter/schematic/inverter.sym} 860 280 0 1 {name=x9}
C {iopin.sym} -210 -40 2 0 {name=p1 lab=D}
C {iopin.sym} 1040 -20 0 0 {name=p2 lab=Q}
C {iopin.sym} 880 390 0 0 {name=p3 lab=Qb}
C {iopin.sym} -290 430 2 0 {name=p6 lab=CLK}
C {iopin.sym} 200 240 2 1 {name=p7 lab=CLR}
C {lab_pin.sym} 650 240 0 1 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -90 180 0 1 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -210 -80 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 390 -80 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 650 -79 0 1 {name=p12 sig_type=std_logic lab=vss}
C {lab_pin.sym} 50 -79 0 1 {name=p13 sig_type=std_logic lab=vss}
C {lab_pin.sym} 390 241 0 0 {name=p14 sig_type=std_logic lab=vss}
C {lab_pin.sym} -350 181 0 0 {name=p15 sig_type=std_logic lab=vss}
C {lab_pin.sym} 220 -110 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 880 210 0 1 {name=p18 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 840 -110 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 130 130 0 1 {name=p20 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 220 30 0 0 {name=p22 sig_type=std_logic lab=vss}
C {lab_pin.sym} 880 350 0 1 {name=p23 sig_type=std_logic lab=vss}
C {lab_pin.sym} 840 70 0 0 {name=p24 sig_type=std_logic lab=vss}
C {lab_pin.sym} 130 310 0 1 {name=p25 sig_type=std_logic lab=vss}
C {lab_pin.sym} -100 -140 0 0 {name=p28 sig_type=std_logic lab=clk_neg}
C {lab_pin.sym} 540 180 0 1 {name=p30 sig_type=std_logic lab=clk_neg}
C {lab_pin.sym} -200 120 0 1 {name=p33 sig_type=std_logic lab=clk_pos}
C {lab_pin.sym} -40 320 0 1 {name=p34 sig_type=std_logic lab=clk_neg}
C {lab_pin.sym} 500 60 0 0 {name=p35 sig_type=std_logic lab=clk_neg}
C {lab_pin.sym} 770 0 0 0 {name=p38 sig_type=std_logic lab=CLR}
C {lab_pin.sym} -100 60 0 0 {name=p26 sig_type=std_logic lab=clk_pos}
C {lab_pin.sym} 500 -140 0 0 {name=p29 sig_type=std_logic lab=clk_pos}
C {lab_pin.sym} 540 380 0 1 {name=p31 sig_type=std_logic lab=clk_pos}
C {iopin.sym} -240 360 2 0 {name=p4 lab=vdd}
C {iopin.sym} -240 500 2 0 {name=p5 lab=vss}
C {blocks/inverter/schematic/inverter.sym} -50 430 0 0 {name=x10}
C {lab_pin.sym} 50 430 2 0 {name=p16 sig_type=std_logic lab=clk_pos}
