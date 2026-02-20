v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 0 130 0 {lab=#net1}
N 0 35 -0 65 {lab=GND}
N -140 0 -40 -0 {lab=#net2}
C {/home/mateo/GitRepos/EAMTA2026-VLSI/design/blocks/test-wf/schematic/inv.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -140 30 0 0 {name=V1 value=3 savecurrent=false}
C {capa.sym} 130 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 130 60 0 0 {name=l1 lab=GND}
C {gnd.sym} 0 65 0 0 {name=l2 lab=GND}
