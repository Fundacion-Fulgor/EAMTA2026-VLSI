v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 370 1080 490 1080 {lab=#net1}
N 820 1080 850 1080 {lab=#net2}
N 930 1080 1120 1080 {lab=#net3}
N 1120 1080 1120 1240 {lab=#net3}
N 1100 1240 1120 1240 {lab=#net3}
N 970 1240 1020 1240 {lab=#net4}
N 820 1240 840 1240 {lab=#net2}
N 820 1080 820 1240 {lab=#net2}
N 400 940 440 940 {lab=vss}
N 400 970 440 970 {lab=vdd}
N 230 1080 290 1080 {lab=in}
N 400 880 440 880 {lab=en}
N 400 910 440 910 {lab=noten}
N 1050 1170 1050 1210 {lab=vss}
N 930 1170 930 1200 {lab=vdd}
N 930 1280 930 1320 {lab=vss}
N 530 1010 530 1040 {lab=vss}
N 530 1120 530 1160 {lab=vdd}
N 340 1110 340 1140 {lab=vss}
N 340 1010 340 1050 {lab=vdd}
N 880 1280 880 1320 {lab=noten}
N 880 1170 880 1200 {lab=en}
N 900 1110 900 1140 {lab=vss}
N 900 1010 900 1050 {lab=vdd}
N 1050 1270 1050 1310 {lab=vdd}
N 580 1120 580 1160 {lab=noten}
N 620 1080 820 1080 {lab=#net2}
N 810 910 810 940 {lab=vss}
N 810 810 810 850 {lab=vss}
N 840 880 870 880 {lab=nrst}
N 580 1010 580 1040 {lab=en}
N 1210 1110 1210 1140 {lab=vdd}
N 1160 1220 1160 1260 {lab=rst}
N 1210 1220 1210 1260 {lab=vss}
N 1160 1110 1160 1140 {lab=nrst}
N 1250 1180 1290 1180 {lab=vss}
N 720 840 730 840 {lab=rst}
N 730 840 730 880 {lab=rst}
N 730 880 760 880 {lab=rst}
N 720 880 730 880 {lab=rst}
N 1260 1080 1380 1080 {lab=#net5}
N 1710 1080 1740 1080 {lab=#net6}
N 1820 1080 2010 1080 {lab=out}
N 2010 1080 2010 1240 {lab=out}
N 1990 1240 2010 1240 {lab=out}
N 1860 1240 1910 1240 {lab=#net7}
N 1710 1240 1730 1240 {lab=#net6}
N 1710 1080 1710 1240 {lab=#net6}
N 1120 1080 1180 1080 {lab=#net3}
N 1940 1170 1940 1210 {lab=vss}
N 1820 1170 1820 1200 {lab=vdd}
N 1820 1280 1820 1320 {lab=vss}
N 1420 1010 1420 1040 {lab=vss}
N 1420 1120 1420 1160 {lab=vdd}
N 1230 1110 1230 1140 {lab=vss}
N 1230 1010 1230 1050 {lab=vdd}
N 1770 1280 1770 1320 {lab=en}
N 1770 1170 1770 1200 {lab=noten}
N 1790 1110 1790 1140 {lab=vss}
N 1790 1010 1790 1050 {lab=vdd}
N 1940 1270 1940 1310 {lab=vdd}
N 1470 1120 1470 1160 {lab=en}
N 1510 1080 1710 1080 {lab=#net6}
N 1470 1010 1470 1040 {lab=noten}
N 2100 1110 2100 1140 {lab=vdd}
N 2050 1220 2050 1260 {lab=rst}
N 2100 1220 2100 1260 {lab=vss}
N 2050 1110 2050 1140 {lab=nrst}
N 2140 1180 2180 1180 {lab=vss}
C {blocks/inverter/schematic/inverter.sym} 320 1070 0 0 {name=x1}
C {blocks/inverter/schematic/inverter.sym} 880 1070 0 0 {name=x3}
C {blocks/inverter/schematic/inverter.sym} 1070 1250 2 0 {name=x4}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 600 1090 0 0 {name=x5}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 860 1230 2 0 {name=x6}
C {iopin.sym} 230 1080 2 0 {name=p1 lab=in}
C {iopin.sym} 400 970 2 0 {name=p3 lab=vdd}
C {iopin.sym} 400 940 2 0 {name=p4 lab=vss}
C {iopin.sym} 400 880 2 0 {name=p6 lab=en}
C {lab_pin.sym} 440 970 2 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 440 940 2 0 {name=p8 sig_type=std_logic lab=vss}
C {iopin.sym} 400 910 2 0 {name=p9 lab=noten}
C {lab_pin.sym} 440 910 2 0 {name=p10 sig_type=std_logic lab=noten}
C {lab_pin.sym} 440 880 2 0 {name=p11 sig_type=std_logic lab=en}
C {lab_pin.sym} 340 1010 2 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 530 1160 2 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 930 1170 2 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1050 1310 2 0 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 530 1010 2 0 {name=p16 sig_type=std_logic lab=vss}
C {lab_pin.sym} 900 1140 2 0 {name=p17 sig_type=std_logic lab=vss}
C {lab_pin.sym} 930 1320 2 0 {name=p18 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1050 1170 2 0 {name=p19 sig_type=std_logic lab=vss}
C {lab_pin.sym} 340 1140 2 0 {name=p20 sig_type=std_logic lab=vss}
C {lab_pin.sym} 580 1160 2 0 {name=p21 sig_type=std_logic lab=noten}
C {lab_pin.sym} 880 1320 0 0 {name=p23 sig_type=std_logic lab=noten}
C {lab_pin.sym} 880 1170 0 0 {name=p24 sig_type=std_logic lab=en}
C {lab_pin.sym} 900 1010 2 0 {name=p25 sig_type=std_logic lab=vdd}
C {iopin.sym} 2010 1080 0 0 {name=p26 lab=out}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 1140 1170 2 0 {name=x2}
C {lab_pin.sym} 1210 1260 2 0 {name=p27 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1210 1110 2 0 {name=p28 sig_type=std_logic lab=vdd}
C {blocks/inverter/schematic/inverter.sym} 790 870 0 0 {name=x8}
C {lab_pin.sym} 720 880 0 0 {name=p29 sig_type=std_logic lab=rst}
C {lab_pin.sym} 870 880 2 0 {name=p31 sig_type=std_logic lab=nrst}
C {lab_pin.sym} 810 810 2 0 {name=p32 sig_type=std_logic lab=vss}
C {lab_pin.sym} 810 940 2 0 {name=p33 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1160 1260 2 0 {name=p35 sig_type=std_logic lab=rst}
C {lab_pin.sym} 580 1010 2 0 {name=p36 sig_type=std_logic lab=en}
C {lab_pin.sym} 1160 1110 2 0 {name=p37 sig_type=std_logic lab=nrst}
C {lab_pin.sym} 1290 1180 2 0 {name=p38 sig_type=std_logic lab=vss}
C {iopin.sym} 720 840 2 0 {name=p39 lab=rst}
C {blocks/inverter/schematic/inverter.sym} 1210 1070 0 0 {name=x7}
C {blocks/inverter/schematic/inverter.sym} 1770 1070 0 0 {name=x9}
C {blocks/inverter/schematic/inverter.sym} 1960 1250 2 0 {name=x10}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 1490 1090 0 0 {name=x11}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 1750 1230 2 0 {name=x12}
C {lab_pin.sym} 1230 1010 2 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1420 1160 2 0 {name=p22 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1820 1170 2 0 {name=p30 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1940 1310 2 0 {name=p34 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1420 1010 2 0 {name=p40 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1790 1140 2 0 {name=p41 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1820 1320 2 0 {name=p42 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1940 1170 2 0 {name=p43 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1230 1140 2 0 {name=p44 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1470 1010 2 0 {name=p45 sig_type=std_logic lab=noten}
C {lab_pin.sym} 1770 1170 0 0 {name=p46 sig_type=std_logic lab=noten}
C {lab_pin.sym} 1770 1320 0 0 {name=p47 sig_type=std_logic lab=en}
C {lab_pin.sym} 1790 1010 2 0 {name=p48 sig_type=std_logic lab=vdd}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 2030 1170 2 0 {name=x13}
C {lab_pin.sym} 2100 1260 2 0 {name=p49 sig_type=std_logic lab=vss}
C {lab_pin.sym} 2100 1110 2 0 {name=p50 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 2050 1260 2 0 {name=p51 sig_type=std_logic lab=rst}
C {lab_pin.sym} 1470 1160 2 0 {name=p52 sig_type=std_logic lab=en}
C {lab_pin.sym} 2050 1110 2 0 {name=p53 sig_type=std_logic lab=nrst}
C {lab_pin.sym} 2180 1180 2 0 {name=p54 sig_type=std_logic lab=vss}
