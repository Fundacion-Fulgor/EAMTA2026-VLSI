v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 530 1080 650 1080 {lab=#net1}
N 820 1080 850 1080 {lab=#net2}
N 930 1080 1120 1080 {lab=#net3}
N 1120 1080 1120 1240 {lab=#net3}
N 1100 1240 1120 1240 {lab=#net3}
N 970 1240 1020 1240 {lab=#net4}
N 820 1240 840 1240 {lab=#net2}
N 820 1080 820 1240 {lab=#net2}
N 780 1080 820 1080 {lab=#net2}
N 400 940 440 940 {lab=vss}
N 400 970 440 970 {lab=vdd}
N 390 1080 450 1080 {lab=in}
N 400 880 440 880 {lab=en}
N 400 910 440 910 {lab=noten}
N 1050 1170 1050 1210 {lab=vss}
N 930 1170 930 1200 {lab=vdd}
N 930 1280 930 1320 {lab=vss}
N 690 1010 690 1040 {lab=vss}
N 690 1120 690 1160 {lab=vdd}
N 500 1110 500 1140 {lab=vss}
N 500 1010 500 1050 {lab=vdd}
N 880 1280 880 1320 {lab=en}
N 880 1170 880 1200 {lab=noten}
N 900 1110 900 1140 {lab=vss}
N 900 1010 900 1050 {lab=vdd}
N 1050 1270 1050 1310 {lab=vdd}
N 740 1120 740 1160 {lab=noten}
N 740 1010 740 1040 {lab=en}
N 1270 1080 1390 1080 {lab=#net5}
N 1560 1080 1590 1080 {lab=#net6}
N 1670 1080 1860 1080 {lab=out}
N 1860 1080 1860 1240 {lab=out}
N 1840 1240 1860 1240 {lab=out}
N 1710 1240 1760 1240 {lab=#net7}
N 1560 1240 1580 1240 {lab=#net6}
N 1560 1080 1560 1240 {lab=#net6}
N 1520 1080 1560 1080 {lab=#net6}
N 1790 1170 1790 1210 {lab=vss}
N 1670 1170 1670 1200 {lab=vdd}
N 1670 1280 1670 1320 {lab=vss}
N 1430 1010 1430 1040 {lab=vss}
N 1430 1120 1430 1160 {lab=vdd}
N 1240 1110 1240 1140 {lab=vss}
N 1240 1010 1240 1050 {lab=vdd}
N 1620 1280 1620 1320 {lab=noten}
N 1620 1170 1620 1200 {lab=en}
N 1640 1110 1640 1140 {lab=vss}
N 1640 1010 1640 1050 {lab=vdd}
N 1790 1270 1790 1310 {lab=vdd}
N 1480 1120 1480 1160 {lab=en}
N 1480 1010 1480 1040 {lab=noten}
N 1120 1080 1190 1080 {lab=#net3}
C {blocks/inverter/schematic/inverter.sym} 480 1070 0 0 {name=x1}
C {blocks/inverter/schematic/inverter.sym} 880 1070 0 0 {name=x3}
C {blocks/inverter/schematic/inverter.sym} 1070 1250 2 0 {name=x4}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 760 1090 0 0 {name=x5}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 860 1230 2 0 {name=x6}
C {iopin.sym} 390 1080 2 0 {name=p1 lab=in}
C {iopin.sym} 400 970 2 0 {name=p3 lab=vdd}
C {iopin.sym} 400 940 2 0 {name=p4 lab=vss}
C {iopin.sym} 1860 1080 0 0 {name=p5 lab=out}
C {iopin.sym} 400 880 2 0 {name=p6 lab=en}
C {lab_pin.sym} 440 970 2 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 440 940 2 0 {name=p8 sig_type=std_logic lab=vss}
C {iopin.sym} 400 910 2 0 {name=p9 lab=noten}
C {lab_pin.sym} 440 910 2 0 {name=p10 sig_type=std_logic lab=noten}
C {lab_pin.sym} 440 880 2 0 {name=p11 sig_type=std_logic lab=en}
C {lab_pin.sym} 500 1010 2 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 690 1160 2 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 930 1170 2 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1050 1310 2 0 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 690 1010 2 0 {name=p16 sig_type=std_logic lab=vss}
C {lab_pin.sym} 900 1140 2 0 {name=p17 sig_type=std_logic lab=vss}
C {lab_pin.sym} 930 1320 2 0 {name=p18 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1050 1170 2 0 {name=p19 sig_type=std_logic lab=vss}
C {lab_pin.sym} 500 1140 2 0 {name=p20 sig_type=std_logic lab=vss}
C {lab_pin.sym} 740 1160 2 0 {name=p21 sig_type=std_logic lab=noten}
C {lab_pin.sym} 740 1010 2 0 {name=p22 sig_type=std_logic lab=en}
C {lab_pin.sym} 880 1170 0 0 {name=p23 sig_type=std_logic lab=noten}
C {lab_pin.sym} 880 1320 0 0 {name=p24 sig_type=std_logic lab=en}
C {lab_pin.sym} 900 1010 2 0 {name=p25 sig_type=std_logic lab=vdd}
C {blocks/inverter/schematic/inverter.sym} 1220 1070 0 0 {name=x7}
C {blocks/inverter/schematic/inverter.sym} 1620 1070 0 0 {name=x9}
C {blocks/inverter/schematic/inverter.sym} 1810 1250 2 0 {name=x10}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 1500 1090 0 0 {name=x11}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 1600 1230 2 0 {name=x12}
C {lab_pin.sym} 1240 1010 2 0 {name=p28 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1430 1160 2 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1670 1170 2 0 {name=p30 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1790 1310 2 0 {name=p31 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1430 1010 2 0 {name=p32 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1640 1140 2 0 {name=p33 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1670 1320 2 0 {name=p34 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1790 1170 2 0 {name=p35 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1240 1140 2 0 {name=p36 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1480 1010 2 0 {name=p37 sig_type=std_logic lab=noten}
C {lab_pin.sym} 1480 1160 2 0 {name=p38 sig_type=std_logic lab=en}
C {lab_pin.sym} 1620 1320 0 0 {name=p39 sig_type=std_logic lab=noten}
C {lab_pin.sym} 1620 1170 0 0 {name=p40 sig_type=std_logic lab=en}
C {lab_pin.sym} 1640 1010 2 0 {name=p41 sig_type=std_logic lab=vdd}
