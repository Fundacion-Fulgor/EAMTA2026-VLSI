v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 -120 30 -120 {lab=CE}
N -110 -120 -110 -80 {lab=CE}
N -270 -120 -110 -120 {lab=CE}
N -140 -140 -140 -80 {lab=#net1}
N -30 -140 30 -140 {lab=#net1}
N 130 -130 250 -130 {lab=#net2}
N 440 -130 490 -130 {lab=#net1}
N 440 -220 440 -130 {lab=#net1}
N 380 -130 440 -130 {lab=#net1}
N -30 -220 440 -220 {lab=#net1}
N -30 -220 -30 -140 {lab=#net1}
N -140 -140 -30 -140 {lab=#net1}
N 290 -200 290 -170 {lab=CLK}
N 210 -200 290 -200 {lab=CLK}
N 210 -200 210 100 {lab=CLK}
N 290 -90 290 100 {lab=CLR}
N -130 130 -30 130 {lab=Sout}
N -130 80 -130 130 {lab=Sout}
N 80 -270 80 -180 {lab=vdd}
N 330 -270 330 -170 {lab=vdd}
N 80 -270 330 -270 {lab=vdd}
N 80 -280 80 -270 {lab=vdd}
N -60 -270 -60 -20 {lab=vdd}
N -60 -270 80 -270 {lab=vdd}
N 80 160 80 180 {lab=vss}
N -200 -20 -200 160 {lab=vss}
N -200 160 80 160 {lab=vss}
N 80 -80 80 160 {lab=vss}
N 80 160 330 160 {lab=vss}
N 330 -90 330 160 {lab=vss}
C {blocks/andgate/schematic/andgate.sym} -130 70 1 0 {name=x1}
C {blocks/xorgate/schematic/xorgate.sym} 30 -130 0 0 {name=x2}
C {blocks/register/schematic/register.sym} 340 -130 0 0 {name=x3}
C {iopin.sym} -270 -120 2 0 {name=p2 lab=CE}
C {iopin.sym} 210 100 1 0 {name=p1 lab=CLK}
C {iopin.sym} 290 100 1 0 {name=p3 lab=CLR}
C {iopin.sym} -30 130 0 0 {name=p4 lab=Sout}
C {iopin.sym} 80 -280 3 0 {name=p5 lab=vdd}
C {iopin.sym} 80 180 1 0 {name=p7 lab=vss}
C {iopin.sym} 490 -130 0 0 {name=p13 lab=D1}
