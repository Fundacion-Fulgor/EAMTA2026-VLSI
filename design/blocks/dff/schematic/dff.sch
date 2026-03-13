v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 520 1120 520 1260 {lab=#net1}
N 460 1120 520 1120 {lab=#net1}
N 600 1120 680 1120 {lab=#net2}
N 780 1110 800 1110 {lab=#net3}
N 800 1110 800 1260 {lab=#net3}
N 650 1260 800 1260 {lab=#net3}
N 370 1160 370 1200 {lab=vdd}
N 370 1030 370 1080 {lab=vss}
N 1020 1110 1020 1250 {lab=#net4}
N 960 1110 1020 1110 {lab=#net4}
N 1100 1110 1180 1110 {lab=#net5}
N 1280 1100 1300 1100 {lab=out}
N 1300 1100 1300 1250 {lab=out}
N 1150 1250 1300 1250 {lab=out}
N 870 1150 870 1190 {lab=vdd}
N 870 1020 870 1070 {lab=vss}
N 920 1020 920 1070 {lab=nclk}
N 920 1150 920 1190 {lab=clk}
N 800 1110 830 1110 {lab=#net3}
N 1070 1050 1070 1080 {lab=vdd}
N 1220 1030 1220 1060 {lab=vdd}
N 1070 1140 1090 1140 {lab=vss}
N 1220 1140 1220 1170 {lab=vss}
N 1060 1290 1060 1320 {lab=clk}
N 1110 1180 1110 1210 {lab=vdd}
N 1060 1190 1060 1210 {lab=nclk}
N 1110 1290 1110 1320 {lab=vss}
N 720 1040 720 1070 {lab=vdd}
N 720 1150 720 1180 {lab=vss}
N 670 1100 680 1100 {lab=rst}
N 1170 1090 1180 1090 {lab=rst}
N 570 1060 570 1090 {lab=vdd}
N 570 1150 590 1150 {lab=vss}
N 300 1120 330 1120 {lab=in}
N 560 1300 560 1330 {lab=nclk}
N 610 1300 610 1330 {lab=vss}
N 560 1190 560 1220 {lab=clk}
N 610 1190 610 1220 {lab=vdd}
N 420 1060 420 1080 {lab=clk}
N 420 1160 420 1200 {lab=clk}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 440 1130 0 0 {name=x1}
C {blocks/norgate/schematic/norgate.sym} 680 1120 0 0 {name=x2}
C {blocks/inverter/schematic/inverter.sym} 550 1110 0 0 {name=x5}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 540 1250 2 0 {name=x7}
C {iopin.sym} 370 1030 3 0 {name=p1 lab=vss}
C {iopin.sym} 300 1120 2 0 {name=p3 lab=in
}
C {iopin.sym} 370 1200 1 0 {name=p4 lab=vdd}
C {lab_pin.sym} 560 1330 3 0 {name=p8 sig_type=std_logic lab=nclk}
C {lab_pin.sym} 610 1330 3 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_pin.sym} 560 1190 0 0 {name=p11 sig_type=std_logic lab=clk


}
C {lab_pin.sym} 590 1150 2 0 {name=p12 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 720 1040 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 720 1180 0 0 {name=p16 sig_type=std_logic lab=vss}
C {lab_pin.sym} 610 1190 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 570 1060 0 0 {name=p19 sig_type=std_logic lab=vdd
}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 940 1120 0 0 {name=x3}
C {blocks/norgate/schematic/norgate.sym} 1180 1110 0 0 {name=x4}
C {blocks/inverter/schematic/inverter.sym} 1050 1100 0 0 {name=x6}
C {blocks/transmissiongate/schematic/transmissiongate.sym} 1040 1240 2 0 {name=x8}
C {lab_pin.sym} 1060 1320 0 0 {name=p24 sig_type=std_logic lab=clk


}
C {lab_pin.sym} 1090 1140 2 0 {name=p25 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 1220 1030 0 0 {name=p26 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1170 1090 0 0 {name=p27 sig_type=std_logic lab=rst
}
C {lab_pin.sym} 1220 1170 0 0 {name=p28 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1110 1180 0 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1070 1050 0 0 {name=p32 sig_type=std_logic lab=vdd
}
C {lab_pin.sym} 1060 1190 0 0 {name=p22 sig_type=std_logic lab=nclk

}
C {lab_pin.sym} 1110 1320 0 0 {name=p10 sig_type=std_logic lab=vss}
C {lab_pin.sym} 920 1020 0 0 {name=p18 sig_type=std_logic lab=nclk

}
C {lab_pin.sym} 920 1190 0 0 {name=p20 sig_type=std_logic lab=clk

}
C {lab_pin.sym} 870 1020 0 0 {name=p21 sig_type=std_logic lab=vss}
C {lab_pin.sym} 870 1190 0 0 {name=p23 sig_type=std_logic lab=vdd
}
C {iopin.sym} 1300 1100 0 0 {name=p6 lab=out

}
C {iopin.sym} 670 1100 2 0 {name=p7 lab=rst


}
C {iopin.sym} 420 1060 3 0 {name=p13 lab=clk

}
C {iopin.sym} 420 1200 1 0 {name=p2 lab=nclk

}
