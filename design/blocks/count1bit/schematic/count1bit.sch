v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -106 -30 -100 -30 {lab=#net1}
N -300 -50 -280 -50 {lab=Dn}
N -210 -120 -210 -100 {lab=vdd}
N -210 -120 -190 -120 {lab=vdd}
N -210 60 -190 60 {lab=vss}
N -210 42 -210 50 {lab=vss}
N -210 -100 -210 -99 {lab=vdd}
N -210 50 -210 60 {lab=vss}
N -290 -10 -280 -10 {lab=CE}
N -300 -10 -290 -10 {lab=CE}
N -300 -10 -300 110 {lab=CE}
N -300 110 -300 150 {lab=CE}
N -300 150 -270 150 {lab=CE}
N -210 80 -210 100 {lab=vdd}
N -210 80 -190 80 {lab=vdd}
N -210 240 -210 260 {lab=vss}
N -210 260 -190 260 {lab=vss}
N -330 -50 -300 -50 {lab=Dn}
N -330 -50 -330 160 {lab=Dn}
N -330 160 -330 190 {lab=Dn}
N -330 190 -270 190 {lab=Dn}
N -280 -50 -276 -50 {lab=Dn}
N -280 -10 -276 -10 {lab=CE}
N -210 100 -210 104 {lab=vdd}
N -210 236 -210 240 {lab=vss}
N -360 -10 -300 -10 {lab=CE}
N -120 170 -90 170 {lab=Sout}
N -123 170 -120 170 {lab=Sout}
N -80 -30 -70 -30 {lab=#net1}
N -70 -30 -70 20 {lab=#net1}
N -70 20 -50 20 {lab=#net1}
N 70 20 80 20 {lab=Dn}
N 80 20 90 20 {lab=Dn}
N 90 -30 90 20 {lab=Dn}
N -30 -30 90 -30 {lab=Dn}
N -30 -140 -30 -30 {lab=Dn}
N -280 -140 -30 -140 {lab=Dn}
N -170 80 -50 80 {lab=vdd}
N -130 80 -130 100 {lab=vdd}
N -130 100 -110 100 {lab=vdd}
N -30 -90 -10 -90 {lab=Dn}
N 10 120 10 140 {lab=CLR}
N 10 140 30 140 {lab=CLR}
N 70 80 90 80 {lab=vss}
N -70 50 -50 50 {lab=CLK}
N -360 60 -210 60 {lab=vss}
N -300 -140 -300 -50 {lab=Dn}
N -350 -120 -210 -120 {lab=vdd}
N -360 -120 -350 -120 {lab=vdd}
N -90 50 -70 50 {lab=CLK}
N -90 -60 -90 50 {lab=CLK}
N -90 -60 -10 -60 {lab=CLK}
N -100 -30 -80 -30 {lab=#net1}
N -190 80 -170 80 {lab=vdd}
N -300 -140 -280 -140 {lab=Dn}
C {blocks/dffc/schematic/dffc.sym} 10 50 0 0 {name=x1}
C {blocks/xorgate/schematic/xorgate.sym} -210 -30 0 0 {name=x2}
C {blocks/andgate/schematic/andgate.sym} -210 170 0 0 {name=x3}
C {lab_wire.sym} -190 60 0 1 {name=p7 sig_type=std_logic lab=vss
}
C {lab_wire.sym} -190 260 0 1 {name=p1 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 90 80 0 1 {name=p2 sig_type=std_logic lab=vss
}
C {lab_wire.sym} -110 100 2 0 {name=p3 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} -190 -120 2 0 {name=p4 sig_type=std_logic lab=vdd
}
C {iopin.sym} -10 -90 0 0 {name=p5 lab=Dn}
C {iopin.sym} -10 -60 0 0 {name=p6 lab=CLK}
C {iopin.sym} 30 140 0 0 {name=p8 lab=CLR}
C {iopin.sym} -90 170 0 0 {name=p9 lab=Sout}
C {iopin.sym} -360 60 0 1 {name=p10 lab=vss}
C {iopin.sym} -360 -10 0 1 {name=p11 lab=CE}
C {iopin.sym} -360 -120 0 1 {name=p12 lab=vdd}
