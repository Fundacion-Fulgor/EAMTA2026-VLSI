v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 840 690 {}
P 4 1 850 810 {}
N 1220 350 1260 350 {lab=a}
N 1220 410 1260 410 {lab=b}
N 1070 350 1110 350 {lab=vdd}
N 1210 700 1240 700 {lab=b}
N 960 700 990 700 {lab=a}
N 1030 700 1090 700 {lab=vdd}
N 1280 700 1370 700 {lab=vdd}
N 1030 650 1030 670 {lab=#net1}
N 1160 650 1280 650 {lab=#net1}
N 1280 650 1280 670 {lab=#net1}
N 1030 730 1030 750 {lab=out}
N 1280 730 1280 750 {lab=out}
N 1150 750 1280 750 {lab=out}
N 1590 810 1630 810 {lab=vss}
N 1590 790 1590 810 {lab=vss}
N 1560 810 1590 810 {lab=vss}
N 1480 810 1500 810 {lab=vdd}
N 1690 810 1730 810 {lab=vdd}
N 1530 860 1530 900 {lab=a}
N 1660 720 1660 760 {lab=b}
N 1660 840 1660 900 {lab=nb}
N 1150 750 1150 850 {lab=out}
N 1030 750 1150 750 {lab=out}
N 1210 560 1240 560 {lab=na}
N 960 560 990 560 {lab=nb}
N 1030 560 1090 560 {lab=vdd}
N 1280 560 1370 560 {lab=vdd}
N 1030 510 1030 530 {lab=vdd}
N 1280 510 1280 530 {lab=vdd}
N 1030 590 1030 610 {lab=#net1}
N 1280 590 1280 610 {lab=#net1}
N 1160 610 1280 610 {lab=#net1}
N 1160 610 1160 650 {lab=#net1}
N 1030 610 1160 610 {lab=#net1}
N 1030 650 1160 650 {lab=#net1}
N 1090 510 1090 560 {lab=vdd}
N 1030 510 1090 510 {lab=vdd}
N 1370 510 1370 560 {lab=vdd}
N 1280 510 1370 510 {lab=vdd}
N 1160 490 1160 510 {lab=vdd}
N 1160 510 1280 510 {lab=vdd}
N 1090 510 1160 510 {lab=vdd}
N 1030 850 1030 870 {lab=out}
N 1030 850 1150 850 {lab=out}
N 1150 850 1280 850 {lab=out}
N 1280 850 1280 870 {lab=out}
N 1030 930 1030 980 {lab=#net2}
N 1030 1040 1030 1070 {lab=vss}
N 1160 1070 1280 1070 {lab=vss}
N 1030 1010 1160 1010 {lab=vss}
N 1030 900 1160 900 {lab=vss}
N 1280 900 1380 900 {lab=vss}
N 1380 900 1380 1010 {lab=vss}
N 1280 1010 1380 1010 {lab=vss}
N 1030 1010 1030 1030 {lab=vss}
N 1280 1010 1280 1070 {lab=vss}
N 1160 1070 1160 1120 {lab=vss}
N 1030 1070 1160 1070 {lab=vss}
N 950 1010 990 1010 {lab=nb}
N 950 900 990 900 {lab=na}
N 1210 1010 1240 1010 {lab=b}
N 1210 900 1240 900 {lab=a}
N 1070 410 1110 410 {lab=vss}
N 1160 1010 1160 1070 {lab=vss}
N 1160 900 1160 1010 {lab=vss}
N 1530 720 1530 780 {lab=na}
N 1280 930 1280 980 {lab=#net3}
C {sg13g2_pr/sg13_lv_pmos.sym} 1010 700 0 0 {name=M3
l=0.15u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1260 700 0 0 {name=M1
l=0.15u
w=0.75u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 1260 350 0 0 {name=p1 lab=a}
C {iopin.sym} 1260 410 0 0 {name=p3 lab=b}
C {lab_pin.sym} 1220 410 0 0 {name=p4 sig_type=std_logic lab=b}
C {iopin.sym} 1110 350 0 0 {name=p5 lab=vdd}
C {lab_pin.sym} 1070 350 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {iopin.sym} 1110 410 0 0 {name=p7 lab=vss}
C {lab_pin.sym} 1070 410 0 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_pin.sym} 960 700 0 0 {name=p9 sig_type=std_logic lab=a}
C {lab_pin.sym} 1210 700 0 0 {name=p10 sig_type=std_logic lab=b}
C {lab_pin.sym} 1090 700 2 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1370 700 2 0 {name=p12 sig_type=std_logic lab=vdd}
C {iopin.sym} 1150 810 0 0 {name=p13 lab=out}
C {sg13g2_pr/sg13_hv_nmos.sym} 1010 900 0 0 {name=M4
l=0.15u
w=0.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {blocks/inverter/schematic/inverter.sym} 1670 790 1 0 {name=x1}
C {blocks/inverter/schematic/inverter.sym} 1520 830 3 0 {name=x2}
C {lab_pin.sym} 1590 790 1 0 {name=p16 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1480 810 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1730 810 2 0 {name=p18 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1530 900 0 0 {name=p2 sig_type=std_logic lab=a}
C {lab_pin.sym} 1660 720 0 0 {name=p19 sig_type=std_logic lab=b}
C {lab_pin.sym} 1530 720 0 0 {name=p20 sig_type=std_logic lab=na}
C {lab_pin.sym} 1660 900 0 0 {name=p21 sig_type=std_logic lab=nb}
C {lab_pin.sym} 1220 350 0 0 {name=p14 sig_type=std_logic lab=a}
C {sg13g2_pr/sg13_lv_pmos.sym} 1010 560 0 0 {name=M2
l=0.15u
w=0.75u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1260 560 0 0 {name=M5
l=0.15u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1210 560 0 0 {name=p15 sig_type=std_logic lab=na}
C {lab_pin.sym} 960 560 0 0 {name=p22 sig_type=std_logic lab=nb}
C {lab_pin.sym} 1160 490 2 0 {name=p23 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_hv_nmos.sym} 1260 900 0 0 {name=M7
l=0.15u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1010 1010 0 0 {name=M8
l=0.15u
w=0.3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1260 1010 0 0 {name=M9
l=0.15u
w=0.3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1160 1120 0 0 {name=p24 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1210 900 0 0 {name=p25 sig_type=std_logic lab=a}
C {lab_pin.sym} 1210 1010 0 0 {name=p26 sig_type=std_logic lab=b}
C {lab_pin.sym} 950 900 0 0 {name=p27 sig_type=std_logic lab=na}
C {lab_pin.sym} 950 1010 0 0 {name=p28 sig_type=std_logic lab=nb}
