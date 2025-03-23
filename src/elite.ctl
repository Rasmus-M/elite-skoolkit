@ $4000 start
@ $4000 org
b $4000 #UDGTABLE { #SCR(loading) | loading screen. } TABLE#
@ $4000 label=zx_screen
B $4000,6144,32
b $5800 attributes
@ $5800 label=zx_attrs
B $5800,768,32
b $5B00 printer buffer
@ $5B00 label=ctrl_panel_attrs
B $5B00,256,32
b $5C00 system variables
B $5C00,192,8
b $5CC0 reserved
B $5CC0,11,8,3
b $5CCB available
B $5CCB,165,8*20,5
b $5D70 Font #HTML[#FONT$5D70,96]
@ $5D70 label=font
B $5D70,1001,8*125,1
b $6159 Structure of a ship ($26 bytes)
D $6159 #TABLE { =h Type | =h Offset | =h Content } { byte | $00 | x_lo } { byte | $01 | x_hi } { byte | $02 | x_sign } { byte | $03 | y_lo } { byte | $04 | y_hi } { byte | $05 | y_sign } { byte | $06 | z_lo } { byte | $07 | z_hi } { byte | $08 | z_sign } { byte | $09 | nosev_x_lo } { byte | $0A | nosev_x_hi } { byte | $0B | nosev_y_lo } { byte | $0C | nosev_y_hi } { byte | $0D | nosev_z_lo } { byte | $0E | nosev_z_hi } { byte | $0F | roofv_x_lo } { byte | $10 | roofv_x_hi } { byte | $11 | roofv_y_lo } { byte | $12 | roofv_y_hi } { byte | $13 | roofv_z_lo } { byte | $14 | roofv_z_hi } { byte | $15 | sidev_x_lo } { byte | $16 | sidev_x_hi } { byte | $17 | sidev_y_lo } { byte | $18 | sidev_y_hi } { byte | $19 | sidev_z_lo } { byte | $1A | sidev_z_hi } { byte | $1B | Speed } { byte | $1C | Acceleration?} { byte | $1D | Roll counter? Set to $C0 } { byte | $1E | Pitch counter?  Set to $C0 } { byte | $1F | Unknown } { byte | $20 | From blueprint byte $0A - bit field. Bit 3 fire laser } { byte | $21 | From blueprint byte $12 - bit field } { byte | $22 | Energy } { word | $23 | Address of blueprint } { byte | $25 | Unknown, set to $7E } { byte | $26 | Unknown, set to $00 } TABLE#
N $6159 Current ship
@ $6159 label=current_ship
B $6159,34,8*4,2
b $617B Data block at 617B
B $617B,4,4
s $617F Unused
S $617F,1,$01
b $6180 Ship blueprint lookup table
@ $6180 label=ship_blueprints
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
b $61CC Unknown ship 1
D $61CC Structure of a blueprint ($17 bytes): #TABLE { =h Type | =h Offset | =h Content } { byte | $00 | Max canisters released } { byte | $01 | Targetable area? } { byte | $02 | Targetable area? } { byte | $03 | Number of vertices } { byte | $04 | Number of edges } { byte | $05 | Number of faces } { byte | $06 | Max speed } { byte | $07 | Max energy } { word | $08 | Bounty } { byte | $0A | Unknown } { byte | $0B | Visibility distance } { word | $0C | Offset to vertices from byte 0 } { word | $0E | Offset to edges } { word | $10 | Offset to faces } { byte | $12 | Unknown } { byte | $13 | Normals scaled by } { byte | $14 | Gun vertex } { byte | $15 | Unknown } { byte | $16 | Unknown } TABLE# Unknown could be: Max. edge count, Explosion count, Laser power/missiles
@ $61CC label=unknown_ship_1
B $61CC,23,8*2,7
b $61E3 Unknown ship 1 vertices
B $61E3,114,6
b $6255 Unknown ship 1 edges
D $6255 Structure of an edge ($04 bytes): #TABLE { =h Offset | =h Content } { $00 | Visibility distance } { $01 | The number of the vertex at the start of the edge } { $02 | The number of the vertex at the end of the edge } { $03 | Bits 0-3 = the number of face 1. Bits 4-7 = the number of face 2 } TABLE#
B $6255,112,4
b $62C5 Unknown ship 1 faces
B $62C5,48,4
b $62F5 Unknown ship 2
@ $62F5 label=unknown_ship_2
B $62F5,23,8*2,7
b $630C Ship asteroid
@ $630C label=ship_asteroid
B $630C,23,8*2,7
b $6323 Ship asteroid vertices
B $6323,54,6
b $6359 Ship asteroid edges
B $6359,84,4
b $63AD Ship asteroid faces
B $63AD,56,4
b $63E5 Ship canister
@ $63E5 label=ship_canister
B $63E5,23,8*2,7
b $63FC Ship canister vertices
B $63FC,60,6
b $6438 Ship canister edges
B $6438,60,4
b $6474 Ship canister faces
B $6474,28,4
b $6490 Ship cobra mk 3 v1
@ $6490 label=ship_cobra_mk_3_v1
B $6490,23,8*2,7
b $64A7 Ship cobra mk 3 v2
@ $64A7 label=ship_cobra_mk_3_v2
B $64A7,23,8*2,7
b $64BE Ship cobra mk 3 vertices
B $64BE,168,6
b $6566 Ship cobra mk 3 edges
B $6566,152,4
b $65FE Ship cobra mk 3 faces
B $65FE,52,4
b $6632 Ship escape pod
@ $6632 label=ship_escapepod
B $6632,23,8*2,7
b $6649 Ship escape pod vertices
B $6649,24,6
b $6661 Ship escape pod edges
B $6661,24,4
b $6679 Ship escape pod faces
B $6679,16,4
b $6689 Unknown ship 4
@ $6689 label=unknown_ship_4
B $6689,23,8*2,7
b $66A0 Unknown ship 4 vertices
B $66A0,114,6
b $6712 Unknown ship 4 edges
B $6712,108,4
b $677E Unknown ship 4 faces
B $677E,40,4
b $67A6 Ship missile
@ $67A6 label=ship_missile
B $67A6,23,8*2,7
b $67BD Ship missile vertices
B $67BD,102,6
b $6823 Ship missible edges
B $6823,96,4
b $6883 Ship missile faces
B $6883,36,4
b $68A7 Unknown ship 5
@ $68A7 label=unknown_ship_5
B $68A7,23,8*2,7
b $68BE Unknown ship 5 vertices
B $68BE,24,6
b $68D6 Unknown ship 5 edges
B $68D6,16,4
b $68E6 Unknown ship 6
@ $68E6 label=unknown_ship_6
B $68E6,23,8*2,7
b $68FD Ship python
@ $68FD label=ship_python
B $68FD,23,8*2,7
b $6914 Ship python vertices
B $6914,66,6
b $6956 Ship python edges
B $6956,104,4
b $69BE Ship python faces
B $69BE,52,4
b $69F2 Ship sidewinder
@ $69F2 label=ship_sidewinder
B $69F2,23,8*2,7
b $6A09 Ship sidewinder vertices
B $6A09,60,6
b $6A45 Ship sidewinder edges
B $6A45,60,4
b $6A81 Ship sidewinder faces
B $6A81,28,4
b $6A9D Ship coriolis
@ $6A9D label=ship_coriolis
B $6A9D,23,8*2,7
b $6AB4 Ship coriolis vertices
B $6AB4,96,6
b $6B14 Ship coriolis edges
B $6B14,112,4
b $6B84 Ship coriolis faces
B $6B84,56,4
b $6BBC Unknown ship 7
@ $6BBC label=unknown_ship_7
B $6BBC,23,8*2,7
b $6BD3 Unknown ship 7 vertices
B $6BD3,24,6
b $6BEB Unknown ship 7 edges
B $6BEB,24,4
b $6C03 Unknown ship 7 faces
B $6C03,16,4
b $6C13 Ship thargoid
@ $6C13 label=ship_thargoid
B $6C13,23,8*2,7
b $6C2A Ship thargoid vertices
B $6C2A,120,6
b $6CA2 Ship thargoid edges
B $6CA2,104,4
b $6D0A Ship thargoid faces
B $6D0A,40,4
b $6D32 Unknown ship 8
@ $6D32 label=unknown_ship_8
B $6D32,23,8*2,7
b $6D49 Unknown ship 8 vertices
B $6D49,102,6
b $6DAF Unknown ship 8 edges
B $6DAF,84,4
b $6E03 Unknown ship 8 faces
B $6E03,24,4
b $6E1B Ship viper
@ $6E1B label=ship_viper
B $6E1B,23,8*2,7
b $6E32 Ship viper vertices
B $6E32,90,6
b $6E8C Ship viper edges
B $6E8C,80,4
b $6EDC Ship viper faces
B $6EDC,28,4
b $6EF8 Ship thargon
@ $6EF8 label=ship_thargon
B $6EF8,23,8*2,7
b $6F0F Ship thargon vertices
B $6F0F,60,6
b $6F4B Ship thargon edges
B $6F4B,60,4
b $6F87 Ship thargon faces
B $6F87,28,4
b $6FA3 Data block at 6FA3
B $6FA3,79,8*9,7
c $6FF2 Code start
c $6FF8 Routine at 6FF8
@ $6FF8 label=jump_to_70B0
b $6FFB Data block at 6FFB
B $6FFB,142,8*17,6
c $7089 Routine at 7089
c $70A9 Routine at 70A9
c $70B0 Routine at 70B0
s $70DE Unused
S $70DE,2,$02
c $70E0 Jump to 7366
@ $70E0 label=jump_to_7366
b $70E3 Byte at 70E3
B $70E3,1,1
b $70E4 Byte at 70E4
B $70E4,1,1
b $70E5 Byte at 70E5
B $70E5,1,1
b $70E6 Byte at 70E6
B $70E6,1,1
b $70E7 Byte at 70E7
B $70E7,1,1
b $70E8 Byte at 70E8
B $70E8,2,2
b $70EA Data at 70EA
B $70EA,2,2
b $70EC Data at 70EC
B $70EC,2,2
b $70EE Data at 70EE
B $70EE,2,2
b $70F0 Byte at 70F0
B $70F0,2,2
b $70F2 Data at 70F2
B $70F2,2,2
b $70F4 Data at 70F4
B $70F4,2,2
b $70F6 Data at 70F6
B $70F6,2,2
b $70F8 Data at 70F8
B $70F8,2,2
b $70FA Data at 70FA
B $70FA,2,2
b $70FC Data at 70FC
B $70FC,2,2
b $70FE Data at 70FE
B $70FE,2,2
b $7100 Data at 7100
B $7100,3,3
b $7103 Byte at 7103
B $7103,1,1
b $7104 Byte at 7104
B $7104,1,1
b $7105 Data at 7105
B $7105,2,2
b $7107 Data at 7107
B $7107,2,2
b $7109 Data at 7109
B $7109,3,3
b $710C Data at 710C
B $710C,3,3
b $710F Data at 710F
B $710F,1,1
b $7110 Data at 7110
B $7110,2,2
b $7112 Data at 7112
B $7112,3,3
b $7115 Data at 7115
B $7115,2,2
b $7117 Data at 7117
B $7117,2,2
c $7119 Routine at 7119
s $711C Unused
S $711C,5,$05
c $7121 Routine at 7121
s $7124 Unused
S $7124,1,$01
c $7125 Routine at 7125
@ $7125 label=jump_to_sound
b $7128 Data block at 7128
B $7128,20,8*2,4
c $713C Routine at 713C
c $717B Routine at 717B
c $71C0 Routine at 71C0
c $71E4 Routine at 71E4
c $71F3 Routine at 71F3
b $7221 Data block at 7221
B $7221,1,1
c $7222 Routine at 7222
c $725C Routine at 725C
c $7265 Routine at 7265
c $726C Routine at 726C
c $7278 Routine at 7278
c $728D Routine at 728D
s $72A2 Unused
S $72A2,1,$01
c $72A3 Routine at 72A3
c $7304 Routine at 7304
c $730A Routine at 730A
c $7310 Routine at 7310
c $7316 Routine at 7316
c $731C Routine at 731C
c $7322 Routine at 7322
c $732B Routine at 732B
c $7331 Routine at 7331
c $7344 Routine at 7344
c $7366 Title screen
@ $7366 label=title_screen
C $7366,4 Save the stack pointer
C $736D,3 Draw the control panel
C $7372,3 Create the ship
c $7378 Title screen loop
@ $7378 label=title_loop
C $73D6,2 Read keyboard
c $7426 Print title screen text
@ $7426 label=print_title_screen_text
C $7426,3 Print ELITE line
C $7429,3 Coordinates for LOAD NEW COMMANDER
C $742C,2 Token number
C $742E,2 To printing code
c $7430 Print PRESS SPACE, COMMANDER line
C $7430,3 Print ELITE line
C $7433,3 Coordinates for PRESS SPACE, COMMANDER
C $7436,2 Token number
C $7438,3 Store coordinates
C $743B,7 Set to print in buffer
C $7442,3 Print token
C $7445,2 Set to print on screen and return
c $7447 Print ELITE line
C $7447,3 Coordinates for ELITE
C $744A,3 Store coordinates
C $744D,2 Token number
C $744F,7 Set to print in buffer
C $7456,3 Print token
C $7459,7 Set to print on screen
c $7461 Set attributes for 2/3 of the screen to white/black
@ $7461 label=clear_attributes
b $7470 Data block at 7470
@ $7470 label=title_loop_count
B $7470,1,1
c $7471 Routine at 7471
s $7578 Unused
S $7578,12,$0C
c $7584 Routine at 7584
c $75C0 Routine at 75C0
c $75E1 Routine at 75E1
c $7799 Routine at 7799
c $77A0 Routine at 77A0
c $77E8 Routine at 77E8
c $77ED Routine at 77ED
c $780A Routine at 780A
c $782C Routine at 782C
c $7831 Routine at 7831
c $7853 Routine at 7853
c $7861 Routine at 7861
c $7898 Routine at 7898
c $7AA5 Routine at 7AA5
c $7AB0 Routine at 7AB0
c $7BFC Routine at 7BFC
c $7C92 Routine at 7C92
c $7CA7 Routine at 7CA7
c $7CB4 Routine at 7CB4
c $7CC1 Routine at 7CC1
c $7CC9 Routine at 7CC9
c $7CD5 Routine at 7CD5
c $7D0F Routine at 7D0F
c $7D55 Routine at 7D55
c $7E6D Routine at 7E6D
c $7E86 Routine at 7E86
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
b $7F6F Data block at 7F6F
B $7F6F,79,8*9,7
c $7FBE Copy screen buffer to screen
D $7FBE Looks like this is just making an exact copy.
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
D $7FE3 Copy every 2nd line of an area from buffer to screen.
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
@ $8042 label=draw_ctrl_panel
C $8042,6 Check byte at 0,0 and return is it's not $ff
C $8048,3 CLear 5 bytes at $FC08
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
C $8061,3 Copy control panel gfx from buffer to screen
C $806C,3 Copy control panel attrs from buffer to screen
c $8080 Clear 3D area and draw a border
@ $8080 label=clear_3d_area
C $8080,1 Disable interrupts
C $8081,4 Save stack pointer
C $8085,3 Set SP just above screen buffer
C $8088,3 For drawing empty bytes
C $808B,3 For bottom right corner
C $808E,4 For bottom left corner
C $8092,3 For middle border
C $8095,1 Draw bottom right corner
C $8096,6 Draw 28 middle bytes of bottom border
C $809C,2 Draw bottom left corner
C $809E,2 For right side
C $80A0,4 For left side
C $80A4,2 126 lines
C $80A6,1 Draw right side
C $80A7,14 Draw 28 empty bytes
C $80B5,2 Draw left side
C $80B7,2 Repeat 126 times
C $80B9,3 For middle border
C $80BC,2 For top right corner
C $80BE,4 For top left corner
C $80C2,1 Draw top right corner
C $80C3,6 Draw 28 middle bytes of top border
C $80C9,2 Draw top left corner
C $80CB,4 Restore stack pointer
C $80CF,1 Enable interrupts
s $80D1 For saving SP
@ $80D1 label=save_sp
S $80D1,2,$02
c $80D3 Routine at 80D3
c $813E Jump to entry in jump table at $D000
D $813E A Index of jump to take
C $813E,4 Save stack pointer
C $8142,3 Set SP just above screen buffer
C $8146,1 * 2
C $8147,1 * 3
C $8148,3 Jump table base address
C $814B,5 Add offset to base address
C $8150,3 Modify next instruction
C $8153,3 Self-modified. Return address saved to screen buffer?
C $8156,4 Restore stack pointer
c $815D Routine at 815D
N $817E This entry point is used by the routines at #R$7378 and #R$93ED.
C $8183,3 Copy control panel gfx from screen to buffer
C $818E,3 Copy control panel attrs from screen to buffer
s $81A3 Unused
S $81A3,6,$06
c $81A9 Routine at 81A9
c $8271 Routine at 8271
c $827A Routine at 827A
c $829C Routine at 829C
c $82B0 Routine at 82B0
c $82BB Routine at 82BB
c $82D1 Routine at 82D1
c $82D7 Routine at 82D7
c $8302 Routine at 8302
c $8315 Routine at 8315
c $8322 Routine at 8322
c $8390 Routine at 8390
c $8445 Routine at 8445
c $844F Routine at 844F
c $8459 Routine at 8459
b $8477 Data block at 8477
B $8477,98,8*12,2
c $84D9 Routine at 84D9
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
c $854F Routine at 854F
c $8606 Routine at 8606
b $8619 Data block at 8619
B $8619,10,8,2
w $8623 For saving SP
@ $8623 label=save_sp_2
W $8623,2,2
b $8625 Data block at 8625
B $8625,6,6
c $862B Routine at 862B
c $8643 Routine at 8643
c $865A Routine at 865A
c $8672 Routine at 8672
c $8689 Routine at 8689
c $86A1 Routine at 86A1
c $86B8 Routine at 86B8
c $86C4 Routine at 86C4
c $86D0 Routine at 86D0
c $86DE Routine at 86DE
c $86EE Routine at 86EE
c $87BF Routine at 87BF
c $87C8 Routine at 87C8
c $87D4 Routine at 87D4
c $87F4 Routine at 87F4
c $87FE Routine at 87FE
c $8840 Routine at 8840
c $884A Routine at 884A
c $888E Routine at 888E
c $8898 Routine at 8898
c $88B8 Routine at 88B8
c $88C2 Routine at 88C2
c $893F Routine at 893F
c $8985 Routine at 8985
c $89A1 Routine at 89A1
c $89C3 Routine at 89C3
c $89D4 Routine at 89D4
c $89EF Routine at 89EF
c $8A16 Routine at 8A16
c $8A25 Routine at 8A25
c $8A37 Routine at 8A37
c $8A82 Routine at 8A82
c $8ACD Routine at 8ACD
c $8AF7 Routine at 8AF7
c $8B0F Routine at 8B0F
C $8B0F,4 Save stack pointer
@ $8B31 label=self_mod_1
C $8B31,2 Self-modified
C $8B33,16 Write 32 bytes
C $8B47,4 Restore stack pointer
N $8B69 This entry point is used by the routines at #R$8C13 and #R$8D13.
C $8B84,4 Restore stack pointer
c $8B8A Routine at 8B8A
N $8BA9 This entry point is used by the routines at #R$8C13 and #R$8D13.
@ $8BD2 label=self_mod_2
C $8BD2,2 Self-modified
N $8BF8 This entry point is used by the routines at #R$865A and #R$8672.
c $8C13 Routine at 8C13
@ $8C30 label=self_mod_3
C $8C30,2 Self-modified
c $8C96 Routine at 8C96
@ $8CD2 label=self_mod_4
C $8CD2,2 Self-modified
N $8CF8 This entry point is used by the routines at #R$862B and #R$8643.
c $8D13 Routine at 8D13
@ $8D32 label=self_mod_5
C $8D32,2 Self-modified
c $8D8B Routine at 8D8B
C $8DC8,2 Self-modified
c $8DEE Routine at 8DEE
c $8E08 Routine at 8E08
c $8E29 Routine at 8E29
b $8E8D Data block at 8E8D
@ $8E8D label=data_at_8E8D
B $8E8D,128,8
c $8F0D Routine at 8F0D
b $8FB4 Data block at 8FB4
B $8FB4,2,2
b $8FB6 Data block at 8FB6
B $8FB6,2,2
c $8FB8 Routine at 8FB8
c $8FCC Routine at 8FCC
c $8FDA Routine at 8FDA
c $8FE3 Routine at 8FE3
c $8FED Routine at 8FED
c $8FF9 Routine at 8FF9
c $9004 Routine at 9004
c $9032 Routine at 9032
c $9060 Routine at 9060
c $90BB Routine at 90BB
c $90BF Routine at 90BF
c $90C5 Routine at 90C5
c $90CC Routine at 90CC
c $90FB Routine at 90FB
N $914B This entry point is used by the routines at #R$9060 and #R$91F4.
c $916B Routine at 916B
c $9173 Routine at 9173
c $917B Routine at 917B
N $9191 This entry point is used by the routines at #R$90BB and #R$924D.
c $91AC Routine at 91AC
c $91C0 Routine at 91C0
N $91CE This entry point is used by the routines at #R$91AC and #R$91D1.
c $91D1 Routine at 91D1
c $91F4 Routine at 91F4
c $924D Routine at 924D
c $9251 Routine at 9251
c $9257 Routine at 9257
c $925F Routine at 925F
s $928B Unused
S $928B,1,$01
c $928C Routine at 928C
c $9296 Routine at 9296
c $9337 Routine at 9337
c $9341 Routine at 9341
c $935E Routine at 935E
b $9364 Data block at 9364
B $9364,5,5
c $9369 Routine at 9369
c $937B Routine at 937B
c $93AC Routine at 93AC
c $93C0 Routine at 93C0
b $93D0 Data block at 93D0
@ $93D0 label=data_at_93d0
B $93D0,29,8*3,5
c $93ED Routine at 93ED
@ $94F4 label=clear_some_bytes
C $94F6,3 Clear 5 bytes of the 3 words at FF08
C $94FC,2 Set the 6th byte
N $94FE This entry point is used by the routines at #R$8042 and #R$813E.
@ $94FE label=clear_5_bytes_at_FC08
C $9500,3 Clear 5 bytes at FC08
@ $9503 label=clear_b_bytes_at_hl
c $9509 Routine at 9509
b $9522 Data block at 9522
@ $9522 label=data_at_9522
S $9522,5,$05
c $9527 Routine at 9527
c $9532 Routine at 9532
c $9551 Routine at 9551
c $9561 Routine at 9561
@ $9561 label=jump_table
c $9579 Routine at 9579
@ $9579 label=sound
c $9607 Routine at 9607
c $9624 Routine at 9624
c $9641 Routine at 9641
b $9648 Data block at 9648
B $9648,5,5
c $964D Routine at 964D
c $9657 Routine at 9657
c $9684 Routine at 9684
c $9692 Routine at 9692
c $969B Routine at 969B
c $96A9 Routine at 96A9
b $96BF Data block at 96BF
@ $96BF label=data at 96BF
B $96BF,6,6
c $96C5 Routine at 96C5
c $96D6 Routine at 96D6
c $96D9 Routine at 96D9
c $986A Routine at 986A
c $987C Routine at 987C
c $988E Routine at 988E
c $98A2 Routine at 98A2
C $98AD,1 Modify instruction at $9912 to EX DE,HL
C $98B3,1 Modify instruction at $9915 to PUSH HL
C $98B5,1 Modify instruction at $991A to PUSH HL
C $98BB,1 Modify instruction at $9935 to POP HL
C $98BF,1 Modify instruction at $9936 to INC H
C $98C4,1 Modify instruction at $9936 to NOP
C $98CA,1 Modify instruction at $9939 to EX DE,HL
c $98CD Routine at 98CD
C $98D6,2 8 lines to clear
C $98D8,3 Screen address (80, 72)
C $98DB,8 Clear 8 bytes
C $98E3,1 Next line
C $98E5,2 Clear line loop
C $98EE,1 Modify instruction at $9912 to NOP
C $98F4,1 Modify instruction at $9915 to PUSH DE
C $98F5,1 HL = $991A
C $98F6,1 Modify instruction at $991A to PUSH DE
C $98FC,1 Modify instruction at $9935 to POP DE
C $9900,1 Modify instruction at $9936 to INC D
C $9906,1 Modify instruction at $9940 to EX DE,HL
C $990B,1 Modify instruction at $9939 to NOP
C $990C,3 Screen address (72, 80)
C $990F,3 Attributes for control panel?
C $9912,1 Self-modified to EX DE,HL
C $9915,1 Self-modified to PUSH HL
C $9916,2 8 rows
C $991A,1 Self-modified to PUSH HL
C $991B,26 Copy 13 bytes
C $9935,1 Self-modified to POP HL
C $9936,1 Next line. Self-modified to INC H
C $9937,2 Repeat 8 times
C $9939,1 Self-modified to EX DE,HL
C $993C,3 Next row
C $9940,1 Self-modified to NOP
C $9942,2 Repeat 6 times
s $9945 Unused
S $9945,1,$01
c $9946 Routine at 9946
b $99A3 Data block at 99A3
@ $99A3 data_at_99a3
B $99A3,1,1
c $99A4 Routine at 99A4
c $9A40 Routine at 9A40
c $9AA7 Routine at 9AA7
b $9ADA Data block at 9ADA
@ $9ADA label=data_at_9ADA
B $9ADA,1,1
c $9ADB Routine at 9ADB
c $9B01 Routine at 9B01
c $9B4A Routine at 9B4A
c $9B57 Routine at 9B57
b $9B62 Data block at 9B62
B $9B62,18,8*2,2
c $9B74 Routine at 9B74
c $9BA7 Routine at 9BA7
b $9C1B Data block at 9C1B
@ $9C1B label=data_at_9C1B
B $9C1B,1,1
c $9C1C Routine at 9C1C
s $9C7B Unused
S $9C7B,5,$05
c $9C80 Routine at 9C80
c $9C83 Routine at 9C83
c $9C86 Routine at 9C86
c $9C89 Routine at 9C89
c $9C8C Routine at 9C8C
b $9C92 Data block at 9C92
B $9C92,10,8,2
c $9C9C Routine at 9C9C
@ $9C9C label=jump_to_ship_action
c $9C9F Routine at 9C9F
b $9CA2 Data block at 9CA2
B $9CA2,3,3
c $9CA5 Routine at 9CA5
c $9CAF Routine at 9CAF
@ $9CAF label=jump_to_draw_title_ship
s $9CB2 Unused
S $9CB2,3,$03
c $9CB5 Routine at 9CB5
c $9CBB Routine at 9CBB
c $9E73 Routine at 9E73
c $9E98 Routine at 9E98
c $9ECF Routine at 9ECF
c $9EF1 Routine at 9EF1
c $9F0A Routine at 9F0A
c $9F18 Routine at 9F18
c $9F41 Routine at 9F41
c $9F68 Routine at 9F68
w $9F80 Data block at 9F80
@ $9F80 label=word at 9F80
W $9F80,2,2
c $9F82 Routine at 9F82
c $A04B Routine at A04B
c $A076 Routine at A076
c $A098 Routine at A098
c $A0AB Routine at A0AB
c $A0FD Routine at A0FD
c $A127 Routine at A127
c $A173 Routine at A173
c $A1EA Routine at A1EA
c $A281 Routine at A281
s $A28B Unused
S $A28B,2,$02
c $A28D Draw title ship
@ $A28D label=draw_title_ship
C $A28D,4 Ship data structure
C $A291,3 Get blueprint MSB
C $A294,3 Get blueprint LSB
C $A297,3 Copy blueprint addr to IY
@ $A2A7 ssub=LD IX,$6159+$09
C $A2A7,4 Orientation vectors
b $A2B8 Data block at A2B8
B $A2B8,8,8
c $A2C0 Routine at A2C0
c $A361 Routine at A361
c $A3A2 Routine at A3A2
N $A403 This entry point is used by the routines at #R$A2C0 and #R$A361.
c $A40F Routine at A40F
c $A42F Routine at A42F
c $A4B5 Routine at A4B5
c $A4C4 Routine at A4C4
c $A532 Routine at A532
c $A53F Routine at A53F
c $A568 Routine at A568
c $A587 Routine at A587
c $A67D Routine at A67D
c $A686 Routine at A686
c $A69D Routine at A69D
c $A6AC Routine at A6AC
b $A6DE Data block at A6DE
@ $A6DE label=byte_at_A6DE
B $A6DE,1,1
c $A6DF Draw ship
R $A6DF IX Address of ship structure
R $A6DF IY Address of blueprint
@ $A6DF label=draw_ship
c $A83C Routine at A83C
c $A84D Draw ship part 2
R $A84D IX Address of ship structure
R $A84D IY Address of blueprint
@ $A84D label=draw_ship_and_laser
C $A878,4 Test a bit on the ship, should it fire?
C $A87C,1 Return if not set
C $A87D,3 Gun vertex
C $A880,3 Get coordinates
C $A884,3 Random number
C $A887,16 Calculate coordinates of other end of line
C $A897,9 Set some temporary flag
C $A8A0,3 Draw laser?
C $A8A3,4 Revert flag
C $A8A7,4 Reset bit on the ship
c $A8AC Routine at A8AC
c $A8DE Routine at A8DE
b $A8FA Data block at A8FA
@ $A8FA label=data_at_A8FA
B $A8FA,138,3
b $A984 Face visibility table
@ $A984 label=face_visibility_table
B $A984,16,8
b $A994 Data block at A994
B $A994,36,8*4,4
w $A9B8 Word at A9B8
@ $A9B8 label=some_distance
W $A9B8,2,2
b $A9BA Byte at A9BA
@ $A9BA label=byte_at_A9BA
B $A9BA,1,1
w $A9BB Word at A9BB
@ $A9BB label=word_at_A9BB
W $A9BB,2,2
w $A9BD Word at A9BD
@ $A9BD label=word_at_A9BD
W $A9BD,2,2
w $A9BF Word at A9BF
@ $A9BF label=word_at_A9BF
W $A9BF,2,2
b $A9C1 Byte at A9C1
@ $A9C1 label=byte_at_A9C1
B $A9C1,1,1
b $A9C2 Byte at A9C2
@ $A9C2 label=byte_at_A9C2
B $A9C2,1,1
b $A9C3 Byte at A9C3
@ $A9C3 label=byte_at_A9C3
B $A9C3,1,1
b $A9C4 Byte at A9C4
@ $A9C4 label=byte_at_A9C4
B $A9C4,1,1
b $A9C5 Byte at A9C5
@ $A9C5 label=byte_at_A9C5
B $A9C5,1,1
b $A9C6 Byte at A9C6
@ $A9C6 label=byte_at_A9C6
B $A9C6,1,1
b $A9C7 Byte at A9C7
@ $A9C7 label=byte_at_A9C7
B $A9C7,1,1
b $A9C8 Byte at A9C8
@ $A9C8 label=byte_at_A9C8
B $A9C8,1,1
c $A9C9 Routine at A9C9
c $AA10 Routine at AA10
R $AA10 A Contains the numbers of the two faces for an edge
@ $AA10 label=check_face_visible
C $AA10,9 Isolate face 1 number in B
C $AA19,2 Isolate face 2 number in A
C $AA1E,1 Return if ?
C $AA1F,1 Do the same for face 1
C $AA20,3 Face visibility table
C $AA23,5 HL += A
C $AA28,1 Get byte from table
C $AA29,1 Check if zero
c $AA2B Routine at AA2B
c $AAFB Routine at AAFB
c $AB0B Routine at AB0B
c $AB1E Routine at AB1E
c $AB34 Routine at AB34
c $AB4F Routine at AB4F
c $AB73 Routine at AB73
c $ABC0 Routine at ABC0
c $AC01 Routine at AC01
c $AC69 Routine at AC69
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
c $AE01 Draw edges
R $AE01 IX Address ship data structure
R $AE01 IY Address of blueprint
@ $AE01 label=draw_edges
C $AE01,3 Offset to edges LSB
C $AE04,3 Offset to edges MSB
C $AE07,3 Number of edges
C $AE0A,2 Save address of blueprint
C $AE0C,2 IX = Address of blueprint, stack has ship address
C $AE0E,2 IX = Address of edges
C $AE10,1 Save counter
C $AE11,3 Get visibility distance
C $AE14,2 Is it max?
C $AE16,2 Skip next comparison if so
C $AE18,1 C = visibility distance
C $AE19,3 Get distance to compare with
C $AE1C,1 Do comparison
C $AE1D,2 Skip edge if too far away (A > C)
C $AE1F,3 Get numbers of face 1 and 2
C $AE22,3 Is one of the faces visible?
C $AE25,2 Skip edge if not
C $AE27,3 Get number of the vertex at the start of the edge
C $AE2A,3 Returns values in DE and A
C $AE2D,2 Skip edge if vertex not visible?
C $AE31,3 Get number of the vertex at the end of the edge
C $AE34,3 Returns values in DE and A
C $AE37,1 Put second value in HL
C $AE38,1 Now HL, DE, A, and C have calculated values
C $AE39,2 Skip edge if vertex not visible?
C $AE3B,7 A7 A6 A5 A4 A3 A2 A1 A0 | CY | C7 C6 C5 C4 C3 C2 C1 C0 -> A0 A7 A6 A5 A4 A3 A2 C7 | C6 | C5 C4 C3 C2 C1 C0 A1 A0
C $AE42,3 Draw the edge
C $AE45,1 Restore edge counter
C $AE46,5 Update IX to point to next edge
C $AE4B,2 Next edge
C $AE4D,2 Restore ship address
c $AE50 Lookup vertex coordinates
R $AE50 A Vertex number
@ $AE50 label=lookup_vertex_coords
C $AE51,1 A *= 2
C $AE52,3 Table of vertex coordinates?
C $AE58,1 A *= 3 (3 bytes per entry)
C $AE5C,5 HL += A
C $AE61,1 Get byte 0
C $AE63,1 Get byte 1
C $AE65,1 Get byte 2
C $AE66,2 Test bit 7 of byte 2
c $AE69 Routine at AE69
c $AE8A Routine at AE8A
c $AECC Routine at AECC
c $AF22 Routine at AF22
c $AF64 Routine at AF64
c $AFA8 Routine at AFA8
c $AFC9 Routine at AFC9
c $AFCD Routine at AFCD
b $AFF0 Data block at AFF0
@ $AFF0 label=data_at_AFF0
B $AFF0,84,8*10,4
c $B044 Draw line
R $B044 HL
R $B044 DE
@ $B044 label=draw_line
c $B2F0 Routine at B2F0
c $B2FE Routine at B2FE
c $B308 Routine at B308
c $B362 Routine at B362
c $B3A7 Routine at B3A7
c $B433 Routine at B433
c $B45C Routine at B45C
c $B460 Routine at B460
N $B464 This entry point is used by the routines at #R$B044 and #R$B45C.
c $B484 Routine at B484
c $B4AD Routine at B4AD
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
N $B5DF This entry point is used by the routines at #R$9CBB and #R$9F82.
c $B618 Routine at B618
c $B63C Routine at B63C
c $B799 Routine at B799
D $B799 Is this some kind of random number generator?
@ $B799 label=rand_no
C $B79B,3 Get old value
C $B79E,1 A=H
C $B79F,1 A=2*H
C $B7A0,1 B=2*H
C $B7A1,1 A=2*H+L
C $B7A2,1 H=2*H+L
C $B7A3,1 L=2*H
C $B7A4,3 Save new value
w $B7AA Data block at B7AA
@ $B7AA label=word_at_B7AA
W $B7AA,2,2
c $B7AC Routine at B7AC
c $B7B4 Routine at B7B4
b $B83D Data block at B83D
@ $B83D label=byte_at_B83D
B $B83D,1,1
b $B83E Data block at B83E
@ $B83E label=ship_init_data
B $B83E,31,8*3,7
b $B85D Data block at B85D
@ $B85D label=orient_vectors_init
B $B85D,9,8,1
b $B866 Byte at B866
B $B866,1,1
c $B867 Routine at B867
R $B867 A Some value, e.g. $79, lower nybble is action, upper nybble is ship
@ $B867 label=ship_action
C $B867,9 Set C to upper nybble shifted down
C $B870,2 Isolate lower nybble in A
C $B872,3 Jump if lower nybble is 0
C $B876,3 Jump if lower nybble was 1
C $B87A,3 Jump if lower nybble was 2
C $B87E,1 Return if lower nybble was 3
C $B880,3 Jump if lower nybble was 4
C $B884,3 Jump if lower nybble was 5
C $B888,3 Jump if lower nybble was 6
C $B88C,3 Jump if lower nybble was 7
C $B890,3 Jump if lower nybble was 8
C $B894,3 Jump if lower nybble was 9
c $B898 Create a ship from a blueprint
R $B898 A Index of ship blueprint
R $B898 IX Address of ship buffer, e.g. current_ship
@ $B898 label=create_ship
C $B898,3 Table of ship blueprints
C $B89B,1 Copy index to B
C $B89C,2 Cap at 63
C $B89E,1 Index x 2
C $B89F,1 Index x 4
C $B8A0,5 Add offset to HL
C $B8A5,1 Skip past first byte
C $B8A6,1 Get LSB of blueprint
C $B8A7,1 Skip past LSB
C $B8A8,1 Get MSB of blueprint
C $B8A9,3 Copy blueprint address into IY
C $B8AC,6 Also store in ship buffer bytes $23-$24
C $B8B2,3 Set DE=ship structure
C $B8B5,3 Number of bytes to copy
C $B8B8,3 Ship init data
C $B8BB,2 Copy $1F bytes to ship buffer
C $B8BD,3 Max energy from blueprint
C $B8C0,3 Copy into ship buffer byte $22 -> energy
C $B8C3,3 Unknown blueprint property
C $B8C9,3 Store in ship buffer byte $21
C $B8CC,3 Unknown blueprint property
C $B8CF,2 Preserve 3 bits
C $B8D1,1 Roll A left
C $B8D2,2 Place bit 7 of C in carry flag
C $B8D4,1 Roll A right, getting bit 7 from C
C $B8D5,3 Store in ship buffer byte $20
C $B8D8,3 Max speed
C $B8DB,2 Divide by 2
C $B8DD,3 Store in ship buffer byte $1B -> speed
C $B8E0,5 Store $7E in ship buffer byte $25
C $B8E5,4 Store $00 in ship buffer byte $26
C $B8F3,3 Random number
C $B8F8,3 x hi ?
C $B8FB,3 Random number
C $B900,3 y hi ?
C $B903,3 Random number
C $B906,3 x lo ?
C $B909,3 Random number
C $B90C,3 y lo ?
C $B90F,3 Random number
C $B913,4 x sign?
C $B918,4 y sign?
c $B91E Routine at B91E
c $B936 Routine at B936
c $B94A Routine at B94A
N $B950 This entry point is used by the routines at #R$B99F and #R$BAE8.
c $B96B Routine at B96B
c $B99F Routine at B99F
c $B9E7 Routine at B9E7
c $BA27 Routine at BA27
c $BA3F Routine at BA3F
c $BA58 Routine at BA58
c $BA83 Routine at BA83
c $BA94 Routine at BA94
c $BAE8 Routine at BAE8
c $BB2F Routine at BB2F
c $BB4D Routine at BB4D
c $BB75 Routine at BB75
@ $BB75 label=create_current_ship
C $BB75,4 Ship structure
C $BB79,1 Upper nybble from action
C $BB7A,5 Add 2, and use as index of blueprint for creating ship
C $BB81,3 Probably not roll counter and pitch counter
C $BB88,3 z_lo = 0
C $BB8B,3 x_lo = 0
C $BB8E,3 x_hi = 0
C $BB91,3 y_lo = 0
C $BB94,3 y_hi = 0
C $BB97,3 z_sign = 0
C $BB9A,3 Speed
C $BBA3,3 z_hi = 2
C $BBA6,3 HL = Ship structure
C $BBA9,3 DE = 9
C $BBAC,2 BC = 9
C $BBAE,1 HL = Orientation vectors
C $BBAF,1 DE = Orientation vectors
C $BBB0,3 Init data for orientation vectors
C $BBB3,6 Skip low byte Copy init data to ship structure High bytes only
c $BBBA Routine at BBBA
c $BBF2 Routine at BBF2
c $BC21 Routine at BC21
c $BC78 Routine at BC78
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
c $BD5F Routine at BD5F
c $BD95 Routine at BD95
c $BDB4 Routine at BDB4
b $BE00 Table of squares
@ $BE00 label=sqr_table
B $BE00,512,8
b $C000 Screen buffer
@ $C000 label=screen_buffer
B $C000,531,8*66,3
c $C213 Lenslock
c $C226 Routine at C226 (lenslock)
c $C230 Routine at C230 (lenslock)
t $C233 Message at C233 (lenslock)
T $C233,22,22
b $C249 Data block at C249 (lenslock)
B $C249,1,1
c $C24A Routine at C24A (lenslock)
c $C25C Routine at C25C (lenslock)
c $C25D Routine at C25D (lenslock)
c $C268 Routine at C268 (lenslock)
c $C2BA Routine at C2BA (lenslock)
c $C2C9 Routine at C2C9 (lenslock)
c $C2EB Routine at C2EB (lenslock)
c $C2F7 Routine at C2F7 (lenslock)
c $C303 Routine at C303 (lenslock)
c $C374 Routine at C374 (lenslock)
c $C37C Routine at C37C (lenslock)
c $C391 Routine at C391 (lenslock)
c $C3A8 Routine at C3A8 (lenslock)
c $C3AE Routine at C3AE (lenslock)
c $C3B8 Routine at C3B8 (lenslock)
c $C3DF Routine at C3DF (lenslock)
c $C3F3 Routine at C3F3 (lenslock)
c $C408 Routine at C408 (lenslock)
c $C414 Routine at C414 (lenslock)
t $C422 Message at C422 (lenslock)
T $C422,29,29
c $C43F Routine at C43F (lenslock)
c $C478 Routine at C478 (lenslock)
c $C4B0 Routine at C4B0 (lenslock)
c $C4D0 Routine at C4D0 (lenslock)
c $C4FF Routine at C4FF (lenslock)
c $C50B Routine at C50B (lenslock)
c $C511 Routine at C511 (lenslock)
c $C519 Routine at C519 (lenslock)
c $C52F Routine at C52F (lenslock)
t $C532 Message at C532 (lenslock)
T $C532,23,23
b $C549 Data block at C549 (lenslock)
B $C549,2,2
c $C54B Routine at C54B (lenslock)
c $C59C Routine at C59C (lenslock)
c $C5EC Routine at C5EC (lenslock)
c $C5F5 Routine at C5F5 (lenslock)
c $C608 Routine at C608 (lenslock)
c $C67D Routine at C67D (lenslock)
c $C688 Routine at C688 (lenslock)
c $C68E Routine at C68E (lenslock)
c $C6A6 Routine at C6A6 (lenslock)
c $C6D7 Routine at C6D7 (lenslock)
c $C6E6 Routine at C6E6 (lenslock)
c $C703 Routine at C703 (lenslock)
c $C71C Routine at C71C (lenslock)
c $C727 Routine at C727 (lenslock)
c $C733 Routine at C733 (lenslock)
b $C774 Data block at C774 (junk)
@ $C774 label=data_at_C774
B $C774,140,8*17,4
b $C800 Control panel graphics #UDGTABLE { #SCR1,0,0,32,8,$c800,$5b00(ctrl_panel) | control panel. } TABLE#
@ $C800 label=ctrl_panel_gfx
B $C800,2048,32
c $D000 Routine at D000
@ $D000 label=jump_table_at_D000
c $D003 Routine at D003
c $D006 Routine at D006
c $D009 Routine at D009
c $D00C Routine at D00C
c $D00F Routine at D00F
c $D012 Routine at D012
c $D015 Routine at D015
c $D018 Routine at D018
c $D033 Routine at D033
c $D036 Routine at D036
c $D039 Jump to print other token
@ $D039 label=jump_to_print_other_token
c $D03C Routine at D03C
s $D03F Unused
S $D03F,3,$03
c $D042 Routine at D042
b $D045 Print x
@ $D045 label=print_x
B $D045,1,1
b $D046 Print y
@ $D046 label=print_y
B $D046,1,1
b $D047 Data block at D047
@ $D047 label=byte_at_D047
B $D047,1,1
c $D048 Jump to print token
@ $D048 label=jump_to_print_token
w $D04B Data block at D04B
@ $D04B label=word_at_D04B
W $D04B,2,2
b $D04D Data block at D04D
B $D04D,1,1
c $D04E Routine at D04E
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
c $D07C Call lenslock
c $D07F After lenslock
C $D07F,11 Copy 2K from C800 to C000
C $D08A,20 Generate table of squares
C $D09E,6 Set interrupt mode
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
B $D0C1,16,8
b $D0D1 Data block at D0D1
@ $D0D1 label=byte_at_D0D1
B $D0D1,1,1
b $D0D2 Data block at D0D2
@ $D0D2 label=byte_at_D0D2
B $D0D2,1,1
b $D0D3 Data block at D0D3
@ $D0D3 label=byte_at_D0D3
B $D0D3,1,1
b $D0D4 Data block at D0D4
B $D0D4,1,1
w $D0D5 Pointer to LD HL,$4000 instruction
@ $D0D5 label=byte_at_D0D4
@ $D0D5 label=ptr_to_ld_hl
W $D0D5,2,2
c $D0D7 Routine at D0D7
c $D0DA Routine at D0DA
c $D0DD Routine at D0DD
c $D0E0 Routine at D0E0
N $D0EA This entry point is used by the routines at #R$9CBB and #R$A4C4.
c $D0F6 Routine at D0F6
c $D138 Routine at D138
N $D162 This entry point is used by the routines at #R$D0F6 and #R$E6AE.
c $D1C7 Routine at D1C7
c $D1E9 Routine at D1E9
c $D21F Routine at D21F
t $D232 Message at D232
T $D232,10,10
b $D23C Data block at D23C
B $D23C,50,8*6,2
b $D26E Data block at D26E
B $D26E,42,8*5,2
c $D298 Routine at D298
w $D2DC Data block at D2DC
@ $D2DC label=word_at_D2DC
W $D2DC,2,2
c $D2DE Routine at D2DE
c $D2E1 Routine at D2E1
c $D32D Routine at D32D
c $D357 Routine at D357
c $D37D Routine at D37D
c $D3CE Routine at D3CE
c $D3D3 Routine at D3D3
c $D3EF Routine at D3EF
c $D3FD Routine at D3FD
b $D420 Data block at D420
@ $D420 label=other_token_flag
B $D420,1,1
c $D421 Print token
@ $D421 label=print_token
C $D421,1 Get pointer to token number from stack
C $D422,1 Get the token number
C $D423,1 Point to next token number
C $D424,1 Save on stack
C $D425,5 Jump if token < 14
C $D42A,5 Jump if 14 <= token < 32
C $D42F,5 Jump if 32 <= token < 96
C $D434,4 Jump if 96 <= token < 128
C $D438,5 Jump if 128 <= token < 160
C $D43D,2 If token >= 160, subtract 160, so now 0 <= token < 96
C $D441,2 If 14 <= token < 32, add 114, so now 128 <= token < 146
@ $D443 label=print_recursive_token
C $D443,3 Get base address of tokens
C $D446,1 D=number of tokens to search through
C $D447,1 Start one higher
C $D448,1 One less token to search through
C $D449,3 Jump if we're now at the right token
C $D44C,3 Search through all memory
C $D44F,3 Look for a zero (end of token)
C $D452,2 And loop
@ $D454 recursive_token_loop
C $D454,1 Get next char code of token
C $D455,2 Return if we're at the end
C $D457,1 Save token address
C $D458,3 Call routine recursively
C $D45B,1 Restore token address
C $D45C,1 Increment token address
C $D45D,2 Loop to process next char code
c $D45F Print other recursive token
@ $D45F label=print_other_recursive_token
C $D45F,3 Get base address of other tokens
C $D462,1 D=number of tokens to search through
C $D463,1 One less token to search through
C $D464,2 Jump if we're now at the right token
C $D466,3 Search through all memory
C $D469,4 Look for a zero (end of token)
C $D46D,3 And loop
c $D470 Print other/extra token
@ $D470 label_print_other_token
C $D471,3 Test flag
C $D477,2 Jump if flag is reset
C $D479,5 Jump if token < 32
C $D47E,4 Jump if 32 <= token < 91
C $D482,5 Jump if 92 <= token < 129
C $D487,4 Jump if 129 <= token < 215
C $D48B,3 Jump if token >= 215
c $D48E Other token loop
@ $D48E recursive_other_token_loop
C $D48E,1 Get next char code of token
C $D48F,2 Return if we're at the end
C $D491,1 Save token address
C $D492,3 Call routine recursively
C $D495,1 Restore token address
C $D496,1 Increment token address
C $D497,2 Loop to process next char code
c $D499 Print ASCII character
@ $D499 label=print_ascii_char
C $D499,2 Char A?
C $D49B,2 Jump if < A
C $D49D,2 Char [ (after Z)?
C $D49F,2 Jump if > Z
C $D4A1,1 Save ASCII code
C $D4CC,1 Restore ASCII code
C $D4CD,2 Add 32
C $D4CF,1 Save new code
@ $D4E1 label=inc_print_char
C $D4E1,1 Save ASCII code
C $D4E2,3 X coord
C $D4E5,1 Increment x
C $D4E6,1 Get new x
C $D4E7,4 Jump if not at end of row
C $D4EB,3 Set x to 1
C $D4EE,3 Increment y
@ $D4F1 label=print_char
C $D4F1,1 ASCII code
C $D4F2,3 Font base address
C $D4F5,2 Code - 32
C $D4F8,2 BC = 0A
C $D4FA,2 * 2
C $D4FE,2 * 4
C $D502,2 * 8
C $D506,1 Add to font base address
C $D507,1 Push character source address
@ $D508 label=ld_hl_4000_instr
C $D508,3 Self-modified (screen or buffer)
C $D50B,3 Y coord
C $D50E,5 Jump if >= 16
C $D513,5 Jump if >= 8
C $D518,1 Y coord within 3rd
C $D51C,2 Bottom 3rd of screen
C $D51E,1 Y coord within 3rd
C $D51F,3 Offset to bottom 3rd
C $D522,1 Add offset to destination
C $D526,2 Middle 3rd of screen
C $D528,1 Y coord within 3rd
C $D529,3 Offset to middle 3rd
C $D52C,1 Add offset to destination
C $D52D,2 BC = 00000rrr00000000
C $D52F,2 >> 1
C $D533,2 >> 2
C $D537,2 >> 3
C $D539,2 BC = 00000000rrr00000
C $D53B,1 HL = xxxss000rrr00000
C $D53E,3 X coord
C $D542,1 HL = xxxss000rrrccccc
C $D543,1 DE = source
C $D544,2 8 bytes in character
C $D546,1 Get source byte
C $D547,1 Get destination byte
C $D548,1 XOR source with destination
C $D549,1 Write destination byte
C $D54A,1 Next pixel line
C $D54B,1 Next source byte
C $D54C,2 Repeat 8 times
c $D54F Routine at D54F
c $D55C Routine at D55C
N $D55F This entry point is used by the routines at #R$D61D, #R$EB63 and #R$EB7C. HL Screen address
@ $D55F label=draw_h_line
c $D568 Routine at D568
c $D595 Routine at D595
@ $D595 label=other_token_gt_214
c $D59C Print two-letter token
@ $D59C label=print_two_letter_token
C $D59C,2 Offset from 128
C $D59E,3 Two letter tokens base address
C $D5A1,1 * 2
C $D5A2,3 DE=0A
C $D5A5,1 Add to base address
C $D5A6,1 Get char
C $D5A7,1 Push char address
C $D5A8,3 Print first char
C $D5AB,1 Pop char address
C $D5AC,1 Point to next char
C $D5AD,1 Get char
C $D5AE,2 Question mark?
C $D5B0,1 Then return
C $D5B1,3 Print second char
c $D5B4 Routine at D5B4
@ $D5B4 label=other_token_92_to_128
c $D5E1 Routine at D5E1
b $D5F5 Data block at D5F5
B $D5F5,40,8
c $D61D Clear screen with border
D $D61D Clear the screen and draw a one pixel border
@ $D61D label=clear_screen_border
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
c $D75A Routine at D75A
c $D776 Routine at D776
c $D783 Routine at D783
c $D7A1 Routine at D7A1
c $D7B0 Routine at D7B0
@ $D7B0 label=other_token_lt_32
c $D7B5 Routine at D7B5
@ $D7B5 label=print_control_code
w $D7C3 Data block at D7C3
@ $D7C3 label=jump_table_at_D7C3
W $D7C3,92,2
c $D81F Routine at D81F
c $D822 Routine at D822
c $D82E Routine at D82E
c $D833 Routine at D833
c $D837 Routine at D837
c $D84B Routine at D84B
c $D857 Routine at D857
c $D86A Routine at D86A
c $D872 Routine at D872
c $D87B Routine at D87B
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
c $D8EF Routine at D8EF
c $D8F3 Routine at D8F3
c $D8F8 Routine at D8F8
b $D8FF Data block at D8FF
B $D8FF,11,8,3
c $D90A Routine at D90A
c $D946 Routine at D946
c $DA16 Routine at DA16
c $DA25 Routine at DA25
c $DA49 Routine at DA49
c $DA53 Routine at DA53
c $DA5A Routine at DA5A
b $DA72 Data block at DA72
B $DA72,8,8
c $DA7A Routine at DA7A
c $DAB4 Routine at DAB4
c $DAD7 Routine at DAD7
c $DAEF Routine at DAEF
c $DB62 Routine at DB62
c $DB91 Routine at DB91
b $DBA1 Data block at DBA1
@ $DBA1 label=byte_at_DBA1
B $DBA1,1,1
c $DBA2 Routine at DBA2
c $DC29 Routine at DC29
c $DC83 Routine at DC83
c $DC8E Routine at DC8E
c $DDE3 Routine at DDE3
N $DE4C This entry point is used by the routines at #R$DC8E and #R$DE67.
c $DE67 Routine at DE67
N $DE97 This entry point is used by the routines at #R$D0E0 and #R$D1E9.
c $DEA2 Routine at DEA2
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
c $DF4C Routine at DF4C
w $DF5E Data block at DF5E
@ $DF5E label=word_at_DF5E
W $DF5E,2,2
c $DF60 Routine at DF60
c $DFC4 Routine at DFC4
c $DFCE Routine at DFCE
c $DFEA Routine at DFEA
c $DFF2 Routine at DFF2
c $E009 Routine at E009
c $E01C Routine at E01C
c $E080 Routine at E080
c $E08C Routine at E08C
c $E107 Routine at E107
c $E125 Routine at E125
c $E12E Routine at E12E
c $E136 Routine at E136
N $E13C This entry point is used by the routines at #R$E125 and #R$E12E.
c $E142 Routine at E142
c $E148 Routine at E148
b $E1BB Data block at E1BB
@ $E1BB label=data_at_1EBB
B $E1BB,45,8*5,5
c $E1E8 Routine at E1E8
c $E1F7 Routine at E1F7
c $E205 Routine at E205
c $E212 Routine at E212
c $E268 Routine at E268
c $E292 Routine at E292
c $E297 Routine at E297
c $E29E Routine at E29E
c $E2A6 Routine at E2A6
C $E2AB,3 Set something to 1
C $E2AE,3 Set x to zero
@ $E2B1 label=increment_y
C $E2B1,3 Get y
C $E2B4,1 Add one
c $E2B7 Routine at E2B7
@ $E2B7 label=set_x_to_zero
C $E2B7,4 Set x to 0
c $E2BC Routine at E2BC
N $E2C0 This entry point is used by the routines at #R$E973 and #R$F068.
C $E2C0,3 Get x
C $E2C3,2 End of row?
C $E2C5,1 Return if not
c $E2C8 Routine at E2C8
@ $E2C8 label=save_and_wrap_y
C $E2C8,3 Save y
C $E2CB,2 Last row?
C $E2CD,1 Return of not
C $E2CE,5 Set y to 1
c $E2D5 Routine at E2D5
c $E2F8 Routine at E2F8
c $E306 Routine at E306
c $E311 Routine at E311
c $E31E Routine at E31E
c $E34C Routine at E34C
c $E35A Routine at E35A
c $E35E Routine at E35E
c $E364 Routine at E364
c $E36B Routine at E36B
c $E38D Routine at E38D
b $E394 Data block at E394
B $E394,4,4
c $E398 Routine at E398
b $E3C9 Data block at E3C9
B $E3C9,3,3
c $E3CC Routine at E3CC
c $E3E9 Routine at E3E9
c $E46F Routine at E46F
c $E4D4 Routine at E4D4
b $E52B Data block at E52B
B $E52B,3,3
c $E52E Routine at E52E
c $E611 Routine at E611
c $E619 Routine at E619
c $E621 Routine at E621
c $E63F Routine at E63F
c $E644 Routine at E644
c $E647 Routine at E647
c $E6A3 Routine at E6A3
b $E6AD Data block at E6AD
B $E6AD,1,1
c $E6AE Routine at E6AE
b $E6F8 Data block at E6F8
B $E6F8,2,2
c $E6FA Routine at E6FA
c $E707 Routine at E707
c $E76E Routine at E76E
c $E776 Routine at E776
c $E7CF Routine at E7CF
c $E7DA Routine at E7DA
c $E7DB Routine at E7DB
c $E818 Routine at E818
N $E81C This entry point is used by the routines at #R$E7DB and #R$E973.
c $E832 Routine at E832
c $E83C Routine at E83C
c $E85D Routine at E85D
c $E87E Routine at E87E
s $E8A4 Unused
S $E8A4,10,$0A
c $E8AE Routine at E8AE
b $E8D8 Data block at E8D8
@ $E8D8 label=byte_at_E8D8
B $E8D8,1,1
c $E8D9 Routine at E8D9
c $E8E5 Routine at E8E5
c $E8EA Routine at E8EA
c $E935 Routine at E935
c $E962 Routine at E962
c $E973 Routine at E973
c $EB2D Routine at EB2D
c $EB2F Routine at EB2F
c $EB38 Routine at EB38
c $EB3E Routine at EB3E
c $EB43 Routine at EB43
c $EB47 Routine at EB47
b $EB5E Data block at EB5E
@ $EB5E label=data_at_EB5E
B $EB5E,5,5
c $EB63 Routine at EB63
c $EB7C Routine at EB7C
c $EBEE Routine at EBEE
b $EC11 Data block at EC11
@ $EC11 label=byte_at_EC11
B $EC11,1,1
w $EC12 Data block at EC12
@ $EC12 label=word_at_EC12
W $EC12,2,2
c $EC14 Routine at EC14
c $EC3B Routine at EC3B
c $EC3D Routine at EC3D
s $EC40 Unused
@ $EC40 label=data_at_EC40
S $EC40,24,$18
c $EC58 Routine at EC58
c $ECD2 Routine at ECD2
c $ECFD Routine at ECFD
c $ED27 Routine at ED27
s $ED75 Unused
S $ED75,2,$02
b $ED77 Data block at ED77
@ $ED77 label=byte_at_ED77
B $ED77,1,1
c $ED78 Routine at ED78
c $EDDF Routine at EDDF
c $EE9D Routine at EE9D
c $EEA2 Routine at EEA2
c $EEA8 Routine at EEA8
c $EECE Routine at EECE
c $EF21 Routine at EF21
c $EF37 Routine at EF37
c $EF48 Routine at EF48
b $EF86 Data block at EF86
@ $EF86 label=byte_at_EF86
B $EF86,1,1
c $EF87 Routine at EF87
c $F068 Routine at F068
N $F072 This entry point is used by the routines at #R$EF87 and #R$F07A.
c $F07A Routine at F07A
c $F0A1 Routine at F0A1
b $F117 Data block at F117
B $F117,3,3
> $F11A ; Recursive tokens
w $F11A Tokens pointer
@ $F11A label=tokens_ptr
W $F11A,2,2
w $F11C Other/extra tokens pointer
@ $F11C label=other_tokens_ptr
W $F11C,2,2
t $F11E Standard recursive tokens Token $00
@ $F11E label=tokens
T $F11E,3,1:n2
t $F121 Token $01
T $F121,6,3:n1:1:n1
t $F127 Token $02
T $F127,9,2:n1:3:n1:1:n1
t $F130 Token $03
T $F130,8,n1:1:n1:1:n4
t $F138 Token $04
T $F138,9,n3:2:n1:1:n2
t $F141 Token $05
T $F141,6,3:n1:1:n1
t $F147 Token $06
T $F147,4,1:n3
t $F14B Token $07
T $F14B,11,n1:1:n1:5:n1:1:n1
t $F156 Token $08
T $F156,7,n1:1:n1:1:n3
t $F15D Token $09
T $F15D,11,2:n1:5:n1:1:n1
t $F168 Token $0A
T $F168,5,n1:3:n1
t $F16D Token $0B
T $F16D,6,1:n3:1:n1
t $F173 Token $0C
T $F173,5,2:n1:1:n1
t $F178 Token $0D
T $F178,6,n2:3:n1
t $F17E Token $0E
T $F17E,5,4:n1
t $F183 Token $0F
T $F183,7,6:n1
t $F18A Token $10
T $F18A,6,n3:2:n1
t $F190 Token $11
T $F190,6,n2:3:n1
t $F196 Token $12
T $F196,6,4:n2
t $F19C Token $13
T $F19C,7,3:n1:1:n2
t $F1A3 Token $14
T $F1A3,7,n1:2:n4
t $F1AA Token $15
T $F1AA,7,n1:3:n1:1:n1
t $F1B1 Token $16
T $F1B1,9,1:n1:1:n2:3:n1
t $F1BA Token $17
T $F1BA,9,5:n1:2:n1
t $F1C3 Token $18
T $F1C3,11,1:n1:1:n2:2:n2:1:n1
t $F1CE Token $19
T $F1CE,5,4:n1
t $F1D3 Token $1A
T $F1D3,7,1:n1:4:n1
t $F1DA Token $1B
T $F1DA,5,1:n1:1:n2
t $F1DF Token $1C
T $F1DF,12,3:n1:4:n1:1:n2
t $F1EB Token $1D
T $F1EB,9,3:n1:3:n2
t $F1F4 Token $1E
T $F1F4,10,n1:2:n1:2:n4
t $F1FE Token $1F
T $F1FE,5,n5
t $F203 Token $20
T $F203,7,n1:4:n2
t $F20A Token $21
T $F20A,6,n1:1:n1:2:n1
t $F210 Token $22
T $F210,27,n1:6:n1:3:n1:6:n1:4:n1:2:n1
t $F22B Token $23
T $F22B,20,9:n1:1:n2:3:n2:1:n1
t $F23F Token $24
T $F23F,5,4:n1
t $F244 Token $25
T $F244,6,1:n2:1:n2
t $F24A Token $26
T $F24A,6,n1:1:n4
t $F250 Token $27
T $F250,9,1:n2:4:n2
t $F259 Token $28
T $F259,8,6:n2
t $F261 Token $29
T $F261,4,1:n3
t $F265 Token $2A
T $F265,3,2:n1
t $F268 Token $2B
T $F268,6,n1:4:n1
t $F26E Token $2C
T $F26E,4,2:n2
t $F272 Token $2D
T $F272,6,2:n1:2:n1
t $F278 Token $2E
T $F278,5,1:n1:2:n1
t $F27D Token $2F
T $F27D,5,4:n1
t $F282 Token $30
T $F282,6,n1:1:n1:1:n2
t $F288 Token $31
T $F288,9,n2:3:n2:1:n1
t $F291 Token $32
T $F291,5,1:n2:1:n1
t $F296 Token $33
T $F296,9,2:n2:2:n3
t $F29F Token $34
T $F29F,7,4:n3
t $F2A6 Token $35
T $F2A6,8,1:n1:2:n1:2:n1
t $F2AE Token $36
T $F2AE,7,n1:3:n1:1:n1
t $F2B5 Token $37
T $F2B5,7,n1:2:n2:1:n1
t $F2BC Token $38
T $F2BC,7,6:n1
t $F2C3 Token $39
T $F2C3,7,2:n2:2:n1
t $F2CA Token $3A
T $F2CA,5,4:n1
t $F2CF Token $3B
T $F2CF,6,1:n3:1:n1
t $F2D5 Token $3C
T $F2D5,5,4:n1
t $F2DA Token $3D
T $F2DA,7,2:n2:2:n1
t $F2E1 Token $3E
T $F2E1,7,n1:2:n4
t $F2E8 Token $3F
T $F2E8,7,n1:1:n1:1:n1:1:n1
t $F2EF Token $40
T $F2EF,11,10:n1
t $F2FA Token $41
T $F2FA,4,3:n1
t $F2FE Token $42
T $F2FE,4,1:n3
t $F302 Token $43
T $F302,5,2:n3
t $F307 Token $44
T $F307,4,1:n3
t $F30B Token $45
T $F30B,4,1:n3
t $F30F Token $46
T $F30F,3,1:n2
t $F312 Token $47
T $F312,6,2:n1:2:n1
t $F318 Token $48
T $F318,5,4:n1
t $F31D Token $49
T $F31D,5,1:n1:2:n1
t $F322 Token $4A
T $F322,2,n2
t $F324 Token $4B
T $F324,6,5:n1
t $F32A Token $4C
T $F32A,8,6:n2
t $F332 Token $4D
T $F332,5,1:n1:1:n2
t $F337 Token $4E
T $F337,4,1:n1:1:n1
t $F33B Token $4F
T $F33B,3,1:n2
t $F33E Token $50
T $F33E,6,5:n1
t $F344 Token $51
T $F344,5,n1:1:n1:1:n1
t $F349 Token $52
T $F349,4,1:n1:1:n1
t $F34D Token $53
T $F34D,6,2:n1:2:n1
t $F353 Token $54
T $F353,6,3:n3
t $F359 Token $55
T $F359,4,n1:2:n1
t $F35D Token $56
T $F35D,8,3:n1:3:n1
t $F365 Token $57
T $F365,6,3:n1:1:n1
t $F36B Token $58
T $F36B,6,n1:4:n1
t $F371 Token $59
T $F371,5,n5
t $F376 Token $5A
T $F376,4,3:n1
t $F37A Token $5B
T $F37A,6,n1:1:n1:1:n2
t $F380 Token $5C
T $F380,8,2:n1:1:n1:1:n2
t $F388 Token $5D
T $F388,3,2:n1
t $F38B Token $5E
T $F38B,24,n2:2:n3:4:n1:1:n1:2:n1:3:n4
t $F3A3 Token $5F
T $F3A3,5,2:n1:1:n1
t $F3A8 Token $60
T $F3A8,3,n3
t $F3AB Token $61
T $F3AB,4,n1:2:n1
t $F3AF Token $62
T $F3AF,5,n1:3:n1
t $F3B4 Token $63
T $F3B4,5,4:n1
t $F3B9 Token $64
T $F3B9,5,1:n2:1:n1
t $F3BE Token $65
T $F3BE,6,3:n1:1:n1
t $F3C4 Token $66
T $F3C4,7,5:n2
t $F3CB Token $67
T $F3CB,5,n1:2:n2
t $F3D0 Token $68
T $F3D0,5,4:n1
t $F3D5 Token $69
T $F3D5,6,1:n1:2:n2
t $F3DB Token $6A
T $F3DB,7,n2:4:n1
t $F3E2 Token $6B
T $F3E2,8,6:n2
t $F3EA Token $6C
T $F3EA,4,3:n1
t $F3EE Token $6D
T $F3EE,4,3:n1
t $F3F2 Token $6E
T $F3F2,9,8:n1
t $F3FB Token $6F
T $F3FB,10,n1:8:n1
t $F405 Token $70
T $F405,6,5:n1
t $F40B Token $71
T $F40B,3,1:n2
t $F40E Token $72
T $F40E,9,4:n1:2:n2
t $F417 Token $73
T $F417,4,2:n2
t $F41B Token $74
T $F41B,9,5:n1:1:n2
t $F424 Token $75
T $F424,6,1:n2:1:n2
t $F42A Token $76
T $F42A,4,n4
t $F42E Token $77
T $F42E,7,n3:3:n1
t $F435 Token $78
T $F435,6,n2:3:n1
t $F43B Token $79
T $F43B,7,2:n1:1:n1:1:n1
t $F442 Token $7A
T $F442,5,4:n1
t $F447 Token $7B
T $F447,3,1:n2
t $F44A Token $7C
T $F44A,14,5:n1:6:n2
t $F458 Token $7D
T $F458,19,n2:1:n2:2:n1:1:n1:2:n3:1:n3
t $F46B Token $7E
T $F46B,4,1:n1:1:n1
t $F46F Token $7F
T $F46F,3,2:n1
t $F472 Token $80
T $F472,19,n1:6:n1:2:n1:1:n1:3:n1:1:n1
t $F485 Token $81
T $F485,4,1:n1:1:n1
t $F489 Token $82
T $F489,8,n2:1:n1:1:n1:1:n1
t $F491 Token $83
T $F491,4,1:n3
t $F495 Token $84
T $F495,7,3:n1:1:n2
t $F49C Token $85
T $F49C,7,4:n3
t $F4A3 Token $86
T $F4A3,7,1:n1:1:n1:2:n1
t $F4AA Token $87
T $F4AA,8,2:n1:3:n2
t $F4B2 Token $88
T $F4B2,2,n2
t $F4B4 Token $89
T $F4B4,2,n2
t $F4B6 Token $8A
T $F4B6,7,3:n1:1:n2
t $F4BD Token $8B
T $F4BD,7,n1:3:n1:1:n1
t $F4C4 Token $8C
T $F4C4,6,1:n5
t $F4CA Token $8D
T $F4CA,7,6:n1
t $F4D1 Token $8E
T $F4D1,20,19:n1
t $F4E5 Token $8F
T $F4E5,6,1:n1:1:n1:1:n1
t $F4EB Token $90
T $F4EB,7,2:n1:3:n1
t $F4F2 Token $91
T $F4F2,1,n1
t $F4F3 Token $92
T $F4F3,1,n1
t $F4F4 Token $93
T $F4F4,1,n1
t $F4F5 Other/extra tokens Token $00
@ $F4F5 label=other_tokens
T $F4F5,42,n2:4:n1:5:n6:3:n3:2:n1:1:n1:1:n5:5:n2
t $F51F Token $01
T $F51F,25,n2:8:n2:2:n1:3:n1:5:n1
t $F538 Token $02
T $F538,13,5:n1:2:n2:1:n2
t $F545 Token $03
T $F545,13,n2:1:n1:2:n1:2:n1:2:n1
t $F552 Token $04
T $F552,6,n1:1:n1:1:n2
t $F558 Token $05
T $F558,5,2:n3
t $F55D Token $06
T $F55D,12,1:n1:3:n1:1:n1:2:n2
t $F569 Token $07
T $F569,6,n1:3:n2
t $F56F Token $08
T $F56F,10,7:n1:1:n1
t $F579 Token $09
T $F579,86,n2:4:n1:3:n2:4:n1:2:n1:2:n2:3:n1:1:n1:5:n1:3:n1:2:n1:1:n1:9:n1:2:n2:4:n2,1:n4:2:n1:1:n1:2:n1:3:n2:1:n2
t $F5CF Token $0A
T $F5CF,15,n1:7:n1:1:n1:2:n2
t $F5DE Token $0B
T $F5DE,6,n1:2:n3
t $F5E4 Token $0C
T $F5E4,7,4:n1:1:n1
t $F5EB Token $0D
T $F5EB,6,n2:1:n3
t $F5F1 Token $0E
T $F5F1,32,n2:3:n2:2:n1:4:n1:2:n5:2:n1:2:n1:3:n1
t $F611 Token $0F
T $F611,5,1:n2:1:n1
t $F616 Token $10
T $F616,5,n1:1:n3
t $F61B Token $11
T $F61B,10,6:n1:2:n1
t $F625 Token $12
T $F625,6,4:n2
t $F62B Token $13
T $F62B,4,n1:1:n2
t $F62F Token $14
T $F62F,4,n1:2:n1
t $F633 Token $15
T $F633,6,1:n1:3:n1
t $F639 Token $16
T $F639,4,2:n2
t $F63D Token $17
T $F63D,8,n1:2:n2:2:n1
t $F645 Token $18
T $F645,1,n1
t $F646 Token $19
T $F646,2,n2
t $F648 Token $1A
T $F648,2,1:n1
t $F64A Token $1B
T $F64A,4,1:n3
t $F64E Token $1C
T $F64E,4,2:n2
t $F652 Token $1D
T $F652,4,1:n1:1:n1
t $F656 Token $1E
T $F656,12,n1:3:n1:1:n1:1:n2:1:n1
t $F662 Token $1F
T $F662,3,n1:1:n1
t $F665 Token $20
T $F665,2,1:n1
t $F667 Token $21
T $F667,8,n1:2:n2:2:n1
t $F66F Token $22
T $F66F,5,1:n2:1:n1
t $F674 Token $23
T $F674,7,4:n1:1:n1
t $F67B Token $24
T $F67B,7,1:n1:1:n2:1:n1
t $F682 Token $25
T $F682,10,n1:1:n1:1:n4:1:n1
t $F68C Token $26
T $F68C,9,n2:1:n1:4:n1
t $F695 Token $27
T $F695,8,n2:2:n1:2:n1
t $F69D Token $28
T $F69D,12,6:n1:2:n1:1:n1
t $F6A9 Token $29
T $F6A9,7,1:n1:2:n1:1:n1
t $F6B0 Token $2A
T $F6B0,6,2:n1:2:n1
t $F6B6 Token $2B
T $F6B6,6,n1:4:n1
t $F6BC Token $2C
T $F6BC,2,1:n1
t $F6BE Token $2D
T $F6BE,6,1:n1:1:n3
t $F6C4 Token $2E
T $F6C4,4,1:n1:1:n1
t $F6C8 Token $2F
T $F6C8,3,1:n2
t $F6CB Token $30
T $F6CB,4,n1:1:n2
t $F6CF Token $31
T $F6CF,2,n2
t $F6D1 Token $32
T $F6D1,4,n1:1:n2
t $F6D5 Token $33
T $F6D5,6,1:n1:2:n2
t $F6DB Token $34
T $F6DB,6,n1:3:n2
t $F6E1 Token $35
T $F6E1,5,n1:2:n2
t $F6E6 Token $36
T $F6E6,7,2:n1:2:n2
t $F6ED Token $37
T $F6ED,10,5:n1:2:n2
t $F6F7 Token $38
T $F6F7,7,4:n1:1:n1
t $F6FE Token $39
T $F6FE,9,4:n2:1:n2
t $F707 Token $3A
T $F707,10,3:n3:2:n2
t $F711 Token $3B
T $F711,13,2:n2:4:n1:1:n1:1:n1
t $F71E Token $3C
T $F71E,5,n1:2:n2
t $F723 Token $3D
T $F723,7,n2:3:n2
t $F72A Token $3E
T $F72A,9,n2:6:n1
t $F733 Token $3F
T $F733,4,n1:1:n2
t $F737 Token $40
T $F737,5,n1:3:n1
t $F73C Token $41
T $F73C,5,3:n2
t $F741 Token $42
T $F741,6,1:n1:3:n1
t $F747 Token $43
T $F747,4,1:n3
t $F74B Token $44
T $F74B,4,1:n1:1:n1
t $F74F Token $45
T $F74F,11,1:n1:1:n1:2:n3:1:n1
t $F75A Token $46
T $F75A,2,n2
t $F75C Token $47
T $F75C,4,n1:1:n2
t $F760 Token $48
T $F760,4,n1:1:n2
t $F764 Token $49
T $F764,4,n1:2:n1
t $F768 Token $4A
T $F768,4,2:n2
t $F76C Token $4B
T $F76C,6,1:n1:1:n3
t $F772 Token $4C
T $F772,6,3:n1:1:n1
t $F778 Token $4D
T $F778,6,5:n1
t $F77E Token $4E
T $F77E,6,1:n1:2:n2
t $F784 Token $4F
T $F784,7,3:n2:1:n1
t $F78B Token $50
T $F78B,5,n3:1:n1
t $F790 Token $51
T $F790,11,10:n1
t $F79B Token $52
T $F79B,7,4:n1:1:n1
t $F7A2 Token $53
T $F7A2,8,1:n1:5:n1
t $F7AA Token $54
T $F7AA,4,n1:1:n2
t $F7AE Token $55
T $F7AE,2,n2
t $F7B0 Token $56
T $F7B0,5,n2:1:n2
t $F7B5 Token $57
T $F7B5,5,n2:1:n2
t $F7BA Token $58
T $F7BA,3,n3
t $F7BD Token $59
T $F7BD,3,n3
t $F7C0 Token $5A
T $F7C0,26,n2:3:n1:2:n2:3:n1:2:n1:2:n2:1:n1:1:n2
t $F7DA Token $5B
T $F7DA,2,n2
t $F7DC Token $5C
T $F7DC,6,1:n1:1:n3
t $F7E2 Token $5D
T $F7E2,1,n1
t $F7E3 Token $5E
T $F7E3,1,n1
t $F7E4 Token $5F
T $F7E4,11,4:n2:2:n3
t $F7EF Token $60
T $F7EF,6,2:n2:1:n1
t $F7F5 Token $61
T $F7F5,6,5:n1
t $F7FB Token $62
T $F7FB,7,3:n1:1:n2
t $F802 Token $63
T $F802,9,1:n1:4:n1:1:n1
t $F80B Token $64
T $F80B,2,n2
t $F80D Token $65
T $F80D,2,n2
t $F80F Token $66
T $F80F,4,1:n3
t $F813 Token $67
T $F813,7,1:n1:1:n1:1:n2
t $F81A Token $68
T $F81A,5,4:n1
t $F81F Token $69
T $F81F,1,n1
t $F820 Token $6A
T $F820,1,n1
t $F821 Token $6B
T $F821,1,n1
t $F822 Token $6C
T $F822,1,n1
t $F823 Token $6D
T $F823,1,n1
t $F824 Token $6E
T $F824,14,6:n3:2:n1:1:n1
t $F832 Token $6F
T $F832,7,3:n1:2:n1
t $F839 Token $70
T $F839,8,n1:1:n1:1:n4
t $F841 Token $71
T $F841,5,n2:2:n1
t $F846 Token $72
T $F846,4,2:n2
t $F84A Token $73
T $F84A,4,2:n2
t $F84E Token $74
T $F84E,6,1:n2:2:n1
t $F854 Token $75
T $F854,3,n1:1:n1
t $F857 Token $76
T $F857,2,n2
t $F859 Token $77
T $F859,4,2:n2
t $F85D Token $78
T $F85D,13,1:n1:9:n2
t $F86A Token $79
T $F86A,4,3:n1
t $F86E Token $7A
T $F86E,5,3:n2
t $F873 Token $7B
T $F873,5,4:n1
t $F878 Token $7C
T $F878,8,6:n2
t $F880 Token $7D
T $F880,4,1:n3
t $F884 Token $7E
T $F884,3,n3
t $F887 Token $7F
T $F887,9,3:n3:1:n2
t $F890 Token $80
T $F890,8,3:n2:2:n1
t $F898 Token $81
T $F898,6,5:n1
t $F89E Token $82
T $F89E,6,5:n1
t $F8A4 Token $83
T $F8A4,6,1:n1:2:n2
t $F8AA Token $84
T $F8AA,5,n2:1:n2
t $F8AF Token $85
T $F8AF,7,2:n1:2:n2
t $F8B6 Token $86
T $F8B6,6,1:n3:1:n1
t $F8BC Token $87
T $F8BC,9,6:n3
t $F8C5 Token $88
T $F8C5,3,3
t $F8C8 Token $89
T $F8C8,7,n2:2:n3
t $F8CF Token $8A
T $F8CF,8,1:n1:5:n1
t $F8D7 Token $8B
T $F8D7,2,n2
t $F8D9 Token $8C
T $F8D9,9,5:n1:2:n1
t $F8E2 Token $8D
T $F8E2,4,n2:1:n1
t $F8E6 Token $8E
T $F8E6,7,6:n1
t $F8ED Token $8F
T $F8ED,8,n1:5:n2
t $F8F5 Token $90
T $F8F5,6,5:n1
t $F8FB Token $91
T $F8FB,5,2:n3
t $F900 Token $92
T $F900,5,1:n1:2:n1
t $F905 Token $93
T $F905,4,n1:2:n1
t $F909 Token $94
T $F909,4,n2:1:n1
t $F90D Token $95
T $F90D,6,n1:2:n3
t $F913 Token $96
T $F913,5,n5
t $F918 Token $97
T $F918,4,n2:1:n1
t $F91C Token $98
T $F91C,3,2:n1
t $F91F Token $99
T $F91F,3,1:n2
t $F922 Token $9A
T $F922,9,n1:4:n1:1:n2
t $F92B Token $9B
T $F92B,2,1:n1
t $F92D Token $9C
T $F92D,7,1:n1:3:n2
t $F934 Token $9D
T $F934,5,n1:2:n2
t $F939 Token $9E
T $F939,4,1:n1:1:n1
t $F93D Token $9F
T $F93D,6,n1:3:n2
t $F943 Token $A0
T $F943,2,1:n1
t $F945 Token $A1
T $F945,2,1:n1
t $F947 Token $A2
T $F947,5,4:n1
t $F94C Token $A3
T $F94C,2,n2
t $F94E Token $A4
T $F94E,2,1:n1
t $F950 Token $A5
T $F950,6,n1:2:n1:1:n1
t $F956 Token $A6
T $F956,8,2:n1:1:n4
t $F95E Token $A7
T $F95E,9,2:n1:5:n1
t $F967 Token $A8
T $F967,6,n1:1:n4
t $F96D Token $A9
T $F96D,2,1:n1
t $F96F Token $AA
T $F96F,5,1:n1:1:n2
t $F974 Token $AB
T $F974,7,6:n1
t $F97B Token $AC
T $F97B,4,2:n2
t $F97F Token $AD
T $F97F,4,n4
t $F983 Token $AE
T $F983,7,5:n2
t $F98A Token $AF
T $F98A,4,n1:2:n1
t $F98E Token $B0
T $F98E,4,n4
t $F992 Token $B1
T $F992,4,1:n3
t $F996 Token $B2
T $F996,5,1:n1:2:n1
t $F99B Token $B3
T $F99B,3,1:n2
t $F99E Token $B4
T $F99E,9,1:n1:1:n1:1:n2:1:n1
t $F9A7 Token $B5
T $F9A7,10,1:n1:3:n1:3:n1
t $F9B1 Token $B6
T $F9B1,8,1:n1:1:n1:3:n1
t $F9B9 Token $B7
T $F9B9,11,2:n1:2:n4:1:n1
t $F9C4 Token $B8
T $F9C4,8,5:n3
t $F9CC Token $B9
T $F9CC,5,2:n1:1:n1
t $F9D1 Token $BA
T $F9D1,6,5:n1
t $F9D7 Token $BB
T $F9D7,5,1:n2:1:n1
t $F9DC Token $BC
T $F9DC,4,1:n1:1:n1
t $F9E0 Token $BD
T $F9E0,5,n1:2:n2
t $F9E5 Token $BE
T $F9E5,2,n2
t $F9E7 Token $BF
T $F9E7,4,n1:1:n2
t $F9EB Token $C0
T $F9EB,4,n1:2:n1
t $F9EF Token $C1
T $F9EF,8,n1:2:n1:1:n1:1:n1
t $F9F7 Token $C2
T $F9F7,2,n2
t $F9F9 Token $C3
T $F9F9,4,n1:2:n1
t $F9FD Token $C4
T $F9FD,3,n1:1:n1
t $FA00 Token $C5
T $FA00,7,2:n1:2:n2
t $FA07 Token $C6
T $FA07,3,2:n1
t $FA0A Token $C7
T $FA0A,5,1:n1:2:n1
t $FA0F Token $C8
T $FA0F,7,6:n1
t $FA16 Token $C9
T $FA16,5,4:n1
t $FA1B Token $CA
T $FA1B,4,1:n1:1:n1
t $FA1F Token $CB
T $FA1F,5,3:n2
t $FA24 Token $CC
T $FA24,5,1:n1:1:n2
t $FA29 Token $CD
T $FA29,5,2:n3
t $FA2E Token $CE
T $FA2E,10,1:n1:6:n2
t $FA38 Token $CF
T $FA38,11,n2:1:n1:5:n2
t $FA43 Token $D0
T $FA43,4,3:n1
t $FA47 Token $D1
T $FA47,3,2:n1
t $FA4A Token $D2
T $FA4A,6,5:n1
t $FA50 Token $D3
T $FA50,3,n3
t $FA53 Token $D4
T $FA53,7,1:n3:1:n2
t $FA5A Token $D5
T $FA5A,3,2:n1
t $FA5D Token $D6
T $FA5D,9,1:n1:3:n1:1:n2
t $FA66 Token $D7
T $FA66,9,5:n1:1:n2
t $FA6F Token $D8
T $FA6F,1,n1
t $FA70 Token $D9
T $FA70,3,2:n1
t $FA73 Token $DA
T $FA73,3,2:n1
t $FA76 Token $DB
T $FA76,3,2:n1
t $FA79 Token $DC
T $FA79,3,2:n1
t $FA7C Token $DD
T $FA7C,1,n1
t $FA7D Token $DE
T $FA7D,22,n5:2:n2:1:n1:1:n1:4:n1:1:n3
t $FA93 Token $DF
T $FA93,59,n1:1:n1:1:n1:4:n1:4:n2:4:n1:1:n2:1:n1:1:n1:4:n3:3:n6:1:n1:1:n1:1:n1:1:n1:2:n5
t $FACE Token $E0
T $FACE,137,n3:2:n1:2:n4:1:n1:1:n2:1:n1:1:n1:1:n2:3:n1:2:n1:2:n1:1:n1:4:n1:4:n1:2:n4:2:n1:1:n2:6:n1,n4:1:n1:1:n3:2:n1:4:n2:1:n1:1:n2:1:n2:1:n1:1:n4:5:n3:1:n3:2:n1:4:n2:2:n2:1:n1:4,3:n2:1:n1
t $FB57 Token $E1
T $FB57,5,2:n1:1:n1
t $FB5C Token $E2
T $FB5C,4,n1:1:n2
t $FB60 Token $E3
T $FB60,4,n1:1:n2
t $FB64 Token $E4
T $FB64,6,5:n1
t $FB6A Token $E5
T $FB6A,5,4:n1
t $FB6F Token $E6
T $FB6F,6,n1:2:n1:1:n1
t $FB75 Token $E7
T $FB75,3,1:n2
t $FB78 Token $E8
T $FB78,6,1:n1:3:n1
t $FB7E Token $E9
T $FB7E,4,2:n2
t $FB82 Token $EA
T $FB82,4,1:n1:1:n1
t $FB86 Token $EB
T $FB86,4,3:n1
t $FB8A Token $EC
T $FB8A,6,n1:4:n1
t $FB90 Token $ED
T $FB90,7,n1:5:n1
t $FB97 Token $EE
T $FB97,4,3:n1
t $FB9B Token $EF
T $FB9B,4,3:n1
t $FB9F Token $F0
T $FB9F,4,2:n2
t $FBA3 Token $F1
T $FBA3,5,n1:2:n2
t $FBA8 Token $F2
T $FBA8,5,n1:3:n1
t $FBAD Token $F3
T $FBAD,7,4:n1:1:n1
t $FBB4 Token $F4
T $FBB4,4,n1:2:n1
t $FBB8 Token $F5
T $FBB8,3,1:n2
t $FBBB Token $F6
T $FBBB,4,3:n1
t $FBBF Token $F7
T $FBBF,7,1:n1:2:n1:1:n1
t $FBC6 Token $F8
T $FBC6,6,2:n1:2:n1
t $FBCC Token $F9
T $FBCC,7,n1:4:n2
t $FBD3 Token $FA
T $FBD3,6,2:n1:2:n1
t $FBD9 Token $FB
T $FBD9,6,3:n3
t $FBDF Token $FC
T $FBDF,5,1:n2:1:n1
t $FBE4 Token $FD
T $FBE4,4,2:n2
t $FBE8 Token $FE
T $FBE8,5,1:n1:1:n2
t $FBED Token $FF Last recursive token
T $FBED,19,n1:8:n1:2:n1:5:n1
b $FC00 Data block at FC00
@ $FC00 label=data_at_FC00
B $FC00,8,8
b $FC08 Byte at FC08
@ $FC08 label=byte_at_FC08
B $FC08,1,1
b $FC09 Byte at FC09
@ $FC09 label=byte_at_FC09
B $FC09,1,1
b $FC0A Byte at FC0A
@ $FC0A label=byte_at_FCA
B $FC0A,1,1
b $FC0B Byte at FC0B
@ $FC0B label=byte_at_FC0B
B $FC0B,1,1
b $FC0C Byte at FC0C
@ $FC0C label=byte_at_FC0C
B $FC0C,1,1
b $FC0D Byte at FC0D
@ $FC0D label=byte_at_FC0D
B $FC0D,1,1
b $FC0E Byte at FC0E
@ $FC0E label=byte_at_FC0E
B $FC0E,1,1
b $FC0F Byte at FC0F
@ $FC0F label=byte_at_FC0F
B $FC0F,1,1
c $FC10 Scan keyboard continued
@ $FC10 label=scan_keyboard_cont
c $FCBA Routine at FCBA
b $FCEA Data block at FCEA
B $FCEA,22,8*2,6
b $FD00 Interrupt vector table?
B $FD00,65,8*8,1
b $FD41 Data block at FD41
@ $FD41 label=data_at_FD41
B $FD41,40,8
c $FD69 Scan keyboard
@ $FD69 label=scan_keyboard
b $FD8A Data block at FD8A
B $FD8A,4,4
b $FD8E Data block at FD8E
B $FD8E,13,8,5
t $FD9B More 2-letter tokens
@ $FD9B label=more_two_letter_tokens
T $FD9B,24,24
t $FDB3 Standard 2-letter tokens
@ $FDB3 label=two_letter_tokens
T $FDB3,64,64
b $FDF3 Data block at FDF3
B $FDF3,14,8,6
c $FE01 Routine at FE01
c $FEFE Routine at FEFE
@ $FEFE label=interrupt_jump
c $FF00 Routine at FF00
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
c $FF16 Routine at FF16
c $FF25 Interrupt routine
@ $FF25 label=interrupt_routine
c $FF4C Set IM2
@ $FF4C label=set_im2
c $FF53 Set IM1
@ $FF53 label=set_im1
w $FF56 Word at FF56
@ $FF56 label=save_sp_intrpt
W $FF56,2,2
b $FF58 Stack
B $FF58,168,8*20,7,1
