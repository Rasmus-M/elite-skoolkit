@ $4000 start
@ $4000 org
b $4000 #UDGTABLE { #SCR(loading) | loading screen. } TABLE#
B $4000,6144,8
b $5800 attributes
B $5800,768,8
b $5B00 printer buffer
@ $5B00 label=ctrl_panel_attrs
B $5B00,256,8
b $5C00 system variables
B $5C00,192,8
b $5CC0 reserved
B $5CC0,11,8,3
b $5CCB available
B $5CCB,1205,8*150,5
b $6180 Ship lookup table XX21
@ $6180 label=ship_lookup_table
B $6180,1,1
W $6181,2,2
B $6183,2,1
W $6185,2,2
B $6187,2,1
W $6189,2,2
B $618B,2,1
W $618D,2,2
B $618F,2,1
W $6191,2,2
B $6193,2,1
W $6195,2,2
B $6197,2,1
W $6199,2,2
B $619B,2,1
W $619D,2,2
B $619F,2,1
W $61A1,2,2
B $61A3,2,1
W $61A5,2,2
B $61A7,2,1
W $61A9,2,2
B $61AB,2,1
W $61AD,2,2
B $61AF,2,1
W $61B1,2,2
B $61B3,2,1
W $61B5,2,2
B $61B7,2,1
W $61B9,2,2
B $61BB,2,1
W $61BD,2,2
B $61BF,2,1
W $61C1,2,2
B $61C3,2,1
W $61C5,2,2
B $61C7,2,1
W $61C9,2,2
B $61CB,1,1
b $61CC unknown ship 1
@ $61CC label=unknown_ship_1
B $61CC,23,8*2,7
b $61E3 unknown ship 1 vertices
B $61E3,114,6
b $6255 unknown ship 1 edges
B $6255,112,4
b $62C5 unknown ship 1 faces
B $62C5,48,4
b $62F5 unknown ship 2
@ $62F5 label=unknown_ship_2
B $62F5,23,8*2,7
b $630C ship asteroid
@ $630C label=ship_asteroid
B $630C,23,8*2,7
b $6323 ship asteroid vertices
B $6323,54,6
b $6359 ship asteroid edges
B $6359,84,4
b $63AD ship asteroid faces
B $63AD,56,4
b $63E5 ship canister
@ $63E5 label=ship_canister
B $63E5,23,8*2,7
b $63FC ship canister vertices
B $63FC,60,6
b $6438 ship canister edges
B $6438,60,4
b $6474 ship canister faces
B $6474,28,4
b $6490 unknown ship 3
@ $6490 label=unknown_ship_3
B $6490,23,8*2,7
b $64A7 ship cobra
@ $64A7 label=ship_cobra_mk_3
B $64A7,23,8*2,7
b $64BE ship cobra mk 3 vertices
B $64BE,168,6
b $6566 ship cobra mk 3 edges
B $6566,152,4
b $65FE ship cobra mk 3 faces
B $65FE,52,4
b $6632 ship escape pod
@ $6632 label=ship_escapepod
B $6632,23,8*2,7
b $6649 ship escape pod vertices
B $6649,24,6
b $6661 ship escape pod edges
B $6661,24,4
b $6679 ship escape pod faces
B $6679,16,4
b $6689 unknown ship 4
@ $6689 label=unknown_ship_4
B $6689,23,8*2,7
b $66A0 unknown ship 4 vertices
B $66A0,114,6
b $6712 unknown ship 4 edges
B $6712,108,4
b $677E unknown ship 4 faces
B $677E,40,4
b $67A6 ship missile
@ $67A6 label=ship_missile
B $67A6,23,8*2,7
b $67BD ship missile vertices
B $67BD,102,6
b $6823 ship missible edges
B $6823,96,4
b $6883 ship missile faces
B $6883,36,4
b $68A7 unknown ship 5
@ $68A7 label=unknown_ship_5
B $68A7,23,8*2,7
b $68BE unknown ship 5 vertices
B $68BE,24,6
b $68D6 unknown ship 5 edges
B $68D6,16,4
b $68E6 unknown ship 6
@ $68E6 label=unknown_ship_6
B $68E6,23,8*2,7
b $68FD ship python
@ $68FD label=ship_python
B $68FD,23,8*2,7
b $6914 ship python vertices
B $6914,66,6
b $6956 ship python edges
B $6956,104,4
b $69BE ship python faces
B $69BE,52,4
b $69F2 ship sidewinder
@ $69F2 label=ship_sidewinder
B $69F2,23,8*2,7
b $6A09 ship sidewinder vertices
B $6A09,60,6
b $6A45 ship sidewinder edges
B $6A45,60,4
b $6A81 ship sidewinder faces
B $6A81,28,4
b $6A9D ship coriolis
@ $6A9D label=ship_coriolis
B $6A9D,23,8*2,7
b $6AB4 ship coriolis vertices
B $6AB4,96,6
b $6B14 ship coriolis edges
B $6B14,112,4
b $6B84 ship coriolis faces
B $6B84,56,4
b $6BBC unknown ship 7
@ $6BBC label=unknown_ship_7
B $6BBC,23,8*2,7
b $6BD3 unknown ship 7 vertices
B $6BD3,24,6
b $6BEB unknown ship 7 edges
B $6BEB,24,4
b $6C03 unknown ship 7 faces
B $6C03,16,4
b $6C13 ship thargoid
@ $6C13 label=ship_thargoid
B $6C13,23,8*2,7
b $6C2A ship thargoid vertices
B $6C2A,120,6
b $6CA2 ship thargoid edges
B $6CA2,104,4
b $6D0A ship thargoid faces
B $6D0A,40,4
b $6D32 unknown ship 8
@ $6D32 label=unknown_ship_8
B $6D32,23,8*2,7
b $6D49 unknown ship 8 vertices
B $6D49,102,6
b $6DAF unknown ship 8 edges
B $6DAF,84,4
b $6E03 unknown ship 8 faces
B $6E03,24,4
b $6E1B ship viper
@ $6E1B label=ship_viper
B $6E1B,23,8*2,7
b $6E32 ship viper vertices
B $6E32,90,6
b $6E8C ship viper edges
B $6E8C,80,4
b $6EDC ship viper faces
B $6EDC,28,4
b $6EF8 ship thargon
@ $6EF8 label=ship_thargon
B $6EF8,23,8*2,7
b $6F0F ship thargon vertices
B $6F0F,60,6
b $6F4B ship thargon edges
B $6F4B,60,4
b $6F87 ship thargon faces
B $6F87,28,4
b $6FA3 Data block at 6FA3
B $6FA3,79,8*9,7
c $6FF2 code start
D $6FF2 Used by the routine at #R$9A40.
c $6FF8 Routine at 6FF8
D $6FF8 Used by the routines at #R$7222, #R$7471, #R$8F0D and #R$DAB4.
@ $6FF8 label=jump_to_70B0
b $6FFB Data block at 6FFB
B $6FFB,142,8*17,6
c $7089 Routine at 7089
D $7089 Used by the routine at #R$6FF2.
c $70A9 Routine at 70A9
D $70A9 Used by the routines at #R$6FF2 and #R$7089.
c $70B0 Routine at 70B0
D $70B0 Used by the routine at #R$6FF8.
N $70BA This entry point is used by the routine at #R$70A9.
s $70DE Unused
S $70DE,2,$02
c $70E0 Jump to 7366
D $70E0 Used by the routine at #R$D07F.
@ $70E0 label=jump_to_7366
b $70E3 Data block at 70E3
B $70E3,54,8*6,6
c $7119 Routine at 7119
D $7119 Used by the routines at #R$EB7C and #R$EC58.
s $711C Unused
S $711C,5,$05
c $7121 Routine at 7121
D $7121 Used by the routines at #R$DAB4, #R$E306 and #R$EF87.
s $7124 Unused
S $7124,1,$01
c $7125 Routine at 7125
D $7125 Used by the routine at #R$FF25.
b $7128 Data block at 7128
B $7128,20,8*2,4
c $713C Routine at 713C
D $713C Used by the routine at #R$7471.
c $717B Routine at 717B
D $717B Used by the routine at #R$7471.
N $71BA This entry point is used by the routine at #R$9C1C.
c $71C0 Routine at 71C0
D $71C0 Used by the routine at #R$717B.
c $71E4 Routine at 71E4
D $71E4 Used by the routine at #R$71C0.
c $71F3 Routine at 71F3
D $71F3 Used by the routine at #R$7471.
b $7221 Data block at 7221
B $7221,1,1
c $7222 Routine at 7222
D $7222 Used by the routine at #R$7471.
N $7253 This entry point is used by the routine at #R$7265.
N $7259 This entry point is used by the routine at #R$725C.
c $725C Routine at 725C
D $725C Used by the routine at #R$8042.
N $7260 This entry point is used by the routine at #R$726C.
c $7265 Routine at 7265
D $7265 Used by the routine at #R$8042.
c $726C Routine at 726C
D $726C Used by the routine at #R$93ED.
c $7278 Routine at 7278
D $7278 Used by the routine at #R$93ED.
c $728D Routine at 728D
D $728D Used by the routine at #R$93ED.
N $7295 This entry point is used by the routine at #R$7278.
s $72A2 Unused
S $72A2,1,$01
c $72A3 Routine at 72A3
D $72A3 Used by the routine at #R$7471.
c $7304 Routine at 7304
D $7304 Used by the routine at #R$72A3.
c $730A Routine at 730A
D $730A Used by the routine at #R$72A3.
c $7310 Routine at 7310
D $7310 Used by the routine at #R$72A3.
c $7316 Routine at 7316
D $7316 Used by the routine at #R$72A3.
c $731C Routine at 731C
D $731C Used by the routine at #R$72A3.
c $7322 Routine at 7322
D $7322 Used by the routine at #R$72A3.
c $732B Routine at 732B
D $732B Used by the routine at #R$72A3.
c $7331 Routine at 7331
D $7331 Used by the routine at #R$72A3.
c $7344 Routine at 7344
D $7344 Used by the routine at #R$72A3.
c $7366 title screen
D $7366 Used by the routine at #R$70E0.
@ $7366 label=title_screen
C $7366,4 Save the stack pointer
C $736D,3 Draw the control panel
N $7370 This entry point is used by the routine at #R$728D.
c $7378 title loop
@ $7378 label=title_loop
N $7394 This entry point is used by the routine at #R$7471.
N $739E This entry point is used by the routine at #R$7471.
c $7426 Routine at 7426
D $7426 Used by the routine at #R$7378.
c $7430 Routine at 7430
D $7430 Used by the routine at #R$7378.
N $7438 This entry point is used by the routine at #R$7426.
c $7447 Routine at 7447
D $7447 Used by the routines at #R$7426 and #R$7430.
N $7459 This entry point is used by the routine at #R$7430.
c $7461 Routine at 7461
D $7461 Used by the routines at #R$7366 and #R$7378.
b $7470 Data block at 7470
B $7470,1,1
c $7471 Routine at 7471
D $7471 Used by the routine at #R$7378.
s $7578 Unused
S $7578,12,$0C
c $7584 Routine at 7584
D $7584 Used by the routines at #R$7471 and #R$93ED.
c $75C0 Routine at 75C0
D $75C0 Used by the routines at #R$7471 and #R$7584.
c $75E1 Routine at 75E1
D $75E1 Used by the routine at #R$7584.
c $7799 Routine at 7799
D $7799 Used by the routine at #R$77A0.
c $77A0 Routine at 77A0
D $77A0 Used by the routine at #R$75E1.
N $77C4 This entry point is used by the routine at #R$7799.
c $77E8 Routine at 77E8
D $77E8 Used by the routine at #R$77ED.
c $77ED Routine at 77ED
D $77ED Used by the routine at #R$77A0.
N $77F3 This entry point is used by the routine at #R$77E8.
c $780A Routine at 780A
D $780A Used by the routine at #R$77A0.
N $782A This entry point is used by the routine at #R$75E1.
c $782C Routine at 782C
D $782C Used by the routine at #R$7831.
c $7831 Routine at 7831
D $7831 Used by the routine at #R$77ED.
N $7836 This entry point is used by the routine at #R$782C.
N $7839 This entry point is used by the routine at #R$780A.
N $783B This entry point is used by the routine at #R$75E1.
N $783D This entry point is used by the routine at #R$75E1.
c $7853 Routine at 7853
D $7853 Used by the routines at #R$7471 and #R$93ED.
c $7861 Routine at 7861
D $7861 Used by the routine at #R$7471.
c $7898 Routine at 7898
D $7898 Used by the routines at #R$7471 and #R$93ED.
N $7943 This entry point is used by the routine at #R$7BFC.
N $7A1E This entry point is used by the routine at #R$7BFC.
c $7AA5 Routine at 7AA5
D $7AA5 Used by the routine at #R$7898.
c $7AB0 Routine at 7AB0
D $7AB0 Used by the routine at #R$7898.
N $7AB9 This entry point is used by the routine at #R$7898.
N $7ABC This entry point is used by the routine at #R$7898.
N $7BB3 This entry point is used by the routine at #R$7D55.
c $7BFC Routine at 7BFC
D $7BFC Used by the routine at #R$7898.
N $7C07 This entry point is used by the routine at #R$7AB0.
N $7C55 This entry point is used by the routine at #R$7AB0.
c $7C92 Routine at 7C92
D $7C92 Used by the routine at #R$7AB0.
c $7CA7 Routine at 7CA7
D $7CA7 Used by the routines at #R$7898 and #R$7AB0.
c $7CB4 Routine at 7CB4
D $7CB4 Used by the routines at #R$7898 and #R$7BFC.
c $7CC1 Routine at 7CC1
D $7CC1 Used by the routines at #R$7898, #R$7AA5 and #R$7AB0.
c $7CC9 Routine at 7CC9
N $7CCC This entry point is used by the routine at #R$7CC1.
c $7CD5 Routine at 7CD5
D $7CD5 Used by the routine at #R$7898.
N $7CFB This entry point is used by the routines at #R$7898, #R$7AB0 and #R$7BFC.
c $7D0F Routine at 7D0F
D $7D0F Used by the routine at #R$7AB0.
c $7D55 Routine at 7D55
D $7D55 Used by the routines at #R$7898, #R$7AB0 and #R$7BFC.
N $7D68 This entry point is used by the routine at #R$937B.
N $7DD2 This entry point is used by the routine at #R$D2E1.
c $7E6D Routine at 7E6D
D $7E6D Used by the routine at #R$7898.
c $7E86 Routine at 7E86
D $7E86 Used by the routine at #R$7D55.
b $7E8D Data block at 7E8D
B $7E8D,32,8
t $7EAD Message at 7EAD
T $7EAD,3,3
b $7EB0 Data block at 7EB0
B $7EB0,20,8*2,4
t $7EC4 Message at 7EC4
T $7EC4,3,3
b $7EC7 Data block at 7EC7
B $7EC7,10,8,2
t $7ED1 Message at 7ED1
T $7ED1,4,4
b $7ED5 Data block at 7ED5
B $7ED5,9,8,1
c $7EDE Routine at 7EDE
D $7EDE Used by the routine at #R$7471.
b $7F6F Data block at 7F6F
B $7F6F,79,8*9,7
c $7FBE Routine at 7FBE
D $7FBE Used by the routines at #R$7378, #R$7471, #R$9296 and #R$93ED.
@ $7FBE label=draw_screen_buffer
C $7FBE,3 Top of screen
C $7FC1,3 Screen buffer addr at top of screen
C $7FC4,3 Copy even lines
C $7FC7,3 2nd third of screen
C $7FCA,3 Screen buffer addr at 2nd third of screen
C $7FCD,3 Copy even lines
C $7FD0,3 2nd line
C $7FD3,3 Screen buffer addr at 2nd line
C $7FD6,3 Copy odd lines
C $7FD9,3 2nd line of 2nd third
C $7FDC,3 Screen buffer addr at 2nd line of 2nd third
C $7FDF,3 Copy odd lines
c $7FE3 Routine at 7FE3
D $7FE3 Copy every 2nd line of an area from buffer to screen Used by the routine at #R$7FBE.
R $7FE3 HL Source (screen buffer) address (110sslllrrrccccc)
R $7FE3 DE Destination (screen) address (010sslllrrrccccc)
@ $7FE3 label=copy_screen_area
C $7FE3,2 Number of rows?
C $7FE5,1 Save screen address
C $7FE8,2 Number of lines?
C $7FEA,1 Save screen address
C $7FEB,2 Copy 32 bytes in unrolled loop
C $802B,1 Restore screen address at beginning of line
C $802C,1 One line down
C $802D,1 One line down
C $802E,1 Source MSB = dest MSB
C $802F,2 Set msb to make source $cxxx
C $8031,1 Source follows destination
C $8032,1 Line counter
C $8033,3 Loop for 4 lines
C $8036,1 Restore screen address at top of section
C $8037,1 A=rrrccccc
C $8038,2 Next row
C $803A,1 Update destination
C $803B,1 Update source
C $803C,1 Source MSB = dest MSB
C $803D,2 Set msb to make source $cxxx
C $803F,2 Loop for 8 rows
c $8042 Routine at 8042
D $8042 Used by the routines at #R$717B, #R$728D, #R$7378, #R$7471 and #R$93ED.
@ $8042 label=draw_ctrl_panel
C $8047,1 Return if byte at 0,0 is not $ff
N $804B This entry point is used by the routine at #R$7366.
C $804B,3 Clear screen
C $804E,3 One row - 1
C $8051,2 23 rows
C $8055,3 Attributes
C $8058,1 Write 0
C $8059,1 End of row
C $805A,1 Write 0
C $805B,1 Next row
C $805C,1 Write 0
C $805D,2 Repeat 23 times
C $805F,1 End of last row
C $8060,1 Write 0
C $8061,3 Copy control panel gfx
C $806C,3 Copy control panel attrs
c $8080 Routine at 8080
D $8080 Used by the routines at #R$7378, #R$7471, #R$9296 and #R$93ED.
s $80D1 Unused
S $80D1,2,$02
c $80D3 Routine at 80D3
D $80D3 Used by the routine at #R$7471.
N $8136 This entry point is used by the routine at #R$815D.
c $813E Routine at 813E
D $813E Used by the routines at #R$71F3, #R$80D3 and #R$93ED.
c $815D Routine at 815D
D $815D Used by the routine at #R$80D3.
N $817E This entry point is used by the routines at #R$7378 and #R$93ED.
C $8183,3 Copy control panel gfx to screen
C $818E,3 Copy control panel attrs to screen
s $81A3 Unused
S $81A3,6,$06
c $81A9 Routine at 81A9
D $81A9 Used by the routine at #R$7471.
c $8271 Routine at 8271
D $8271 Used by the routine at #R$81A9.
c $827A Routine at 827A
D $827A Used by the routine at #R$81A9.
N $827E This entry point is used by the routine at #R$81A9.
c $829C Routine at 829C
D $829C Used by the routine at #R$81A9.
c $82B0 Routine at 82B0
D $82B0 Used by the routine at #R$827A.
c $82BB Routine at 82BB
D $82BB Used by the routine at #R$8271.
c $82D1 Routine at 82D1
D $82D1 Used by the routine at #R$81A9.
c $82D7 Routine at 82D7
D $82D7 Used by the routine at #R$81A9.
c $8302 Routine at 8302
D $8302 Used by the routines at #R$8315 and #R$8322.
c $8315 Routine at 8315
D $8315 Used by the routine at #R$827A.
c $8322 Routine at 8322
D $8322 Used by the routine at #R$81A9.
N $8327 This entry point is used by the routine at #R$8315.
c $8390 Routine at 8390
D $8390 Used by the routine at #R$829C.
c $8445 Routine at 8445
D $8445 Used by the routines at #R$8390, #R$8459 and #R$96D9.
c $844F Routine at 844F
D $844F Used by the routines at #R$8390 and #R$96D9.
c $8459 Routine at 8459
D $8459 Used by the routine at #R$8390.
b $8477 Data block at 8477
B $8477,98,8*12,2
c $84D9 Routine at 84D9
D $84D9 Used by the routines at #R$7471 and #R$93ED.
b $8523 Data block at 8523
B $8523,2,2
t $8525 Message at 8525
T $8525,5,5
b $852A Data block at 852A
B $852A,5,5
t $852F Message at 852F
T $852F,3,3
b $8532 Data block at 8532
B $8532,7,7
t $8539 Message at 8539
T $8539,5,5
b $853E Data block at 853E
B $853E,2,2
c $8540 Routine at 8540
D $8540 Used by the routine at #R$84D9.
c $854F Routine at 854F
D $854F Used by the routine at #R$84D9.
N $855B This entry point is used by the routine at #R$8540.
c $8606 Routine at 8606
D $8606 Used by the routine at #R$854F.
b $8619 Data block at 8619
B $8619,18,8*2,2
c $862B Routine at 862B
D $862B Used by the routines at #R$87FE, #R$884A, #R$8898, #R$88C2 and #R$8FB8.
c $8643 Routine at 8643
D $8643 Used by the routines at #R$87FE, #R$884A, #R$8898, #R$88C2 and #R$8FB8.
c $865A Routine at 865A
D $865A Used by the routines at #R$87FE, #R$884A, #R$8898, #R$88C2 and #R$8FCC.
c $8672 Routine at 8672
D $8672 Used by the routines at #R$87FE, #R$884A, #R$8898, #R$88C2 and #R$8FCC.
c $8689 Routine at 8689
D $8689 Used by the routines at #R$87C8 and #R$893F.
c $86A1 Routine at 86A1
D $86A1 Used by the routines at #R$87C8 and #R$893F.
c $86B8 Routine at 86B8
D $86B8 Used by the routines at #R$87FE and #R$884A.
c $86C4 Routine at 86C4
D $86C4 Used by the routines at #R$87FE and #R$884A.
c $86D0 Routine at 86D0
D $86D0 Used by the routines at #R$7584 and #R$8F0D.
c $86DE Routine at 86DE
D $86DE Used by the routines at #R$7584 and #R$8E29.
N $86E4 This entry point is used by the routine at #R$9296.
N $86E9 This entry point is used by the routine at #R$86D0.
c $86EE Routine at 86EE
D $86EE Used by the routine at #R$86DE.
c $87BF Routine at 87BF
D $87BF Used by the routines at #R$8322, #R$86EE, #R$8ACD and #R$96D9.
c $87C8 Routine at 87C8
D $87C8 Used by the routine at #R$86EE.
c $87D4 Routine at 87D4
D $87D4 Used by the routine at #R$87C8.
c $87F4 Routine at 87F4
D $87F4 Used by the routine at #R$86EE.
c $87FE Routine at 87FE
D $87FE Used by the routine at #R$86EE.
N $8802 This entry point is used by the routine at #R$87F4.
c $8840 Routine at 8840
D $8840 Used by the routine at #R$86EE.
c $884A Routine at 884A
D $884A Used by the routine at #R$86EE.
N $884D This entry point is used by the routine at #R$8840.
c $888E Routine at 888E
D $888E Used by the routine at #R$86EE.
c $8898 Routine at 8898
D $8898 Used by the routine at #R$86EE.
N $889B This entry point is used by the routine at #R$888E.
c $88B8 Routine at 88B8
D $88B8 Used by the routine at #R$86EE.
c $88C2 Routine at 88C2
D $88C2 Used by the routine at #R$86EE.
N $88C5 This entry point is used by the routine at #R$88B8.
c $893F Routine at 893F
D $893F Used by the routine at #R$86EE.
c $8985 Routine at 8985
D $8985 Used by the routine at #R$8898.
c $89A1 Routine at 89A1
D $89A1 Used by the routine at #R$8898.
c $89C3 Routine at 89C3
D $89C3 Used by the routines at #R$8985 and #R$89A1.
c $89D4 Routine at 89D4
D $89D4 Used by the routines at #R$87D4, #R$88C2, #R$893F and #R$8985.
c $89EF Routine at 89EF
D $89EF Used by the routines at #R$87D4, #R$88C2, #R$893F and #R$89A1.
c $8A16 Routine at 8A16
D $8A16 Used by the routines at #R$87FE and #R$884A.
c $8A25 Routine at 8A25
D $8A25 Used by the routines at #R$87FE and #R$884A.
c $8A37 Routine at 8A37
D $8A37 Used by the routine at #R$86B8.
c $8A82 Routine at 8A82
D $8A82 Used by the routine at #R$86C4.
c $8ACD Routine at 8ACD
D $8ACD Used by the routines at #R$87FE, #R$884A, #R$88C2 and #R$893F.
c $8AF7 Routine at 8AF7
D $8AF7 Used by the routines at #R$8689 and #R$86A1.
c $8B0F Routine at 8B0F
D $8B0F Used by the routine at #R$8AF7.
@ $8B31 label=self_mod_1
C $8B31,2 Self-modified
N $8B69 This entry point is used by the routines at #R$8C13 and #R$8D13.
N $8B84 This entry point is used by the routine at #R$8B8A.
c $8B8A Routine at 8B8A
N $8B9C This entry point is used by the routine at #R$8AF7.
N $8BA9 This entry point is used by the routines at #R$8C13 and #R$8D13.
@ $8BD2 label=self_mod_2
C $8BD2,2 Self-modified
N $8BF8 This entry point is used by the routines at #R$865A and #R$8672.
c $8C13 Routine at 8C13
D $8C13 Used by the routine at #R$8B8A.
@ $8C30 label=self_mod_3
C $8C30,2 Self-modified
N $8C86 This entry point is used by the routine at #R$8C96.
N $8C90 This entry point is used by the routine at #R$8C96.
c $8C96 Routine at 8C96
N $8CA0 This entry point is used by the routine at #R$8C13.
@ $8CD2 label=self_mod_4
C $8CD2,2 Self-modified
N $8CF8 This entry point is used by the routines at #R$862B and #R$8643.
c $8D13 Routine at 8D13
D $8D13 Used by the routine at #R$8C96.
@ $8D32 label=self_mod_5
C $8D32,2 Self-modified
N $8D81 This entry point is used by the routine at #R$8D8B.
N $8D85 This entry point is used by the routine at #R$8D8B.
c $8D8B Routine at 8D8B
N $8D94 This entry point is used by the routine at #R$8D13.
C $8DC8,2 Self-modified
c $8DEE Routine at 8DEE
D $8DEE Used by the routines at #R$9060, #R$90CC, #R$917B, #R$91F4 and #R$925F.
N $8DF3 This entry point is used by the routine at #R$90FB.
c $8E08 Routine at 8E08
D $8E08 Used by the routines at #R$9060, #R$90CC, #R$917B, #R$91F4 and #R$925F.
N $8E0D This entry point is used by the routine at #R$90FB.
N $8E22 This entry point is used by the routine at #R$8DEE.
c $8E29 Routine at 8E29
D $8E29 Used by the routine at #R$7119.
b $8E8D Data block at 8E8D
@ $8E8D label=data_at_8E8D
B $8E8D,128,8
c $8F0D Routine at 8F0D
D $8F0D Used by the routine at #R$7471.
b $8FB4 Data block at 8FB4
B $8FB4,4,4
c $8FB8 Routine at 8FB8
D $8FB8 Used by the routine at #R$88C2.
c $8FCC Routine at 8FCC
D $8FCC Used by the routine at #R$88C2.
c $8FDA Routine at 8FDA
D $8FDA Used by the routine at #R$8985.
c $8FE3 Routine at 8FE3
D $8FE3 Used by the routine at #R$89D4.
c $8FED Routine at 8FED
D $8FED Used by the routine at #R$89EF.
c $8FF9 Routine at 8FF9
D $8FF9 Used by the routine at #R$8A25.
c $9004 Routine at 9004
D $9004 Used by the routine at #R$86B8.
c $9032 Routine at 9032
D $9032 Used by the routine at #R$86C4.
c $9060 Routine at 9060
D $9060 Used by the routines at #R$862B and #R$8643.
c $90BB Routine at 90BB
D $90BB Used by the routine at #R$90CC.
c $90BF Routine at 90BF
D $90BF Used by the routines at #R$9060, #R$90C5 and #R$90CC.
c $90C5 Routine at 90C5
D $90C5 Used by the routine at #R$90CC.
c $90CC Routine at 90CC
D $90CC Used by the routine at #R$9060.
N $90D6 This entry point is used by the routine at #R$90C5.
c $90FB Routine at 90FB
D $90FB Used by the routines at #R$8689 and #R$86A1.
N $914B This entry point is used by the routines at #R$9060 and #R$91F4.
N $9165 This entry point is used by the routine at #R$91C0.
c $916B Routine at 916B
D $916B Used by the routine at #R$917B.
c $9173 Routine at 9173
D $9173 Used by the routine at #R$917B.
c $917B Routine at 917B
D $917B Used by the routine at #R$90FB.
N $9188 This entry point is used by the routine at #R$916B.
N $918C This entry point is used by the routine at #R$9173.
N $9191 This entry point is used by the routines at #R$90BB and #R$924D.
c $91AC Routine at 91AC
D $91AC Used by the routine at #R$916B.
c $91C0 Routine at 91C0
D $91C0 Used by the routine at #R$9173.
N $91CD This entry point is used by the routine at #R$91AC.
N $91CE This entry point is used by the routines at #R$91AC and #R$91D1.
c $91D1 Routine at 91D1
D $91D1 Used by the routine at #R$917B.
c $91F4 Routine at 91F4
D $91F4 Used by the routines at #R$865A and #R$8672.
c $924D Routine at 924D
D $924D Used by the routine at #R$925F.
c $9251 Routine at 9251
D $9251 Used by the routines at #R$91F4, #R$9257 and #R$925F.
c $9257 Routine at 9257
D $9257 Used by the routine at #R$925F.
c $925F Routine at 925F
D $925F Used by the routine at #R$91F4.
N $9266 This entry point is used by the routine at #R$9257.
s $928B Unused
S $928B,1,$01
c $928C Routine at 928C
D $928C Used by the routine at #R$93ED.
c $9296 Routine at 9296
D $9296 Used by the routine at #R$7471.
N $92D6 This entry point is used by the routine at #R$928C.
c $9337 Routine at 9337
c $9341 Routine at 9341
c $935E Routine at 935E
D $935E Used by the routine at #R$9296.
b $9364 Data block at 9364
B $9364,5,5
c $9369 Routine at 9369
D $9369 Used by the routine at #R$9337.
c $937B Routine at 937B
D $937B Used by the routine at #R$935E.
c $93AC Routine at 93AC
D $93AC Used by the routine at #R$9296.
c $93C0 Routine at 93C0
D $93C0 Used by the routine at #R$9341.
b $93D0 Data block at 93D0
@ $93D0 label=data_at_93d0
B $93D0,29,8*3,5
c $93ED Routine at 93ED
D $93ED Used by the routines at #R$717B and #R$80D3.
N $94F4 This entry point is used by the routines at #R$7366, #R$7378 and #R$9296.
N $94FE This entry point is used by the routines at #R$8042 and #R$813E.
c $9509 Routine at 9509
D $9509 Used by the routines at #R$7471, #R$7EDE, #R$9296 and #R$93ED.
b $9522 Data block at 9522
@ $9522 label=data_at_9522
S $9522,5,$05
c $9527 Routine at 9527
D $9527 Used by the routines at #R$7471 and #R$93ED.
c $9532 Routine at 9532
D $9532 Used by the routine at #R$93C0.
N $953D This entry point is used by the routine at #R$9296.
N $9548 This entry point is used by the routine at #R$7471.
c $9551 Routine at 9551
D $9551 Used by the routines at #R$9527 and #R$9532.
c $9561 Routine at 9561
@ $9561 label=jump_table
c $9579 Routine at 9579
D $9579 Used by the routine at #R$7125.
N $95A6 This entry point is used by the routine at #R$9551.
N $95AD This entry point is used by the routine at #R$9684.
N $95CF This entry point is used by the routine at #R$9532.
N $95EE This entry point is used by the routine at #R$9657.
c $9607 Routine at 9607
D $9607 Used by the routine at #R$9624.
N $9610 This entry point is used by the routine at #R$9579.
c $9624 Routine at 9624
D $9624 Used by the routine at #R$9579.
N $9628 This entry point is used by the routine at #R$964D.
c $9641 Routine at 9641
D $9641 Used by the routine at #R$956D.
b $9648 Data block at 9648
D $9648 Used by the routine at #R$9561.
B $9648,5,5
c $964D Routine at 964D
D $964D Used by the routine at #R$9641.
c $9657 Routine at 9657
D $9657 Used by the routine at #R$9561.
N $965E This entry point is used by the routine at #R$9561.
N $9674 This entry point is used by the routine at #R$9561.
N $9678 This entry point is used by the routine at #R$9561.
N $967F This entry point is used by the routine at #R$9692.
c $9684 Routine at 9684
D $9684 Used by the routine at #R$969B.
c $9692 Routine at 9692
D $9692 Used by the routine at #R$9561.
c $969B Routine at 969B
D $969B Used by the routine at #R$9527.
c $96A9 Routine at 96A9
D $96A9 Used by the routine at #R$9532.
N $96B7 This entry point is used by the routine at #R$9532.
b $96BF Data block at 96BF
@ $96BF label=data at 96BF
B $96BF,6,6
c $96C5 Routine at 96C5
D $96C5 Used by the routine at #R$96D9.
N $96C9 This entry point is used by the routine at #R$96D9.
N $96CD This entry point is used by the routine at #R$96D9.
N $96D1 This entry point is used by the routine at #R$96D9.
c $96D6 Routine at 96D6
D $96D6 Used by the routine at #R$96D9.
c $96D9 Routine at 96D9
D $96D9 Used by the routine at #R$7471.
N $982E This entry point is used by the routines at #R$96D6, #R$986A and #R$987C.
c $986A Routine at 986A
D $986A Used by the routine at #R$96D9.
c $987C Routine at 987C
D $987C Used by the routine at #R$96D9.
c $988E Routine at 988E
D $988E Used by the routines at #R$7471 and #R$96D9.
c $98A2 Routine at 98A2
D $98A2 Used by the routine at #R$8042.
c $98CD Routine at 98CD
D $98CD Used by the routines at #R$7471, #R$815D, #R$96D9 and #R$98A2.
N $990C This entry point is used by the routine at #R$98A2.
s $9945 Unused
S $9945,1,$01
c $9946 Routine at 9946
D $9946 Used by the routine at #R$93ED.
b $99A3 Data block at 99A3
@ $99A3 data_at_99a3
B $99A3,1,1
c $99A4 Routine at 99A4
D $99A4 Used by the routine at #R$7121.
c $9A40 Routine at 9A40
D $9A40 Used by the routine at #R$7471.
N $9A59 This entry point is used by the routine at #R$7471.
N $9A8D This entry point is used by the routine at #R$9AA7.
c $9AA7 Routine at 9AA7
D $9AA7 Used by the routine at #R$9A40.
b $9ADA Data block at 9ADA
@ $9ADA label=data_at_9ADA
B $9ADA,1,1
c $9ADB Routine at 9ADB
D $9ADB Used by the routine at #R$9A40.
c $9B01 Routine at 9B01
D $9B01 Used by the routine at #R$9A40.
c $9B4A Routine at 9B4A
D $9B4A Used by the routine at #R$9B01.
c $9B57 Routine at 9B57
D $9B57 Used by the routine at #R$9B4A.
b $9B62 Data block at 9B62
B $9B62,18,8*2,2
c $9B74 Routine at 9B74
D $9B74 Used by the routines at #R$9946 and #R$9BA7.
c $9BA7 Routine at 9BA7
D $9BA7 Used by the routine at #R$9A40.
b $9C1B Data block at 9C1B
@ $9C1B label=data_at_9C1B
B $9C1B,1,1
c $9C1C Routine at 9C1C
D $9C1C Used by the routine at #R$9A40.
s $9C7B Unused
S $9C7B,5,$05
c $9C80 Routine at 9C80
D $9C80 Used by the routine at #R$7471.
c $9C83 Routine at 9C83
D $9C83 Used by the routines at #R$7853 and #R$7861.
c $9C86 Routine at 9C86
D $9C86 Used by the routines at #R$8322 and #R$DFF2.
c $9C89 Routine at 9C89
D $9C89 Used by the routines at #R$82BB and #R$96D9.
c $9C8C Routine at 9C8C
b $9C92 Data block at 9C92
B $9C92,10,8,2
c $9C9C Routine at 9C9C
D $9C9C Used by the routines at #R$7366, #R$7378, #R$9296, #R$9BA7 and #R$9C1C.
c $9C9F Routine at 9C9F
D $9C9F Used by the routine at #R$7471.
b $9CA2 Data block at 9CA2
B $9CA2,3,3
c $9CA5 Routine at 9CA5
D $9CA5 Used by the routine at #R$71E4.
c $9CAF Routine at 9CAF
D $9CAF Used by the routine at #R$7378.
s $9CB2 Unused
S $9CB2,3,$03
c $9CB5 Routine at 9CB5
D $9CB5 Used by the routine at #R$9C80.
c $9CBB Routine at 9CBB
D $9CBB Used by the routine at #R$9CB5.
c $9E73 Routine at 9E73
D $9E73 Used by the routine at #R$A587.
c $9E98 Routine at 9E98
D $9E98 Used by the routine at #R$9E73.
c $9ECF Routine at 9ECF
D $9ECF Used by the routine at #R$9E73.
c $9EF1 Routine at 9EF1
D $9EF1 Used by the routine at #R$9C86.
c $9F0A Routine at 9F0A
D $9F0A Used by the routine at #R$9EF1.
c $9F18 Routine at 9F18
D $9F18 Used by the routines at #R$9EF1 and #R$9F0A.
c $9F41 Routine at 9F41
D $9F41 Used by the routines at #R$9CBB and #R$A28D.
c $9F68 Routine at 9F68
D $9F68 Used by the routine at #R$9F41.
w $9F80 Data block at 9F80
@ $9F80 label=word at 9F80
W $9F80,2,2
c $9F82 Routine at 9F82
D $9F82 Used by the routine at #R$9CBB.
N $9FFD This entry point is used by the routine at #R$A28D.
c $A04B Routine at A04B
D $A04B Used by the routine at #R$9F82.
c $A076 Routine at A076
D $A076 Used by the routine at #R$A04B.
c $A098 Routine at A098
D $A098 Used by the routine at #R$A04B.
c $A0AB Routine at A0AB
D $A0AB Used by the routine at #R$9F82.
c $A0FD Routine at A0FD
D $A0FD Used by the routines at #R$A0AB and #R$A127.
c $A127 Routine at A127
D $A127 Used by the routine at #R$9F82.
c $A173 Routine at A173
D $A173 Used by the routines at #R$9C83 and #R$9F82.
c $A1EA Routine at A1EA
D $A1EA Used by the routine at #R$A173.
c $A281 Routine at A281
D $A281 Used by the routine at #R$A173.
s $A28B Unused
S $A28B,2,$02
c $A28D Routine at A28D
D $A28D Used by the routine at #R$9CAF.
b $A2B8 Data block at A2B8
B $A2B8,8,8
c $A2C0 Routine at A2C0
D $A2C0 Used by the routine at #R$9CBB.
c $A361 Routine at A361
D $A361 Used by the routine at #R$A2C0.
N $A36C This entry point is used by the routine at #R$A2C0.
c $A3A2 Routine at A3A2
D $A3A2 Used by the routines at #R$A2C0 and #R$A361.
N $A403 This entry point is used by the routines at #R$A2C0 and #R$A361.
c $A40F Routine at A40F
D $A40F Used by the routine at #R$A42F.
c $A42F Routine at A42F
D $A42F Used by the routines at #R$A361 and #R$A3A2.
N $A498 This entry point is used by the routine at #R$A4C4.
N $A4B2 This entry point is used by the routine at #R$A532.
c $A4B5 Routine at A4B5
D $A4B5 Used by the routine at #R$9CBB.
c $A4C4 Routine at A4C4
D $A4C4 Used by the routine at #R$A4B5.
c $A532 Routine at A532
D $A532 Used by the routine at #R$A4C4.
N $A537 This entry point is used by the routine at #R$A4C4.
c $A53F Routine at A53F
D $A53F Used by the routine at #R$A4C4.
c $A568 Routine at A568
D $A568 Used by the routine at #R$A42F.
N $A56F This entry point is used by the routine at #R$A42F.
c $A587 Routine at A587
D $A587 Used by the routine at #R$A42F.
c $A67D Routine at A67D
D $A67D Used by the routine at #R$A587.
c $A686 Routine at A686
D $A686 Used by the routine at #R$A587.
c $A69D Routine at A69D
D $A69D Used by the routine at #R$A6AC.
c $A6AC Routine at A6AC
D $A6AC Used by the routine at #R$AE69.
b $A6DE Data block at A6DE
@ $A6DE label=byte_at_A6DE
B $A6DE,1,1
c $A6DF Routine at A6DF
D $A6DF Used by the routines at #R$9CBB and #R$A28D.
c $A83C Routine at A83C
D $A83C Used by the routine at #R$A6DF.
c $A84D Routine at A84D
D $A84D Used by the routine at #R$A6DF.
N $A884 This entry point is used by the routine at #R$A8DE.
c $A8AC Routine at A8AC
D $A8AC Used by the routine at #R$A6DF.
c $A8DE Routine at A8DE
D $A8DE Used by the routine at #R$A6DF.
b $A8FA Data block at A8FA
@ $A8FA label=data_at_A8FA
B $A8FA,207,8*25,7
c $A9C9 Routine at A9C9
D $A9C9 Used by the routine at #R$A84D.
N $A9DE This entry point is used by the routine at #R$ACA2.
c $AA10 Routine at AA10
D $AA10 Used by the routines at #R$A9C9 and #R$AE01.
c $AA2B Routine at AA2B
D $AA2B Used by the routine at #R$ACA2.
c $AAFB Routine at AAFB
D $AAFB Used by the routines at #R$A6AC, #R$AA2B, #R$ABC0 and #R$AC01.
c $AB0B Routine at AB0B
D $AB0B Used by the routines at #R$A0FD, #R$A1EA, #R$A69D, #R$AB1E, #R$AC01, #R$AE8A and #R$BD95.
c $AB1E Routine at AB1E
D $AB1E Used by the routine at #R$AA2B.
c $AB34 Routine at AB34
D $AB34 Used by the routines at #R$9F68, #R$A1EA, #R$AF22, #R$B2F0 and #R$BD95.
c $AB4F Routine at AB4F
D $AB4F Used by the routine at #R$ACA2.
c $AB73 Routine at AB73
D $AB73 Used by the routine at #R$ACA2.
c $ABC0 Routine at ABC0
D $ABC0 Used by the routine at #R$AB73.
c $AC01 Routine at AC01
D $AC01 Used by the routines at #R$AB73 and #R$BDB4.
c $AC69 Routine at AC69
D $AC69 Used by the routines at #R$A6DF and #R$ACA2.
N $AC8B This entry point is used by the routine at #R$B2FE.
b $AC9F Data block at AC9F
@ $AC9F label=byte_at_AC9F
B $AC9F,1,1
b $ACA0 Data block at ACA0
@ $ACA0 label=byte_at_ACA0
B $ACA0,1,1
b $ACA1 Data block at ACA1
@ $ACA1 label=byte_at_ACA1
B $ACA1,1,1
c $ACA2 Routine at ACA2
D $ACA2 Used by the routine at #R$A9C9.
N $ACDF This entry point is used by the routine at #R$AB73.
N $ADF2 This entry point is used by the routine at #R$A9C9.
c $AE01 Routine at AE01
D $AE01 Used by the routine at #R$A84D.
c $AE50 Routine at AE50
D $AE50 Used by the routines at #R$A84D and #R$AE01.
c $AE69 Routine at AE69
D $AE69 Used by the routines at #R$9CBB and #R$A28D.
c $AE8A Routine at AE8A
D $AE8A Used by the routine at #R$AE69.
c $AECC Routine at AECC
D $AECC Used by the routine at #R$A84D.
c $AF22 Routine at AF22
D $AF22 Used by the routine at #R$AECC.
c $AF64 Routine at AF64
c $AFA8 Routine at AFA8
D $AFA8 Used by the routines at #R$9C89 and #R$9EF1.
c $AFC9 Routine at AFC9
D $AFC9 Used by the routines at #R$9CA5 and #R$A53F.
c $AFCD Routine at AFCD
D $AFCD Used by the routine at #R$BD5F.
b $AFF0 Data block at AFF0
@ $AFF0 label=data_at_AFF0
B $AFF0,84,8*10,4
c $B044 Routine at B044
D $B044 Used by the routines at #R$A84D, #R$AE01, #R$B63C and #R$B7B4.
N $B0E0 This entry point is used by the routine at #R$B362.
c $B2F0 Routine at B2F0
D $B2F0 Used by the routine at #R$B044.
c $B2FE Routine at B2FE
D $B2FE Used by the routines at #R$B044, #R$B362 and #R$B3A7.
c $B308 Routine at B308
D $B308 Used by the routine at #R$B044.
c $B362 Routine at B362
D $B362 Used by the routine at #R$B044.
c $B3A7 Routine at B3A7
D $B3A7 Used by the routines at #R$B044 and #R$B362.
c $B433 Routine at B433
N $B434 This entry point is used by the routine at #R$B044.
c $B45C Routine at B45C
D $B45C Used by the routine at #R$B460.
c $B460 Routine at B460
N $B464 This entry point is used by the routines at #R$B044 and #R$B45C.
c $B484 Routine at B484
N $B485 This entry point is used by the routine at #R$B044.
c $B4AD Routine at B4AD
N $B4B1 This entry point is used by the routine at #R$B044.
b $B4D5 Data block at B4D5
@ $B4D5 label=byte_at_B4D5
B $B4D5,1,1
b $B4D6 Data block at B4D6
@ $B4D6 label=byte_at_B4D6
B $B4D6,1,1
b $B4D7 Data block at B4D7
@ $B4D7 label=byte_at_B4D7
B $B4D7,1,1
c $B4D8 Routine at B4D8
D $B4D8 Used by the routine at #R$9CBB.
N $B5DF This entry point is used by the routines at #R$9CBB and #R$9F82.
c $B618 Routine at B618
D $B618 Used by the routine at #R$9C9F.
c $B63C Routine at B63C
D $B63C Used by the routine at #R$B7B4.
c $B799 Routine at B799
D $B799 Used by the routines at #R$A84D, #R$B4D8, #R$B63C, #R$B898 and #R$BBBA.
w $B7AA Data block at B7AA
@ $B7AA label=word_at_B7AA
W $B7AA,2,2
c $B7AC Routine at B7AC
D $B7AC Used by the routine at #R$B7B4.
c $B7B4 Routine at B7B4
D $B7B4 Used by the routine at #R$9CB5.
b $B83D Data block at B83D
@ $B83D label=byte_at_B83D
B $B83D,1,1
b $B83E Data block at B83E
@ $B83E label=ship_buffer
B $B83E,31,8*3,7
b $B85D Data block at B85D
@ $B85D label=data_at_B85D
B $B85D,10,8,2
c $B867 Routine at B867
D $B867 Used by the routines at #R$9C9C, #R$9CBB, #R$B618 and #R$B63C.
c $B898 Routine at B898
D $B898 Used by the routines at #R$B91E, #R$B94A, #R$B96B, #R$BB75, #R$BBF2, #R$BC21 and #R$BC78.
R $B898 A Index of ship
R $B898 IX Destination
C $B898,3 Table of ship blueprints
C $B89E,1 Index x 2
C $B89F,1 Index x 4
C $B8A0,1 Add offset to HL
C $B8A5,1 Skip past first byte
C $B8A6,1 Get LSB of blueprint
C $B8A8,1 Get MSB of blueprint
C $B8AA,2 Copy address into IY
C $B8AC,3 Also store in destination bytes 35-36
C $B8B4,1 Now DE=destination
C $B8B8,3 ship_buffer
C $B8BB,2 Copy 31 bytes to destination
c $B91E Routine at B91E
D $B91E Used by the routines at #R$B99F, #R$B9E7, #R$BB2F and #R$BB4D.
c $B936 Routine at B936
D $B936 Used by the routines at #R$B91E, #R$B94A, #R$B96B, #R$B99F, #R$BBBA, #R$BBF2, #R$BC21 and #R$BC78.
c $B94A Routine at B94A
D $B94A Used by the routine at #R$BA94.
N $B950 This entry point is used by the routines at #R$B99F and #R$BAE8.
c $B96B Routine at B96B
D $B96B Used by the routine at #R$B867.
c $B99F Routine at B99F
D $B99F Used by the routine at #R$B867.
c $B9E7 Routine at B9E7
D $B9E7 Used by the routine at #R$B867.
c $BA27 Routine at BA27
D $BA27 Used by the routines at #R$B9E7 and #R$BB4D.
c $BA3F Routine at BA3F
D $BA3F Used by the routine at #R$BA27.
c $BA58 Routine at BA58
D $BA58 Used by the routine at #R$BA27.
c $BA83 Routine at BA83
D $BA83 Used by the routines at #R$B96B, #R$BA94 and #R$BAE8.
c $BA94 Routine at BA94
D $BA94 Used by the routine at #R$B867.
N $BA9E This entry point is used by the routine at #R$BAE8.
c $BAE8 Routine at BAE8
D $BAE8 Used by the routine at #R$BA94.
N $BAF2 This entry point is used by the routine at #R$B867.
N $BAFA This entry point is used by the routine at #R$B867.
c $BB2F Routine at BB2F
D $BB2F Used by the routine at #R$BAE8.
c $BB4D Routine at BB4D
D $BB4D Used by the routine at #R$B867.
N $BB55 This entry point is used by the routine at #R$BAE8.
c $BB75 Routine at BB75
D $BB75 Used by the routine at #R$B867.
c $BBBA Routine at BBBA
D $BBBA Used by the routine at #R$B867.
c $BBF2 Routine at BBF2
N $BBFD This entry point is used by the routine at #R$BBBA.
c $BC21 Routine at BC21
D $BC21 Used by the routine at #R$BBF2.
N $BC64 This entry point is used by the routine at #R$BC78.
N $BC65 This entry point is used by the routine at #R$BBBA.
c $BC78 Routine at BC78
D $BC78 Used by the routine at #R$BC21.
N $BC7F This entry point is used by the routine at #R$BC21.
N $BCAB This entry point is used by the routine at #R$BBF2.
w $BCC8 Data block at BCC8
@ $BCC8 label=word_at_BCC8
W $BCC8,2,2
b $BCCA Data block at BCCA
@ $BCCA label=byte_at_BCCA
B $BCCA,1,1
w $BCCB Data block at BCCB
@ $BCCB label=word_at_BCCB
W $BCCB,2,2
w $BCCD Data block at BCCD
@ $BCCD label=word_at_BCCD
W $BCCD,2,2
w $BCCF Data block at BCCF
@ $BCCF label=word_at_BCCF
W $BCCF,2,2
b $BCD1 Data block at BCD1
@ $BCD1 label=byte_at_BCD1
B $BCD1,1,1
b $BCD2 Data block at BCD2
@ $BCD2 label=byte_at_BCD2
B $BCD2,1,1
b $BCD3 Data block at BCD3
@ $BCD3 label=byte_at_BCD3
B $BCD3,1,1
c $BCD4 Routine at BCD4
D $BCD4 Used by the routine at #R$A84D.
c $BD5F Routine at BD5F
D $BD5F Used by the routine at #R$BCD4.
c $BD95 Routine at BD95
D $BD95 Used by the routine at #R$BD5F.
c $BDB4 Routine at BDB4
D $BDB4 Used by the routine at #R$BCD4.
b $BE00 Table of squares
@ $BE00 label=sqr_table
B $BE00,512,8
b $C000 2K copied from C800 to here
@ $C000 label=screen_buffer
B $C000,531,8*66,3
c $C213 lenslock
D $C213 Used by the routine at #R$D07C.
c $C226 Routine at C226
c $C230 Routine at C230
t $C233 Message at C233
T $C233,22,22
b $C249 Data block at C249
B $C249,1,1
c $C24A Routine at C24A
c $C25C Routine at C25C
D $C25C Used by the routine at #R$C226.
c $C25D Routine at C25D
D $C25D Used by the routine at #R$C213.
c $C268 Routine at C268
c $C2BA Routine at C2BA
D $C2BA Used by the routines at #R$C25D and #R$C268.
c $C2C9 Routine at C2C9
D $C2C9 Used by the routine at #R$C268.
c $C2EB Routine at C2EB
D $C2EB Used by the routines at #R$C3DF and #R$C4D0.
c $C2F7 Routine at C2F7
D $C2F7 Used by the routines at #R$C2C9 and #R$C4D0.
c $C303 Routine at C303
D $C303 Used by the routine at #R$C2C9.
c $C374 Routine at C374
D $C374 Used by the routines at #R$C303 and #R$C59C.
c $C37C Routine at C37C
D $C37C Used by the routine at #R$C268.
c $C391 Routine at C391
D $C391 Used by the routine at #R$C268.
c $C3A8 Routine at C3A8
D $C3A8 Used by the routines at #R$C226 and #R$C608.
c $C3AE Routine at C3AE
D $C3AE Used by the routine at #R$C4B0.
N $C3B0 This entry point is used by the routine at #R$C3A8.
c $C3B8 Routine at C3B8
D $C3B8 Used by the routine at #R$C303.
c $C3DF Routine at C3DF
D $C3DF Used by the routine at #R$C303.
c $C3F3 Routine at C3F3
D $C3F3 Used by the routines at #R$C303, #R$C3B8 and #R$C608.
c $C408 Routine at C408
D $C408 Used by the routines at #R$C268, #R$C303 and #R$C3B8.
c $C414 Routine at C414
D $C414 Used by the routine at #R$C25D.
N $C419 This entry point is used by the routine at #R$C478.
t $C422 Message at C422
T $C422,29,29
c $C43F Routine at C43F
N $C475 This entry point is used by the routine at #R$C478.
c $C478 Routine at C478
c $C4B0 Routine at C4B0
D $C4B0 Used by the routine at #R$C478.
c $C4D0 Routine at C4D0
D $C4D0 Used by the routine at #R$C268.
N $C4D8 This entry point is used by the routine at #R$C4B0.
N $C4DA This entry point is used by the routine at #R$C4B0.
N $C4DE This entry point is used by the routine at #R$C4B0.
N $C4E2 This entry point is used by the routine at #R$C4B0.
N $C4E6 This entry point is used by the routine at #R$C4B0.
N $C4EC This entry point is used by the routine at #R$C4B0.
c $C4FF Routine at C4FF
D $C4FF Used by the routine at #R$C43F.
c $C50B Routine at C50B
D $C50B Used by the routine at #R$C43F.
c $C511 Routine at C511
D $C511 Used by the routine at #R$C478.
c $C519 Routine at C519
D $C519 Used by the routine at #R$C54B.
c $C52F Routine at C52F
D $C52F Used by the routine at #R$C43F.
t $C532 Message at C532
T $C532,23,23
b $C549 Data block at C549
B $C549,2,2
c $C54B Routine at C54B
D $C54B Used by the routine at #R$C6A6.
c $C59C Routine at C59C
D $C59C Used by the routine at #R$C2C9.
c $C5EC Routine at C5EC
D $C5EC Used by the routine at #R$C59C.
c $C5F5 Routine at C5F5
D $C5F5 Used by the routines at #R$C303, #R$C59C and #R$C5EC.
c $C608 Routine at C608
D $C608 Used by the routine at #R$C268.
c $C67D Routine at C67D
D $C67D Used by the routine at #R$C43F.
c $C688 Routine at C688
D $C688 Used by the routines at #R$C608 and #R$C67D.
c $C68E Routine at C68E
D $C68E Used by the routines at #R$C37C and #R$C54B.
c $C6A6 Routine at C6A6
D $C6A6 Used by the routine at #R$C268.
c $C6D7 Routine at C6D7
D $C6D7 Used by the routine at #R$C6A6.
c $C6E6 Routine at C6E6
D $C6E6 Used by the routine at #R$C2C9.
c $C703 Routine at C703
D $C703 Used by the routine at #R$C6E6.
c $C71C Routine at C71C
D $C71C Used by the routine at #R$C6E6.
c $C727 Routine at C727
D $C727 Used by the routines at #R$C4B0 and #R$C608.
c $C733 Routine at C733
D $C733 Used by the routine at #R$C6E6.
b $C774 Data block at C774
@ $C774 label=data_at_C774
B $C774,140,8*17,4
b $C800 Copied to C000 #UDGTABLE { #SCR1,0,0,32,8,$c800,$5b00(ctrl_panel) | control panel. } TABLE#
@ $C800 label=ctrl_panel_gfx
B $C800,2048,8
c $D000 Routine at D000
c $D003 Routine at D003
c $D006 Routine at D006
c $D009 Routine at D009
c $D00C Routine at D00C
c $D00F Routine at D00F
c $D012 Routine at D012
c $D015 Routine at D015
D $D015 Used by the routines at #R$7378 and #R$7471.
c $D018 Routine at D018
c $D033 Routine at D033
D $D033 Used by the routine at #R$7378.
c $D036 Routine at D036
D $D036 Used by the routines at #R$7378 and #R$8042.
c $D039 Routine at D039
D $D039 Used by the routines at #R$7430 and #R$7471.
c $D03C Routine at D03C
D $D03C Used by the routines at #R$7471 and #R$928C.
s $D03F Unused
S $D03F,3,$03
c $D042 Routine at D042
D $D042 Used by the routine at #R$7471.
w $D045 Data block at D045
@ $D045 label=word_at_D045
W $D045,2,2
b $D047 Data block at D047
@ $D047 label=byte_at_D047
B $D047,1,1
c $D048 Routine at D048
D $D048 Used by the routines at #R$7447, #R$99A4, #R$9B01, #R$9B57 and #R$9B74.
w $D04B Data block at D04B
@ $D04B label=word_at_D04B
W $D04B,2,2
b $D04D Data block at D04D
B $D04D,1,1
c $D04E Routine at D04E
D $D04E Used by the routines at #R$7378 and #R$7471.
b $D051 Data block at D051
@ $D051 label=byte_at_D051
B $D051,1,1
b $D052 Data block at D052
@ $D052 label=byte_at_D052
B $D052,1,1
b $D053 Data block at D053
@ $D053 label=byte_at_D053
B $D053,1,1
t $D054 Message at D054
T $D054,10,10
b $D05E Data block at D05E
B $D05E,1,1
c $D05F loader
c $D07C call lenslock
c $D07F after lenslock
C $D07F,3 Copy 2K from C800 to C000
C $D08A,3 Generate table of squares
C $D09E,2 Set interrupt mode
b $D0A7 Data block at D0A7
@ $D0A7 label=data_at_D0A7
B $D0A7,22,8*2,6
b $D0BD Data block at D0BD
@ $D0BD label=data_at_D0BD
B $D0BD,2,2
b $D0BF Data block at D0BF
@ $D0BF label=data_at_D0BF
B $D0BF,2,2
b $D0C1 Data block at D0C1
@ $D0C1 label=data_at_D0C1
B $D0C1,22,8*2,6
c $D0D7 Routine at D0D7
D $D0D7 Used by the routine at #R$728D.
c $D0DA Routine at D0DA
D $D0DA Used by the routine at #R$9946.
c $D0DD Routine at D0DD
D $D0DD Used by the routine at #R$7278.
c $D0E0 Routine at D0E0
N $D0E4 This entry point is used by the routine at #R$B4D8.
N $D0E7 This entry point is used by the routine at #R$9CBB.
N $D0EA This entry point is used by the routines at #R$9CBB and #R$A4C4.
N $D0ED This entry point is used by the routine at #R$7278.
N $D0F3 This entry point is used by the routine at #R$9AA7.
c $D0F6 Routine at D0F6
D $D0F6 Used by the routine at #R$D0D7.
N $D114 This entry point is used by the routine at #R$D138.
N $D123 This entry point is used by the routine at #R$D0DD.
c $D138 Routine at D138
D $D138 Used by the routine at #R$D0F6.
N $D148 This entry point is used by the routine at #R$E8AE.
N $D14D This entry point is used by the routine at #R$D0E0.
N $D162 This entry point is used by the routines at #R$D0F6 and #R$E6AE.
N $D190 This entry point is used by the routine at #R$D0E0.
N $D1AD This entry point is used by the routine at #R$E7DB.
c $D1C7 Routine at D1C7
D $D1C7 Used by the routine at #R$D0E0.
N $D1D9 This entry point is used by the routine at #R$D0E0.
c $D1E9 Routine at D1E9
D $D1E9 Used by the routine at #R$D0E0.
N $D213 This entry point is used by the routine at #R$D21F.
c $D21F Routine at D21F
D $D21F Used by the routine at #R$D1E9.
t $D232 Message at D232
T $D232,10,10
b $D23C Data block at D23C
B $D23C,50,8*6,2
b $D26E Data block at D26E
B $D26E,42,8*5,2
c $D298 Routine at D298
D $D298 Used by the routine at #R$D033.
w $D2DC Data block at D2DC
@ $D2DC label=word_at_D2DC
W $D2DC,2,2
c $D2DE Routine at D2DE
D $D2DE Used by the routines at #R$D837 and #R$EDDF.
c $D2E1 Routine at D2E1
D $D2E1 Used by the routines at #R$D84B, #R$DC29, #R$E212, #R$E268, #R$E973 and #R$EDDF.
N $D2E2 This entry point is used by the routine at #R$D2DE.
N $D2E5 This entry point is used by the routines at #R$D32D, #R$D90A, #R$DAB4, #R$E107, #R$E212, #R$EDDF and #R$EF21.
c $D32D Routine at D32D
D $D32D Used by the routine at #R$D822.
N $D334 This entry point is used by the routine at #R$E973.
c $D357 Routine at D357
D $D357 Used by the routine at #R$D2E1.
N $D371 This entry point is used by the routine at #R$D2E1.
c $D37D Routine at D37D
D $D37D Used by the routine at #R$D2E1.
c $D3CE Routine at D3CE
D $D3CE Used by the routine at #R$D37D.
c $D3D3 Routine at D3D3
D $D3D3 Used by the routine at #R$E973.
N $D3E7 This entry point is used by the routine at #R$E973.
c $D3EF Routine at D3EF
D $D3EF Used by the routine at #R$E973.
c $D3FD Routine at D3FD
D $D3FD Used by the routine at #R$E973.
b $D420 Data block at D420
B $D420,1,1
c $D421 Routine at D421
D $D421 Used by the routines at #R$D2E1, #R$D837, #R$E107, #R$E212, #R$E2F8, #R$E31E, #R$E7CF, #R$E87E, #R$E8EA, #R$E973, #R$EB47, #R$EDDF, #R$EEA8, #R$EF87 and #R$F0A1.
N $D425 This entry point is used by the routines at #R$D048, #R$D357, #R$D37D, #R$D470, #R$DA7A, #R$DAB4, #R$E212, #R$E268, #R$E297, #R$E29E, #R$E2A6, #R$E2F8, #R$E306, #R$E311, #R$E31E, #R$E776, #R$E87E, #R$E973, #R$EEA8, #R$EECE, #R$F068 and #R$F07A.
c $D45F Routine at D45F
D $D45F Used by the routines at #R$D039, #R$D470, #R$D5B4, #R$D90A, #R$DA5A, #R$DBA2, #R$E292, #R$E8E5, #R$EDDF, #R$EF87 and #R$F0A1.
c $D470 Routine at D470
D $D470 Used by the routine at #R$D48E.
c $D48E Routine at D48E
D $D48E Used by the routine at #R$D45F.
c $D499 Routine at D499
D $D499 Used by the routines at #R$D421, #R$D470 and #R$D59C.
N $D4E1 This entry point is used by the routine at #R$D6B9.
c $D54F Routine at D54F
D $D54F Used by the routines at #R$D90A, #R$E8D9, #R$E973 and #R$EC58.
N $D554 This entry point is used by the routine at #R$F0A1.
c $D55C Routine at D55C
N $D55F This entry point is used by the routines at #R$D61D, #R$EB63 and #R$EB7C. HL Screen address
@ $D55F label=draw_h_line
N $D563 This entry point is used by the routines at #R$D54F, #R$D568, #R$EB63 and #R$EB7C.
c $D568 Routine at D568
D $D568 Used by the routines at #R$D90A, #R$E8D9, #R$EDDF, #R$EF48, #R$EF87 and #R$F0A1.
c $D595 Routine at D595
D $D595 Used by the routine at #R$D470.
c $D59C Routine at D59C
D $D59C Used by the routine at #R$D421.
N $D5A1 This entry point is used by the routine at #R$D595.
c $D5B4 Routine at D5B4
D $D5B4 Used by the routine at #R$D470.
c $D5E1 Routine at D5E1
D $D5E1 Used by the routine at #R$D5B4.
b $D5F5 Data block at D5F5
B $D5F5,40,8
c $D61D Routine at D61D
D $D61D Clear the screen and draw a one pixel border
R $D61D Used by the routines at #R$D036, #R$D90A, #R$DBA2, #R$E973, #R$EB7C and
R $D61D #R$EC58.
@ $D61D label=clear_screen
C $D61E,4 Store the stack pointer
C $D622,3 Set stack to end of attributes
C $D625,3 Attribute value
C $D628,2 24 rows
C $D62A,2 2x16 attributes per row
C $D62C,1 Write two attributes
C $D62D,2 Repeat for one row
C $D630,3 Repeat for 24 rows
C $D633,3 Empty bitmap pattern
C $D636,2 192 lines
C $D638,2 2x16 bytes per line
C $D63A,1 Write two bytes
C $D63B,2 Repeat for one line
C $D63E,3 Repeat for 192 lines
C $D641,4 Restore stack pointer
N $D646 This entry point is used by the routines at #R$EB7C and #R$EF87.
C $D646,2 192 lines
C $D648,3 Increment per line
C $D64B,3 Screen address at 0,0
C $D64E,1 Read screen byte
C $D64F,2 Set leftmost pixel
C $D651,1 Write screen byte
C $D652,1 Next line
C $D653,2 Repeat for 192 lines
C $D655,2 192 lines
C $D657,3 Screen address at 255,0
C $D65A,1 Read screen byte
C $D65B,2 Set rightmost pixel
C $D65D,1 Write screen byte
C $D65E,1 Next line
C $D65F,2 Repeat for 192 lines
C $D661,3 Screen address at 0,0
C $D664,3 Draw a horizontal line
C $D667,3 Screen address at 0,191
C $D66A,3 Draw a horizontal line
C $D670,1 HL=$0100
b $D675 Data block at D675
@ $D675 label=data_at_D675
B $D675,68,8*8,4
c $D6B9 Routine at D6B9
D $D6B9 Used by the routine at #R$D499.
N $D71A This entry point is used by the routine at #R$D776.
N $D732 This entry point is used by the routine at #R$D75A.
c $D75A Routine at D75A
c $D776 Routine at D776
c $D783 Routine at D783
D $D783 Used by the routine at #R$D6B9.
c $D7A1 Routine at D7A1
D $D7A1 Used by the routine at #R$D6B9.
c $D7B0 Routine at D7B0
D $D7B0 Used by the routine at #R$D470.
c $D7B5 Routine at D7B5
D $D7B5 Used by the routine at #R$D421.
N $D7B8 This entry point is used by the routine at #R$D7B0.
w $D7C3 Data block at D7C3
@ $D7C3 label=jump_table_at_D7C3
W $D7C3,92,2
c $D81F Routine at D81F
c $D822 Routine at D822
c $D82E Routine at D82E
c $D833 Routine at D833
c $D837 Routine at D837
N $D848 This entry point is used by the routine at #R$D822.
c $D84B Routine at D84B
c $D857 Routine at D857
c $D86A Routine at D86A
c $D872 Routine at D872
N $D878 This entry point is used by the routines at #R$D82E, #R$D86A and #R$D8B4.
c $D87B Routine at D87B
D $D87B Used by the routine at #R$D837.
N $D87F This entry point is used by the routines at #R$D86A, #R$D872 and #R$D8B4.
c $D885 Routine at D885
c $D8A9 Routine at D8A9
c $D8AD Routine at D8AD
c $D8AE Routine at D8AE
N $D8B0 This entry point is used by the routines at #R$D833 and #R$D8A9.
c $D8B4 Routine at D8B4
b $D8DC Data block at D8DC
B $D8DC,9,8,1
c $D8E5 Routine at D8E5
c $D8E9 Routine at D8E9
N $D8EB This entry point is used by the routine at #R$D8E5.
c $D8EF Routine at D8EF
c $D8F3 Routine at D8F3
N $D8F5 This entry point is used by the routine at #R$D8EF.
c $D8F8 Routine at D8F8
D $D8F8 Used by the routine at #R$D885.
b $D8FF Data block at D8FF
B $D8FF,11,8,3
c $D90A Routine at D90A
D $D90A Used by the routine at #R$D04E.
N $D927 This entry point is used by the routine at #R$D946.
c $D946 Routine at D946
D $D946 Used by the routine at #R$D90A.
N $D980 This entry point is used by the routine at #R$D90A.
N $DA13 This entry point is used by the routine at #R$DA25.
c $DA16 Routine at DA16
D $DA16 Used by the routine at #R$D90A.
c $DA25 Routine at DA25
D $DA25 Used by the routine at #R$D90A.
N $DA2D This entry point is used by the routine at #R$D90A.
c $DA49 Routine at DA49
D $DA49 Used by the routine at #R$D90A.
c $DA53 Routine at DA53
D $DA53 Used by the routine at #R$D90A.
c $DA5A Routine at DA5A
D $DA5A Used by the routines at #R$D90A and #R$DA25.
b $DA72 Data block at DA72
B $DA72,8,8
c $DA7A Routine at DA7A
D $DA7A Used by the routine at #R$D03C.
c $DAB4 Routine at DAB4
D $DAB4 Used by the routine at #R$DA7A.
c $DAD7 Routine at DAD7
D $DAD7 Used by the routine at #R$DAB4.
N $DADC This entry point is used by the routine at #R$DBA2.
N $DAE1 This entry point is used by the routine at #R$DB62.
N $DAE6 This entry point is used by the routine at #R$DBA2.
c $DAEF Routine at DAEF
D $DAEF Used by the routine at #R$DAB4.
N $DB2E This entry point is used by the routine at #R$DAB4.
c $DB62 Routine at DB62
D $DB62 Used by the routine at #R$DAEF.
N $DB67 This entry point is used by the routine at #R$DAEF.
N $DB6C This entry point is used by the routine at #R$DAEF.
N $DB7D This entry point is used by the routine at #R$DAEF.
N $DB8E This entry point is used by the routine at #R$DAEF.
c $DB91 Routine at DB91
D $DB91 Used by the routines at #R$D0DA, #R$D298 and #R$DC29.
b $DBA1 Data block at DBA1
@ $DBA1 label=byte_at_DBA1
B $DBA1,1,1
c $DBA2 Routine at DBA2
D $DBA2 Used by the routine at #R$D042.
c $DC29 Routine at DC29
D $DC29 Used by the routine at #R$DAB4.
N $DC4E This entry point is used by the routine at #R$DC8E.
c $DC83 Routine at DC83
D $DC83 Used by the routine at #R$DC29.
c $DC8E Routine at DC8E
D $DC8E Used by the routine at #R$DC29.
N $DCE9 This entry point is used by the routine at #R$DC29.
c $DDE3 Routine at DDE3
N $DDE7 This entry point is used by the routine at #R$DC8E.
N $DDE9 This entry point is used by the routine at #R$DC8E.
N $DDEB This entry point is used by the routine at #R$DC8E.
N $DE39 This entry point is used by the routine at #R$DE67.
N $DE4C This entry point is used by the routines at #R$DC8E and #R$DE67.
c $DE67 Routine at DE67
D $DE67 Used by the routine at #R$DDE3.
N $DE7E This entry point is used by the routine at #R$DDE3.
N $DE88 This entry point is used by the routine at #R$DDE3.
N $DE97 This entry point is used by the routines at #R$D0E0 and #R$D1E9.
c $DEA2 Routine at DEA2
D $DEA2 Used by the routines at #R$DAB4, #R$DC8E and #R$E973.
s $DEB9 Unused
S $DEB9,23,$17
t $DED0 Message at DED0
T $DED0,10,10
s $DEDA Unused
S $DEDA,1,$01
t $DEDB Message at DEDB
T $DEDB,8,8
s $DEE3 Unused
S $DEE3,1,$01
t $DEE4 Message at DEE4
T $DEE4,4,4
s $DEE8 Unused
S $DEE8,5,$05
t $DEED Message at DEED
T $DEED,4,4
b $DEF1 Data block at DEF1
B $DEF1,18,8*2,2
c $DF03 Routine at DF03
D $DF03 Used by the routine at #R$D018.
N $DF24 This entry point is used by the routine at #R$E398.
c $DF4C Routine at DF4C
D $DF4C Used by the routine at #R$DF03.
w $DF5E Data block at DF5E
@ $DF5E label=word_at_DF5E
W $DF5E,2,2
c $DF60 Routine at DF60
D $DF60 Used by the routines at #R$DBA2, #R$DC29 and #R$EDDF.
N $DF74 This entry point is used by the routine at #R$D298.
N $DFB5 This entry point is used by the routine at #R$DF4C.
c $DFC4 Routine at DFC4
D $DFC4 Used by the routines at #R$DF60, #R$EB7C, #R$ECD2 and #R$ED27.
c $DFCE Routine at DFCE
D $DFCE Used by the routine at #R$DF60.
c $DFEA Routine at DFEA
D $DFEA Used by the routine at #R$DFCE.
c $DFF2 Routine at DFF2
D $DFF2 Used by the routine at #R$DF60.
c $E009 Routine at E009
D $E009 Used by the routines at #R$DFCE and #R$E08C.
c $E01C Routine at E01C
D $E01C Used by the routines at #R$DF60 and #R$ED78.
N $E063 This entry point is used by the routine at #R$DFC4.
c $E080 Routine at E080
D $E080 Used by the routine at #R$DF60.
c $E08C Routine at E08C
D $E08C Used by the routine at #R$DF60.
c $E107 Routine at E107
D $E107 Used by the routine at #R$EDDF.
c $E125 Routine at E125
c $E12E Routine at E12E
D $E12E Used by the routine at #R$DF60.
c $E136 Routine at E136
D $E136 Used by the routine at #R$DF60.
N $E13C This entry point is used by the routines at #R$E125 and #R$E12E.
c $E142 Routine at E142
D $E142 Used by the routine at #R$DC8E.
c $E148 Routine at E148
D $E148 Used by the routine at #R$D298.
b $E1BB Data block at E1BB
@ $E1BB label=data_at_1EBB
B $E1BB,45,8*5,5
c $E1E8 Routine at E1E8
D $E1E8 Used by the routines at #R$DA5A, #R$DAB4, #R$DBA2 and #R$E832.
c $E1F7 Routine at E1F7
D $E1F7 Used by the routines at #R$D90A, #R$E776 and #R$E973.
c $E205 Routine at E205
D $E205 Used by the routines at #R$D90A, #R$DBA2 and #R$E1F7.
c $E212 Routine at E212
D $E212 Used by the routine at #R$EF48.
c $E268 Routine at E268
D $E268 Used by the routines at #R$E8EA and #R$F0A1.
c $E292 Routine at E292
D $E292 Used by the routines at #R$EDDF, #R$EEA8 and #R$EF87.
c $E297 Routine at E297
D $E297 Used by the routines at #R$D822, #R$D837, #R$E107 and #R$EDDF.
N $E29A This entry point is used by the routine at #R$E292.
c $E29E Routine at E29E
D $E29E Used by the routines at #R$E973, #R$EB47, #R$EECE and #R$F07A.
N $E2A3 This entry point is used by the routine at #R$E297.
c $E2A6 Routine at E2A6
D $E2A6 Used by the routines at #R$D837, #R$DA7A, #R$DAB4, #R$E212, #R$E87E, #R$E973, #R$EE9D, #R$EF48, #R$EF87 and #R$F0A1.
N $E2A9 This entry point is used by the routines at #R$D6B9, #R$DA5A, #R$E212, #R$E2BC, #R$E8EA, #R$E973, #R$EDDF, #R$EEA2, #R$F068 and #R$F0A1.
N $E2B1 This entry point is used by the routine at #R$D499.
c $E2B7 Routine at E2B7
D $E2B7 Used by the routines at #R$E2A6, #R$E2C8 and #R$E36B.
c $E2BC Routine at E2BC
D $E2BC Used by the routines at #R$D87B, #R$E212, #R$E268, #R$E7CF, #R$E973, #R$EB63, #R$EF87 and #R$F0A1.
N $E2C0 This entry point is used by the routines at #R$E973 and #R$F068.
c $E2C8 Routine at E2C8
D $E2C8 Used by the routines at #R$E2A6, #R$E36B, #R$E973, #R$EDDF, #R$EF87 and #R$F0A1.
c $E2D5 Routine at E2D5
D $E2D5 Used by the routine at #R$E76E.
c $E2F8 Routine at E2F8
D $E2F8 Used by the routines at #R$E306 and #R$EDDF.
c $E306 Routine at E306
D $E306 Used by the routines at #R$E8EA, #R$EB63, #R$EDDF, #R$EF48 and #R$F0A1.
c $E311 Routine at E311
D $E311 Used by the routines at #R$D872, #R$D8B4 and #R$ED78.
c $E31E Routine at E31E
D $E31E Used by the routines at #R$E212, #R$E268, #R$E87E and #R$EDDF.
c $E34C Routine at E34C
D $E34C Used by the routines at #R$E7DB and #R$E935.
c $E35A Routine at E35A
D $E35A Used by the routine at #R$E1F7.
c $E35E Routine at E35E
D $E35E Used by the routines at #R$DBA2, #R$E832 and #R$E8EA.
N $E360 This entry point is used by the routine at #R$E35A.
c $E364 Routine at E364
D $E364 Used by the routine at #R$E8EA.
c $E36B Routine at E36B
D $E36B Used by the routines at #R$DA25, #R$E87E and #R$E973.
N $E37A This entry point is used by the routine at #R$DA5A.
c $E38D Routine at E38D
D $E38D Used by the routine at #R$E8EA.
b $E394 Data block at E394
B $E394,4,4
c $E398 Routine at E398
D $E398 Used by the routine at #R$D018.
b $E3C9 Data block at E3C9
B $E3C9,3,3
c $E3CC Routine at E3CC
D $E3CC Used by the routines at #R$DA53 and #R$E398.
c $E3E9 Routine at E3E9
N $E45B This entry point is used by the routine at #R$D018.
N $E45E This entry point is used by the routine at #R$E398.
c $E46F Routine at E46F
D $E46F Used by the routines at #R$DF60, #R$EB7C and #R$EC58.
c $E4D4 Routine at E4D4
D $E4D4 Used by the routine at #R$D018.
N $E4E6 This entry point is used by the routine at #R$D018.
N $E4F9 This entry point is used by the routine at #R$D018.
N $E509 This entry point is used by the routine at #R$D018.
N $E51A This entry point is used by the routine at #R$D018.
b $E52B Data block at E52B
B $E52B,3,3
c $E52E Routine at E52E
D $E52E Used by the routines at #R$E46F, #R$EB7C and #R$EC58.
c $E611 Routine at E611
D $E611 Used by the routine at #R$E52E.
c $E619 Routine at E619
D $E619 Used by the routine at #R$E52E.
c $E621 Routine at E621
D $E621 Used by the routines at #R$E52E and #R$E647.
c $E63F Routine at E63F
D $E63F Used by the routine at #R$E52E.
c $E644 Routine at E644
D $E644 Used by the routine at #R$E52E.
c $E647 Routine at E647
D $E647 Used by the routines at #R$E52E and #R$E63F.
c $E6A3 Routine at E6A3
D $E6A3 Used by the routine at #R$E647.
b $E6AD Data block at E6AD
B $E6AD,1,1
c $E6AE Routine at E6AE
D $E6AE Used by the routine at #R$D000.
b $E6F8 Data block at E6F8
B $E6F8,2,2
c $E6FA Routine at E6FA
D $E6FA Used by the routine at #R$EF48.
c $E707 Routine at E707
D $E707 Used by the routine at #R$E6AE.
c $E76E Routine at E76E
D $E76E Used by the routine at #R$E776.
c $E776 Routine at E776
D $E776 Used by the routines at #R$E8EA and #R$E973.
N $E779 This entry point is used by the routine at #R$E76E.
c $E7CF Routine at E7CF
D $E7CF Used by the routines at #R$E8EA and #R$E973.
c $E7DA Routine at E7DA
D $E7DA Used by the routine at #R$E776.
c $E7DB Routine at E7DB
c $E818 Routine at E818
D $E818 Used by the routines at #R$E7DB and #R$E935.
N $E81C This entry point is used by the routines at #R$E7DB and #R$E973.
N $E820 This entry point is used by the routine at #R$E7DB.
c $E832 Routine at E832
D $E832 Used by the routines at #R$D90A and #R$E7CF.
c $E83C Routine at E83C
D $E83C Used by the routine at #R$E973.
c $E85D Routine at E85D
D $E85D Used by the routines at #R$E76E, #R$E776 and #R$E973.
c $E87E Routine at E87E
D $E87E Used by the routine at #R$E8EA.
s $E8A4 Unused
S $E8A4,10,$0A
c $E8AE Routine at E8AE
D $E8AE Used by the routine at #R$D003.
b $E8D8 Data block at E8D8
@ $E8D8 label=byte_at_E8D8
B $E8D8,1,1
c $E8D9 Routine at E8D9
D $E8D9 Used by the routines at #R$E8EA and #R$E973.
c $E8E5 Routine at E8E5
D $E8E5 Used by the routines at #R$E8D9, #R$EDDF, #R$EF48, #R$EF87 and #R$F0A1.
c $E8EA Routine at E8EA
D $E8EA Used by the routine at #R$E8AE.
c $E935 Routine at E935
c $E962 Routine at E962
D $E962 Used by the routine at #R$E8EA.
c $E973 Routine at E973
D $E973 Used by the routine at #R$D006.
c $EB2D Routine at EB2D
c $EB2F Routine at EB2F
D $EB2F Used by the routine at #R$E973.
c $EB38 Routine at EB38
D $EB38 Used by the routine at #R$E973.
c $EB3E Routine at EB3E
D $EB3E Used by the routines at #R$E973, #R$EB2F and #R$ED78.
c $EB43 Routine at EB43
D $EB43 Used by the routine at #R$E973.
c $EB47 Routine at EB47
D $EB47 Used by the routine at #R$E973.
N $EB4E This entry point is used by the routine at #R$EB43.
N $EB5B This entry point is used by the routine at #R$E973.
b $EB5E Data block at EB5E
@ $EB5E label=data_at_EB5E
B $EB5E,5,5
c $EB63 Routine at EB63
D $EB63 Used by the routines at #R$EB7C and #R$EC58.
N $EB6E This entry point is used by the routine at #R$D90A.
c $EB7C Routine at EB7C
D $EB7C Used by the routine at #R$D009.
c $EBEE Routine at EBEE
D $EBEE Used by the routine at #R$EB7C.
b $EC11 Data block at EC11
@ $EC11 label=byte_at_EC11
B $EC11,1,1
w $EC12 Data block at EC12
@ $EC12 label=word_at_EC12
W $EC12,2,2
c $EC14 Routine at EC14
D $EC14 Used by the routine at #R$EB7C.
c $EC3B Routine at EC3B
D $EC3B Used by the routine at #R$EC58.
c $EC3D Routine at EC3D
D $EC3D Used by the routine at #R$EC58.
s $EC40 Unused
@ $EC40 label=data_at_EC40
S $EC40,24,$18
c $EC58 Routine at EC58
D $EC58 Used by the routine at #R$D00C.
c $ECD2 Routine at ECD2
D $ECD2 Used by the routine at #R$EC58.
c $ECFD Routine at ECFD
D $ECFD Used by the routines at #R$ED27 and #R$ED78.
c $ED27 Routine at ED27
s $ED75 Unused
S $ED75,2,$02
b $ED77 Data block at ED77
@ $ED77 label=byte_at_ED77
B $ED77,1,1
c $ED78 Routine at ED78
c $EDDF Routine at EDDF
D $EDDF Used by the routine at #R$D00F.
c $EE9D Routine at EE9D
D $EE9D Used by the routines at #R$EDDF, #R$EEA8 and #R$EF87.
c $EEA2 Routine at EEA2
D $EEA2 Used by the routines at #R$E973 and #R$EDDF.
N $EEA5 This entry point is used by the routine at #R$EE9D.
c $EEA8 Routine at EEA8
D $EEA8 Used by the routine at #R$EDDF.
N $EEAD This entry point is used by the routine at #R$EDDF.
c $EECE Routine at EECE
c $EF21 Routine at EF21
D $EF21 Used by the routine at #R$EDDF.
c $EF37 Routine at EF37
D $EF37 Used by the routine at #R$EDDF.
c $EF48 Routine at EF48
D $EF48 Used by the routine at #R$D012.
b $EF86 Data block at EF86
@ $EF86 label=byte_at_EF86
B $EF86,1,1
c $EF87 Routine at EF87
D $EF87 Used by the routines at #R$D015, #R$DBA2, #R$E973 and #R$EB47.
c $F068 Routine at F068
D $F068 Used by the routine at #R$EF87.
N $F072 This entry point is used by the routines at #R$EF87 and #R$F07A.
c $F07A Routine at F07A
D $F07A Used by the routine at #R$EF87.
c $F0A1 Routine at F0A1
D $F0A1 Used by the routine at #R$EF87.
N $F0B8 This entry point is used by the routines at #R$D018, #R$E8AE and #R$E8EA.
b $F117 Data block at F117
B $F117,3,3
w $F11A Data block at F11A
N $F11A Recursive tokens
W $F11A,4,2
b $F11E Recursive tokens
@ $F11E label=tokens
B $F11E,3,3
t $F121 Message at F121
T $F121,3,3
b $F124 Data block at F124
B $F124,6,6
t $F12A Message at F12A
T $F12A,3,3
b $F12D Data block at F12D
B $F12D,20,8*2,4
t $F141 Message at F141
T $F141,3,3
b $F144 Data block at F144
B $F144,10,8,2
t $F14E Message at F14E
T $F14E,5,5
b $F153 Data block at F153
B $F153,13,8,5
t $F160 Message at F160
T $F160,5,5
b $F165 Data block at F165
B $F165,4,4
t $F169 Message at F169
T $F169,3,3
b $F16C Data block at F16C
B $F16C,14,8,6
t $F17A Message at F17A
T $F17A,3,3
s $F17D Unused
S $F17D,1,$01
t $F17E Message at F17E
T $F17E,4,4
s $F182 Unused
S $F182,1,$01
t $F183 Message at F183
T $F183,6,6
b $F189 Data block at F189
B $F189,9,8,1
t $F192 Message at F192
T $F192,3,3
s $F195 Unused
S $F195,1,$01
t $F196 Message at F196
T $F196,4,4
b $F19A Data block at F19A
B $F19A,2,2
t $F19C Message at F19C
T $F19C,3,3
b $F19F Data block at F19F
B $F19F,12,8,4
t $F1AB Message at F1AB
T $F1AB,3,3
b $F1AE Data block at F1AE
B $F1AE,8,8
t $F1B6 Message at F1B6
T $F1B6,3,3
s $F1B9 Unused
S $F1B9,1,$01
t $F1BA Message at F1BA
T $F1BA,5,5
b $F1BF Data block at F1BF
B $F1BF,15,8,7
t $F1CE Message at F1CE
T $F1CE,4,4
b $F1D2 Data block at F1D2
B $F1D2,3,3
t $F1D5 Message at F1D5
T $F1D5,4,4
b $F1D9 Data block at F1D9
B $F1D9,6,6
t $F1DF Message at F1DF
T $F1DF,3,3
b $F1E2 Data block at F1E2
B $F1E2,1,1
t $F1E3 Message at F1E3
T $F1E3,4,4
b $F1E7 Data block at F1E7
B $F1E7,4,4
t $F1EB Message at F1EB
T $F1EB,3,3
b $F1EE Data block at F1EE
B $F1EE,1,1
t $F1EF Message at F1EF
T $F1EF,3,3
b $F1F2 Data block at F1F2
B $F1F2,18,8*2,2
t $F204 Message at F204
T $F204,4,4
b $F208 Data block at F208
B $F208,9,8,1
t $F211 Message at F211
T $F211,6,6
b $F217 Data block at F217
B $F217,1,1
t $F218 Message at F218
T $F218,3,3
b $F21B Data block at F21B
B $F21B,1,1
t $F21C Message at F21C
T $F21C,6,6
b $F222 Data block at F222
B $F222,1,1
t $F223 Message at F223
T $F223,4,4
b $F227 Data block at F227
B $F227,4,4
t $F22B Message at F22B
T $F22B,9,9
b $F234 Data block at F234
B $F234,4,4
t $F238 Message at F238
T $F238,3,3
b $F23B Data block at F23B
B $F23B,4,4
t $F23F Message at F23F
T $F23F,4,4
b $F243 Data block at F243
B $F243,16,8
t $F253 Message at F253
T $F253,4,4
b $F257 Data block at F257
B $F257,2,2
t $F259 Message at F259
T $F259,6,6
b $F25F Data block at F25F
B $F25F,10,8,2
t $F269 Message at F269
T $F269,4,4
b $F26D Data block at F26D
B $F26D,16,8
t $F27D Message at F27D
T $F27D,4,4
b $F281 Data block at F281
B $F281,9,8,1
t $F28A Message at F28A
T $F28A,3,3
b $F28D Data block at F28D
B $F28D,18,8*2,2
t $F29F Message at F29F
T $F29F,4,4
b $F2A3 Data block at F2A3
B $F2A3,12,8,4
t $F2AF Message at F2AF
T $F2AF,3,3
b $F2B2 Data block at F2B2
B $F2B2,10,8,2
t $F2BC Message at F2BC
T $F2BC,6,6
b $F2C2 Data block at F2C2
B $F2C2,8,8
t $F2CA Message at F2CA
T $F2CA,4,4
b $F2CE Data block at F2CE
B $F2CE,7,7
t $F2D5 Message at F2D5
T $F2D5,4,4
b $F2D9 Data block at F2D9
B $F2D9,22,8*2,6
t $F2EF Message at F2EF
T $F2EF,10,10
s $F2F9 Unused
S $F2F9,1,$01
t $F2FA Message at F2FA
T $F2FA,3,3
b $F2FD Data block at F2FD
B $F2FD,27,8*3,3
t $F318 Message at F318
T $F318,4,4
b $F31C Data block at F31C
B $F31C,8,8
t $F324 Message at F324
T $F324,5,5
s $F329 Unused
S $F329,1,$01
t $F32A Message at F32A
T $F32A,6,6
b $F330 Data block at F330
B $F330,14,8,6
t $F33E Message at F33E
T $F33E,5,5
b $F343 Data block at F343
B $F343,16,8
t $F353 Message at F353
T $F353,3,3
b $F356 Data block at F356
B $F356,7,7
t $F35D Message at F35D
T $F35D,3,3
b $F360 Data block at F360
B $F360,1,1
t $F361 Message at F361
T $F361,3,3
s $F364 Unused
S $F364,1,$01
t $F365 Message at F365
T $F365,3,3
b $F368 Data block at F368
B $F368,4,4
t $F36C Message at F36C
T $F36C,4,4
b $F370 Data block at F370
B $F370,6,6
t $F376 Message at F376
T $F376,3,3
b $F379 Data block at F379
B $F379,25,8*3,1
t $F392 Message at F392
T $F392,4,4
b $F396 Data block at F396
B $F396,6,6
t $F39C Message at F39C
T $F39C,3,3
b $F39F Data block at F39F
B $F39F,17,8*2,1
t $F3B0 Message at F3B0
T $F3B0,3,3
s $F3B3 Unused
S $F3B3,1,$01
t $F3B4 Message at F3B4
T $F3B4,4,4
b $F3B8 Data block at F3B8
B $F3B8,6,6
t $F3BE Message at F3BE
T $F3BE,3,3
b $F3C1 Data block at F3C1
B $F3C1,3,3
t $F3C4 Message at F3C4
T $F3C4,5,5
b $F3C9 Data block at F3C9
B $F3C9,7,7
t $F3D0 Message at F3D0
T $F3D0,4,4
b $F3D4 Data block at F3D4
B $F3D4,9,8,1
t $F3DD Message at F3DD
T $F3DD,4,4
s $F3E1 Unused
S $F3E1,1,$01
t $F3E2 Message at F3E2
T $F3E2,6,6
b $F3E8 Data block at F3E8
B $F3E8,2,2
t $F3EA Message at F3EA
T $F3EA,3,3
s $F3ED Unused
S $F3ED,1,$01
t $F3EE Message at F3EE
T $F3EE,3,3
s $F3F1 Unused
S $F3F1,1,$01
t $F3F2 Message at F3F2
T $F3F2,8,8
b $F3FA Data block at F3FA
B $F3FA,2,2
t $F3FC Message at F3FC
T $F3FC,8,8
s $F404 Unused
S $F404,1,$01
t $F405 Message at F405
T $F405,5,5
b $F40A Data block at F40A
B $F40A,4,4
t $F40E Message at F40E
T $F40E,4,4
b $F412 Data block at F412
B $F412,9,8,1
t $F41B Message at F41B
T $F41B,5,5
b $F420 Data block at F420
B $F420,17,8*2,1
t $F431 Message at F431
T $F431,3,3
b $F434 Data block at F434
B $F434,3,3
t $F437 Message at F437
T $F437,3,3
b $F43A Data block at F43A
B $F43A,8,8
t $F442 Message at F442
T $F442,4,4
b $F446 Data block at F446
B $F446,4,4
t $F44A Message at F44A
T $F44A,5,5
b $F44F Data block at F44F
B $F44F,1,1
t $F450 Message at F450
T $F450,6,6
b $F456 Data block at F456
B $F456,29,8*3,5
t $F473 Message at F473
T $F473,6,6
b $F479 Data block at F479
B $F479,6,6
t $F47F Message at F47F
T $F47F,3,3
b $F482 Data block at F482
B $F482,19,8*2,3
t $F495 Message at F495
T $F495,3,3
b $F498 Data block at F498
B $F498,4,4
t $F49C Message at F49C
T $F49C,4,4
b $F4A0 Data block at F4A0
B $F4A0,13,8,5
t $F4AD Message at F4AD
T $F4AD,3,3
b $F4B0 Data block at F4B0
B $F4B0,6,6
t $F4B6 Message at F4B6
T $F4B6,3,3
b $F4B9 Data block at F4B9
B $F4B9,5,5
t $F4BE Message at F4BE
T $F4BE,3,3
b $F4C1 Data block at F4C1
B $F4C1,9,8,1
t $F4CA Message at F4CA
T $F4CA,6,6
s $F4D0 Unused
S $F4D0,1,$01
t $F4D1 Message at F4D1
T $F4D1,19,19
b $F4E4 Data block at F4E4
B $F4E4,10,8,2
t $F4EE Message at F4EE
T $F4EE,3,3
b $F4F1 Data block at F4F1
B $F4F1,4,4
b $F4F5 Data block at F4F5
@ $F4F5 label=more_tokens
B $F4F5,2,2
t $F4F7 Message at F4F7
T $F4F7,4,4
b $F4FB Data block at F4FB
B $F4FB,1,1
t $F4FC Message at F4FC
T $F4FC,5,5
b $F501 Data block at F501
B $F501,6,6
t $F507 Message at F507
T $F507,3,3
b $F50A Data block at F50A
B $F50A,14,8,6
t $F518 Message at F518
T $F518,5,5
b $F51D Data block at F51D
B $F51D,4,4
t $F521 Message at F521
T $F521,8,8
b $F529 Data block at F529
B $F529,5,5
t $F52E Message at F52E
T $F52E,3,3
b $F531 Data block at F531
B $F531,1,1
t $F532 Message at F532
T $F532,5,5
s $F537 Unused
S $F537,1,$01
t $F538 Message at F538
T $F538,5,5
b $F53D Data block at F53D
B $F53D,34,8*4,2
t $F55F Message at F55F
T $F55F,3,3
b $F562 Data block at F562
B $F562,8,8
t $F56A Message at F56A
T $F56A,3,3
b $F56D Data block at F56D
B $F56D,2,2
t $F56F Message at F56F
T $F56F,7,7
b $F576 Data block at F576
B $F576,5,5
t $F57B Message at F57B
T $F57B,4,4
b $F57F Data block at F57F
B $F57F,1,1
t $F580 Message at F580
T $F580,3,3
b $F583 Data block at F583
B $F583,2,2
t $F585 Message at F585
T $F585,4,4
b $F589 Data block at F589
B $F589,8,8
t $F591 Message at F591
T $F591,3,3
b $F594 Data block at F594
B $F594,3,3
t $F597 Message at F597
T $F597,5,5
b $F59C Data block at F59C
B $F59C,1,1
t $F59D Message at F59D
T $F59D,3,3
b $F5A0 Data block at F5A0
B $F5A0,6,6
t $F5A6 Message at F5A6
T $F5A6,9,9
b $F5AF Data block at F5AF
B $F5AF,5,5
t $F5B4 Message at F5B4
T $F5B4,4,4
b $F5B8 Data block at F5B8
B $F5B8,15,8,7
t $F5C7 Message at F5C7
T $F5C7,3,3
b $F5CA Data block at F5CA
B $F5CA,6,6
t $F5D0 Message at F5D0
T $F5D0,7,7
b $F5D7 Data block at F5D7
B $F5D7,13,8,5
t $F5E4 Message at F5E4
T $F5E4,4,4
b $F5E8 Data block at F5E8
B $F5E8,11,8,3
t $F5F3 Message at F5F3
T $F5F3,3,3
b $F5F6 Data block at F5F6
B $F5F6,5,5
t $F5FB Message at F5FB
T $F5FB,4,4
b $F5FF Data block at F5FF
B $F5FF,14,8,6
t $F60D Message at F60D
T $F60D,3,3
b $F610 Data block at F610
B $F610,11,8,3
t $F61B Message at F61B
T $F61B,6,6
b $F621 Data block at F621
B $F621,4,4
t $F625 Message at F625
T $F625,4,4
b $F629 Data block at F629
B $F629,12,8,4
t $F635 Message at F635
T $F635,3,3
b $F638 Data block at F638
B $F638,31,8*3,7
t $F657 Message at F657
T $F657,3,3
b $F65A Data block at F65A
B $F65A,26,8*3,2
t $F674 Message at F674
T $F674,4,4
b $F678 Data block at F678
B $F678,24,8
t $F690 Message at F690
T $F690,4,4
b $F694 Data block at F694
B $F694,9,8,1
t $F69D Message at F69D
T $F69D,6,6
b $F6A3 Data block at F6A3
B $F6A3,20,8*2,4
t $F6B7 Message at F6B7
T $F6B7,4,4
b $F6BB Data block at F6BB
B $F6BB,33,8*4,1
t $F6DC Message at F6DC
T $F6DC,3,3
b $F6DF Data block at F6DF
B $F6DF,14,8,6
t $F6ED Message at F6ED
T $F6ED,5,5
b $F6F2 Data block at F6F2
B $F6F2,12,8,4
t $F6FE Message at F6FE
T $F6FE,4,4
b $F702 Data block at F702
B $F702,5,5
t $F707 Message at F707
T $F707,3,3
b $F70A Data block at F70A
B $F70A,11,8,3
t $F715 Message at F715
T $F715,4,4
b $F719 Data block at F719
B $F719,19,8*2,3
t $F72C Message at F72C
T $F72C,6,6
b $F732 Data block at F732
B $F732,6,6
t $F738 Message at F738
T $F738,3,3
s $F73B Unused
S $F73B,1,$01
t $F73C Message at F73C
T $F73C,3,3
b $F73F Data block at F73F
B $F73F,4,4
t $F743 Message at F743
T $F743,3,3
b $F746 Data block at F746
B $F746,44,8*5,4
t $F772 Message at F772
T $F772,3,3
b $F775 Data block at F775
B $F775,3,3
t $F778 Message at F778
T $F778,5,5
b $F77D Data block at F77D
B $F77D,7,7
t $F784 Message at F784
T $F784,3,3
b $F787 Data block at F787
B $F787,9,8,1
t $F790 Message at F790
T $F790,10,10
s $F79A Unused
S $F79A,1,$01
t $F79B Message at F79B
T $F79B,4,4
b $F79F Data block at F79F
B $F79F,5,5
t $F7A4 Message at F7A4
T $F7A4,5,5
b $F7A9 Data block at F7A9
B $F7A9,25,8*3,1
t $F7C2 Message at F7C2
T $F7C2,3,3
b $F7C5 Data block at F7C5
B $F7C5,5,5
t $F7CA Message at F7CA
T $F7CA,3,3
b $F7CD Data block at F7CD
B $F7CD,23,8*2,7
t $F7E4 Message at F7E4
T $F7E4,4,4
b $F7E8 Data block at F7E8
B $F7E8,13,8,5
t $F7F5 Message at F7F5
T $F7F5,5,5
s $F7FA Unused
S $F7FA,1,$01
t $F7FB Message at F7FB
T $F7FB,3,3
b $F7FE Data block at F7FE
B $F7FE,6,6
t $F804 Message at F804
T $F804,4,4
b $F808 Data block at F808
B $F808,18,8*2,2
t $F81A Message at F81A
T $F81A,4,4
s $F81E Unused
S $F81E,6,$06
t $F824 Message at F824
T $F824,6,6
b $F82A Data block at F82A
B $F82A,8,8
t $F832 Message at F832
T $F832,3,3
b $F835 Data block at F835
B $F835,42,8*5,2
t $F85F Message at F85F
T $F85F,9,9
b $F868 Data block at F868
B $F868,2,2
t $F86A Message at F86A
T $F86A,3,3
s $F86D Unused
S $F86D,1,$01
t $F86E Message at F86E
T $F86E,3,3
b $F871 Data block at F871
B $F871,2,2
t $F873 Message at F873
T $F873,4,4
s $F877 Unused
S $F877,1,$01
t $F878 Message at F878
T $F878,6,6
b $F87E Data block at F87E
B $F87E,9,8,1
t $F887 Message at F887
T $F887,3,3
b $F88A Data block at F88A
B $F88A,6,6
t $F890 Message at F890
T $F890,3,3
b $F893 Data block at F893
B $F893,5,5
t $F898 Message at F898
T $F898,5,5
s $F89D Unused
S $F89D,1,$01
t $F89E Message at F89E
T $F89E,5,5
b $F8A3 Data block at F8A3
B $F8A3,25,8*3,1
t $F8BC Message at F8BC
T $F8BC,6,6
b $F8C2 Data block at F8C2
B $F8C2,3,3
t $F8C5 Message at F8C5
T $F8C5,3,3
b $F8C8 Data block at F8C8
B $F8C8,9,8,1
t $F8D1 Message at F8D1
T $F8D1,5,5
b $F8D6 Data block at F8D6
B $F8D6,4,4
t $F8DA Message at F8DA
T $F8DA,4,4
b $F8DE Data block at F8DE
B $F8DE,8,8
t $F8E6 Message at F8E6
T $F8E6,6,6
b $F8EC Data block at F8EC
B $F8EC,2,2
t $F8EE Message at F8EE
T $F8EE,5,5
b $F8F3 Data block at F8F3
B $F8F3,2,2
t $F8F5 Message at F8F5
T $F8F5,5,5
b $F8FA Data block at F8FA
B $F8FA,41,8*5,1
t $F923 Message at F923
T $F923,4,4
b $F927 Data block at F927
B $F927,8,8
t $F92F Message at F92F
T $F92F,3,3
b $F932 Data block at F932
B $F932,12,8,4
t $F93E Message at F93E
T $F93E,3,3
b $F941 Data block at F941
B $F941,6,6
t $F947 Message at F947
T $F947,4,4
b $F94B Data block at F94B
B $F94B,22,8*2,6
t $F961 Message at F961
T $F961,5,5
b $F966 Data block at F966
B $F966,14,8,6
t $F974 Message at F974
T $F974,6,6
b $F97A Data block at F97A
B $F97A,9,8,1
t $F983 Message at F983
T $F983,5,5
b $F988 Data block at F988
B $F988,33,8*4,1
t $F9A9 Message at F9A9
T $F9A9,3,3
b $F9AC Data block at F9AC
B $F9AC,1,1
t $F9AD Message at F9AD
T $F9AD,3,3
b $F9B0 Data block at F9B0
B $F9B0,5,5
t $F9B5 Message at F9B5
T $F9B5,3,3
b $F9B8 Data block at F9B8
B $F9B8,12,8,4
t $F9C4 Message at F9C4
T $F9C4,5,5
b $F9C9 Data block at F9C9
B $F9C9,8,8
t $F9D1 Message at F9D1
T $F9D1,5,5
b $F9D6 Data block at F9D6
B $F9D6,57,8*7,1
t $FA0F Message at FA0F
T $FA0F,6,6
s $FA15 Unused
S $FA15,1,$01
t $FA16 Message at FA16
T $FA16,4,4
b $FA1A Data block at FA1A
B $FA1A,5,5
t $FA1F Message at FA1F
T $FA1F,3,3
b $FA22 Data block at FA22
B $FA22,14,8,6
t $FA30 Message at FA30
T $FA30,6,6
b $FA36 Data block at FA36
B $FA36,6,6
t $FA3C Message at FA3C
T $FA3C,5,5
b $FA41 Data block at FA41
B $FA41,2,2
t $FA43 Message at FA43
T $FA43,3,3
b $FA46 Data block at FA46
B $FA46,4,4
t $FA4A Message at FA4A
T $FA4A,5,5
b $FA4F Data block at FA4F
B $FA4F,16,8
t $FA5F Message at FA5F
T $FA5F,3,3
b $FA62 Data block at FA62
B $FA62,4,4
t $FA66 Message at FA66
T $FA66,5,5
b $FA6B Data block at FA6B
B $FA6B,31,8*3,7
t $FA8A Message at FA8A
T $FA8A,4,4
b $FA8E Data block at FA8E
B $FA8E,10,8,2
t $FA98 Message at FA98
T $FA98,4,4
b $FA9C Data block at FA9C
B $FA9C,1,1
t $FA9D Message at FA9D
T $FA9D,4,4
b $FAA1 Data block at FAA1
B $FAA1,2,2
t $FAA3 Message at FAA3
T $FAA3,4,4
b $FAA7 Data block at FAA7
B $FAA7,8,8
t $FAAF Message at FAAF
T $FAAF,4,4
b $FAB3 Data block at FAB3
B $FAB3,3,3
t $FAB6 Message at FAB6
T $FAB6,3,3
b $FAB9 Data block at FAB9
B $FAB9,45,8*5,5
t $FAE6 Message at FAE6
T $FAE6,3,3
b $FAE9 Data block at FAE9
B $FAE9,9,8,1
t $FAF2 Message at FAF2
T $FAF2,4,4
b $FAF6 Data block at FAF6
B $FAF6,1,1
t $FAF7 Message at FAF7
T $FAF7,4,4
b $FAFB Data block at FAFB
B $FAFB,13,8,5
t $FB08 Message at FB08
T $FB08,6,6
b $FB0E Data block at FB0E
B $FB0E,14,8,6
t $FB1C Message at FB1C
T $FB1C,4,4
b $FB20 Data block at FB20
B $FB20,17,8*2,1
t $FB31 Message at FB31
T $FB31,5,5
b $FB36 Data block at FB36
B $FB36,10,8,2
t $FB40 Message at FB40
T $FB40,4,4
b $FB44 Data block at FB44
B $FB44,8,8
t $FB4C Message at FB4C
T $FB4C,7,7
b $FB53 Data block at FB53
B $FB53,17,8*2,1
t $FB64 Message at FB64
T $FB64,5,5
s $FB69 Unused
S $FB69,1,$01
t $FB6A Message at FB6A
T $FB6A,4,4
b $FB6E Data block at FB6E
B $FB6E,12,8,4
t $FB7A Message at FB7A
T $FB7A,3,3
b $FB7D Data block at FB7D
B $FB7D,9,8,1
t $FB86 Message at FB86
T $FB86,3,3
b $FB89 Data block at FB89
B $FB89,2,2
t $FB8B Message at FB8B
T $FB8B,3,3
b $FB8E Data block at FB8E
B $FB8E,3,3
t $FB91 Message at FB91
T $FB91,4,4
b $FB95 Data block at FB95
B $FB95,6,6
t $FB9B Message at FB9B
T $FB9B,3,3
b $FB9E Data block at FB9E
B $FB9E,11,8,3
t $FBA9 Message at FBA9
T $FBA9,3,3
s $FBAC Unused
S $FBAC,1,$01
t $FBAD Message at FBAD
T $FBAD,4,4
b $FBB1 Data block at FBB1
B $FBB1,10,8,2
t $FBBB Message at FBBB
T $FBBB,3,3
b $FBBE Data block at FBBE
B $FBBE,15,8,7
t $FBCD Message at FBCD
T $FBCD,4,4
b $FBD1 Data block at FBD1
B $FBD1,8,8
t $FBD9 Message at FBD9
T $FBD9,3,3
b $FBDC Data block at FBDC
B $FBDC,18,8*2,2
t $FBEE Message at FBEE
T $FBEE,8,8
b $FBF6 Data block at FBF6
B $FBF6,4,4
t $FBFA Message at FBFA
T $FBFA,5,5
b $FBFF Data block at FBFF
B $FBFF,1,1 Recursive tokens end
b $FC00 Data block at FC00
B $FC00,16,8
c $FC10 Routine at FC10
D $FC10 Used by the routine at #R$FD69.
c $FCBA Routine at FCBA
D $FCBA Used by the routine at #R$FD69.
b $FCEA Data block at FCEA
B $FCEA,87,8*10,7
b $FD41 Data block at FD41
@ $FD41 label=data_at_FD41
B $FD41,40,8
c $FD69 Routine at FD69
D $FD69 Used by the routine at #R$FF25.
N $FD76 This entry point is used by the routine at #R$FC10.
b $FD8A Data block at FD8A
B $FD8A,4,4
b $FD8E Data block at FD8E
B $FD8E,13,8,5
t $FD9B Message at FD9B
T $FD9B,88,65,23
b $FDF3 Data block at FDF3
B $FDF3,14,8,6
c $FE01 Routine at FE01
D $FE01 Used by the routine at #R$FF25.
c $FEFE Routine at FEFE
c $FF00 Routine at FF00
D $FF00 Used by the routine at #R$FE01.
w $FF08 Data block at FF08
@ $FF08 label=word_at_FF08
W $FF08,2,2
w $FF0A Data block at FF0A
@ $FF0A label=word_at_FF0A
W $FF0A,2,2
w $FF0C Data block at FF0C
@ $FF0C label=word_at_FF0C
W $FF0C,2,2
c $FF0E Routine at FF0E
D $FF0E Used by the routine at #R$FE01.
c $FF16 Routine at FF16
D $FF16 Used by the routine at #R$FF00.
N $FF1D This entry point is used by the routines at #R$FE01, #R$FF00 and #R$FF0E.
c $FF25 Routine at FF25
D $FF25 Used by the routine at #R$FEFE.
c $FF4C Routine at FF4C
@ $FF4C label=stack
w $FF56 Data block at FF56
@ $FF56 label=sp_tmp
W $FF56,2,2
b $FF58 Data block at FF58
B $FF58,168,8
