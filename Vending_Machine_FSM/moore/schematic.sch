# File saved with Nlview 6.6.11  2017-06-12 bk=1.3860 VDI=40 GEI=35 GUI=JA:1.6
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new reduce1s work:reduce1s:NOFILE -nosplit
load symbol RTL_MUX5 work MUX pin S input.bot pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus O output.right [1:0] fillcolor 1
load symbol RTL_MUX4 work MUX pin S input.bot pinBus I0 input.left [2:0] pinBus I1 input.left [2:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_MUX work MUX pinBus I0 input.left [1:0] pinBus I1 input.left [2:0] pinBus I2 input.left [2:0] pinBus I3 input.left [2:0] pinBus I4 input.left [2:0] pinBus I5 input.left [2:0] pinBus I6 input.left [2:0] pinBus I7 input.left [2:0] pinBus O output.right [2:0] pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_1 work[2:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [2:0] pinBus Q output.right [2:0] fillcolor 1 sandwich 3 prop @bundle 3
load port clk input -pg 1 -y 510
load port in input -pg 1 -y 680
load port reset input -pg 1 -y 660
load portBus out output [2:0] -attr @name out[2:0] -pg 1 -y 510
load inst next_state0_i__0 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"010\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"001\",\ S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 1 -y 190
load inst next_state0_i__1 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"011\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"010\",\ S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 1 -y 310
load inst next_state0_i__2 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"100\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"011\",\ S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 1 -y 430
load inst next_state0_i__3 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"101\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\",\ S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 1 -y 570
load inst next_state0_i__4 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"110\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\",\ S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 1 -y 720
load inst next_state0_i__5 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"110\",\ S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 1 -y 840
load inst next_state0_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 1 -y 70
load inst next_state_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=3'b000 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr S=3'b001 -pinBusAttr I2 @name I2[2:0] -pinBusAttr I2 @attr S=3'b010 -pinBusAttr I3 @name I3[2:0] -pinBusAttr I3 @attr S=3'b011 -pinBusAttr I4 @name I4[2:0] -pinBusAttr I4 @attr S=3'b100 -pinBusAttr I5 @name I5[2:0] -pinBusAttr I5 @attr S=3'b101 -pinBusAttr I6 @name I6[2:0] -pinBusAttr I6 @attr S=3'b110 -pinBusAttr I7 @name I7[2:0] -pinBusAttr I7 @attr S=3'b111 -pinBusAttr O @name O[2:0] -pinBusAttr S @name S[2:0] -pg 1 -lvl 2 -y 520
load inst current_state_reg[2:0] RTL_REG_ASYNC__BREG_1 work[2:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 3 -y 510
load net next_state0_i__2_n_0 -attr @rip O[2] -pin next_state0_i__2 O[2] -pin next_state_i I3[2]
load net next_state[1] -attr @rip O[1] -pin current_state_reg[2:0] D[1] -pin next_state_i O[1]
load net out[2] -attr @rip 2 -pin current_state_reg[2:0] Q[2] -pin next_state_i S[2] -port out[2]
load net next_state0_i__2_n_1 -attr @rip O[1] -pin next_state0_i__2 O[1] -pin next_state_i I3[1]
load net next_state0_i__2_n_2 -attr @rip O[0] -pin next_state0_i__2 O[0] -pin next_state_i I3[0]
load net next_state0_i__1_n_0 -attr @rip O[2] -pin next_state0_i__1 O[2] -pin next_state_i I2[2]
load net out[0] -attr @rip 0 -pin current_state_reg[2:0] Q[0] -pin next_state_i S[0] -port out[0]
load net <const0> -ground -pin next_state0_i I0[1] -pin next_state0_i I1[1] -pin next_state0_i I1[0] -pin next_state0_i__0 I0[2] -pin next_state0_i__0 I0[0] -pin next_state0_i__0 I1[2] -pin next_state0_i__0 I1[1] -pin next_state0_i__1 I0[2] -pin next_state0_i__1 I1[2] -pin next_state0_i__1 I1[0] -pin next_state0_i__2 I0[1] -pin next_state0_i__2 I0[0] -pin next_state0_i__2 I1[2] -pin next_state0_i__3 I0[1] -pin next_state0_i__3 I1[1] -pin next_state0_i__3 I1[0] -pin next_state0_i__4 I0[0] -pin next_state0_i__4 I1[1] -pin next_state0_i__5 I1[0]
load net next_state0_i__1_n_1 -attr @rip O[1] -pin next_state0_i__1 O[1] -pin next_state_i I2[1]
load net next_state0_i_n_0 -attr @rip O[1] -pin next_state0_i O[1] -pin next_state_i I0[1]
load net next_state0_i__1_n_2 -attr @rip O[0] -pin next_state0_i__1 O[0] -pin next_state_i I2[0]
load net next_state0_i__3_n_0 -attr @rip O[2] -pin next_state0_i__3 O[2] -pin next_state_i I4[2]
load net next_state0_i_n_1 -attr @rip O[0] -pin next_state0_i O[0] -pin next_state_i I0[0]
load net next_state[2] -attr @rip O[2] -pin current_state_reg[2:0] D[2] -pin next_state_i O[2]
load net next_state0_i__3_n_1 -attr @rip O[1] -pin next_state0_i__3 O[1] -pin next_state_i I4[1]
load net next_state0_i__0_n_0 -attr @rip O[2] -pin next_state0_i__0 O[2] -pin next_state_i I1[2]
load net next_state0_i__3_n_2 -attr @rip O[0] -pin next_state0_i__3 O[0] -pin next_state_i I4[0]
load net next_state0_i__5_n_0 -attr @rip O[2] -pin next_state0_i__5 O[2] -pin next_state_i I6[2]
load net <const1> -power -pin next_state0_i I0[0] -pin next_state0_i__0 I0[1] -pin next_state0_i__0 I1[0] -pin next_state0_i__1 I0[1] -pin next_state0_i__1 I0[0] -pin next_state0_i__1 I1[1] -pin next_state0_i__2 I0[2] -pin next_state0_i__2 I1[1] -pin next_state0_i__2 I1[0] -pin next_state0_i__3 I0[2] -pin next_state0_i__3 I0[0] -pin next_state0_i__3 I1[2] -pin next_state0_i__4 I0[2] -pin next_state0_i__4 I0[1] -pin next_state0_i__4 I1[2] -pin next_state0_i__4 I1[0] -pin next_state0_i__5 I0[2] -pin next_state0_i__5 I0[1] -pin next_state0_i__5 I0[0] -pin next_state0_i__5 I1[2] -pin next_state0_i__5 I1[1] -pin next_state_i I7[2] -pin next_state_i I7[1] -pin next_state_i I7[0]
load net next_state0_i__0_n_1 -attr @rip O[1] -pin next_state0_i__0 O[1] -pin next_state_i I1[1]
load net next_state0_i__4_n_0 -attr @rip O[2] -pin next_state0_i__4 O[2] -pin next_state_i I5[2]
load net next_state0_i__5_n_1 -attr @rip O[1] -pin next_state0_i__5 O[1] -pin next_state_i I6[1]
load net next_state0_i__0_n_2 -attr @rip O[0] -pin next_state0_i__0 O[0] -pin next_state_i I1[0]
load net next_state0_i__4_n_1 -attr @rip O[1] -pin next_state0_i__4 O[1] -pin next_state_i I5[1]
load net next_state0_i__5_n_2 -attr @rip O[0] -pin next_state0_i__5 O[0] -pin next_state_i I6[0]
load net next_state[0] -attr @rip O[0] -pin current_state_reg[2:0] D[0] -pin next_state_i O[0]
load net out[1] -attr @rip 1 -pin current_state_reg[2:0] Q[1] -pin next_state_i S[1] -port out[1]
load net clk -port clk -pin current_state_reg[2:0] C
netloc clk 1 0 3 NJ 510 380J 380 730J
load net in -port in -pin next_state0_i S -pin next_state0_i__0 S -pin next_state0_i__1 S -pin next_state0_i__2 S -pin next_state0_i__3 S -pin next_state0_i__4 S -pin next_state0_i__5 S
netloc in 1 0 1 20
load net next_state0_i__4_n_2 -attr @rip O[0] -pin next_state0_i__4 O[0] -pin next_state_i I5[0]
load net reset -pin current_state_reg[2:0] CLR -port reset
netloc reset 1 0 3 NJ 660 NJ 660 750J
load netBundle @next_state0_i_n_0 2 next_state0_i_n_0 next_state0_i_n_1 -autobundled
netbloc @next_state0_i_n_0 1 1 1 460
load netBundle @out 3 out[2] out[1] out[0] -autobundled
netbloc @out 1 2 2 NJ 640 1020
load netBundle @next_state0_i__3_n_0 3 next_state0_i__3_n_0 next_state0_i__3_n_1 next_state0_i__3_n_2 -autobundled
netbloc @next_state0_i__3_n_0 1 1 1 400
load netBundle @next_state0_i__4_n_0 3 next_state0_i__4_n_0 next_state0_i__4_n_1 next_state0_i__4_n_2 -autobundled
netbloc @next_state0_i__4_n_0 1 1 1 440
load netBundle @next_state0_i__2_n_0 3 next_state0_i__2_n_0 next_state0_i__2_n_1 next_state0_i__2_n_2 -autobundled
netbloc @next_state0_i__2_n_0 1 1 1 400
load netBundle @next_state 3 next_state[2] next_state[1] next_state[0] -autobundled
netbloc @next_state 1 2 1 N
load netBundle @next_state0_i__1_n_0 3 next_state0_i__1_n_0 next_state0_i__1_n_1 next_state0_i__1_n_2 -autobundled
netbloc @next_state0_i__1_n_0 1 1 1 420
load netBundle @next_state0_i__5_n_0 3 next_state0_i__5_n_0 next_state0_i__5_n_1 next_state0_i__5_n_2 -autobundled
netbloc @next_state0_i__5_n_0 1 1 1 460
load netBundle @next_state0_i__0_n_0 3 next_state0_i__0_n_0 next_state0_i__0_n_1 next_state0_i__0_n_2 -autobundled
netbloc @next_state0_i__0_n_0 1 1 1 440
levelinfo -pg 1 0 250 600 810 1040 -top 0 -bot 930
show
zoom 0.711452
scrollpos -359 167
#
# initialize ictrl to current module reduce1s work:reduce1s:NOFILE
ictrl init topinfo |
ictrl layer glayer install
ictrl layer glayer config ibundle 1
ictrl layer glayer config nbundle 0
ictrl layer glayer config pbundle 0
ictrl layer glayer config cache 1
