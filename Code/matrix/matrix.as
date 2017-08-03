opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_scan
	FNCALL	_scan,_resetout
	FNROOT	_main
	global	main@F1605
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\matrix\ssd_matx.c"
	line	113

;initializer for main@F1605
	retlw	03Fh
	retlw	0

	retlw	06h
	retlw	0

	retlw	05Bh
	retlw	0

	retlw	04Fh
	retlw	0

	retlw	066h
	retlw	0

	retlw	06Dh
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	07h
	retlw	0

	retlw	07Fh
	retlw	0

	retlw	06Fh
	retlw	0

	retlw	077h
	retlw	0

	retlw	07Ch
	retlw	0

	retlw	039h
	retlw	0

	retlw	05Eh
	retlw	0

	retlw	079h
	retlw	0

	retlw	071h
	retlw	0

	global	_PORTC
_PORTC	set	7
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"matrix.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\matrix\ssd_matx.c"
main@F1605:
       ds      32

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+32)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_resetout
?_resetout:	; 0 bytes @ 0x0
	global	??_resetout
??_resetout:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_scan
?_scan:	; 2 bytes @ 0x0
	ds	2
	global	??_scan
??_scan:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@max
main@max:	; 32 bytes @ 0x0
	ds	32
	global	main@op
main@op:	; 2 bytes @ 0x20
	ds	2
	global	main@p
main@p:	; 2 bytes @ 0x22
	ds	2
;;Data sizes: Strings 0, constant 0, data 32, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80     36      68
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_scan
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                42    42      0     437
;;                                              2 COMMON     4     4      0
;;                                              0 BANK0     36    36      0
;;                               _scan
;; ---------------------------------------------------------------------------------
;; (1) _scan                                                 2     0      2       0
;;                                              0 COMMON     2     0      2
;;                           _resetout
;; ---------------------------------------------------------------------------------
;; (2) _resetout                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _scan
;;     _resetout
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      4C      12        0.0%
;;ABS                  0      0      4A       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     24      44       5       85.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 111 in file "Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\matrix\ssd_matx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  max            32    0[BANK0 ] int [16]
;;  p               2   34[BANK0 ] int 
;;  op              2   32[BANK0 ] int 
;;  press           2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      36       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      36       0       0       0
;;Total ram usage:       40 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_scan
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\matrix\ssd_matx.c"
	line	111
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	131
	
l2553:	
;ssd_matx.c: 112: int press;
;ssd_matx.c: 113: int max[]={
;ssd_matx.c: 114: 0b00111111,
;ssd_matx.c: 115: 0b00000110,
;ssd_matx.c: 116: 0b01011011,
;ssd_matx.c: 117: 0b01001111,
;ssd_matx.c: 118: 0b01100110,
;ssd_matx.c: 119: 0b01101101,
;ssd_matx.c: 120: 0b01111101,
;ssd_matx.c: 121: 0b00000111,
;ssd_matx.c: 122: 0b01111111,
;ssd_matx.c: 123: 0b01101111,
;ssd_matx.c: 125: 0b01110111,
;ssd_matx.c: 126: 0b01111100,
;ssd_matx.c: 127: 0b00111001,
;ssd_matx.c: 128: 0b01011110,
;ssd_matx.c: 129: 0b01111001,
;ssd_matx.c: 130: 0b01110001
	movlw	(main@max)&0ffh
	movwf	fsr0
	movlw	low(main@F1605)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	32
	movwf	((??_main+0)+0+2)
u2650:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2650
	line	132
	
l2555:	
;ssd_matx.c: 132: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	133
	
l2557:	
;ssd_matx.c: 133: TRISD=0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	136
	
l2559:	
;ssd_matx.c: 134: int p;
;ssd_matx.c: 135: int op;
;ssd_matx.c: 136: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l2561
	line	138
;ssd_matx.c: 138: while(1){
	
l1067:	
	line	139
	
l2561:	
;ssd_matx.c: 139: p=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@p+1)
	addwf	(main@p+1)
	movf	(0+(?_scan)),w
	clrf	(main@p)
	addwf	(main@p)

	line	141
	
l2563:	
;ssd_matx.c: 141: if(p==1)
	movlw	01h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l2567
u2660:
	line	143
	
l2565:	
;ssd_matx.c: 142: {
;ssd_matx.c: 143: op=0b10000000;
	movlw	low(080h)
	movwf	(main@op)
	movlw	high(080h)
	movwf	((main@op))+1
	line	144
;ssd_matx.c: 144: }
	goto	l1069
	line	145
	
l1068:	
	
l2567:	
;ssd_matx.c: 145: else if(p==2)
	movlw	02h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l2571
u2670:
	line	147
	
l2569:	
;ssd_matx.c: 146: {
;ssd_matx.c: 147: op=0b01000000;
	movlw	low(040h)
	movwf	(main@op)
	movlw	high(040h)
	movwf	((main@op))+1
	line	148
;ssd_matx.c: 148: }
	goto	l1069
	line	149
	
l1070:	
	
l2571:	
;ssd_matx.c: 149: else if(p==3)
	movlw	03h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l2575
u2680:
	line	151
	
l2573:	
;ssd_matx.c: 150: {
;ssd_matx.c: 151: op=0b00100000;
	movlw	low(020h)
	movwf	(main@op)
	movlw	high(020h)
	movwf	((main@op))+1
	line	152
;ssd_matx.c: 152: }
	goto	l1069
	line	153
	
l1072:	
	
l2575:	
;ssd_matx.c: 153: else if(p==4)
	movlw	04h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2579
u2690:
	line	155
	
l2577:	
;ssd_matx.c: 154: {
;ssd_matx.c: 155: op=0b00010000;
	movlw	low(010h)
	movwf	(main@op)
	movlw	high(010h)
	movwf	((main@op))+1
	line	156
;ssd_matx.c: 156: }
	goto	l1069
	line	157
	
l1074:	
	
l2579:	
;ssd_matx.c: 157: else if(p==5)
	movlw	05h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l2583
u2700:
	line	159
	
l2581:	
;ssd_matx.c: 158: {
;ssd_matx.c: 159: op=0b00001000;
	movlw	low(08h)
	movwf	(main@op)
	movlw	high(08h)
	movwf	((main@op))+1
	line	160
;ssd_matx.c: 160: }
	goto	l1069
	line	161
	
l1076:	
	
l2583:	
;ssd_matx.c: 161: else if(p==6)
	movlw	06h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l2587
u2710:
	line	163
	
l2585:	
;ssd_matx.c: 162: {
;ssd_matx.c: 163: op=0b00000100;
	movlw	low(04h)
	movwf	(main@op)
	movlw	high(04h)
	movwf	((main@op))+1
	line	164
;ssd_matx.c: 164: }
	goto	l1069
	line	165
	
l1078:	
	
l2587:	
;ssd_matx.c: 165: else if(p==7)
	movlw	07h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l2591
u2720:
	line	167
	
l2589:	
;ssd_matx.c: 166: {
;ssd_matx.c: 167: op=0b00000010;
	movlw	low(02h)
	movwf	(main@op)
	movlw	high(02h)
	movwf	((main@op))+1
	line	168
;ssd_matx.c: 168: }
	goto	l1069
	line	169
	
l1080:	
	
l2591:	
;ssd_matx.c: 169: else if(p==8)
	movlw	08h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l2595
u2730:
	line	171
	
l2593:	
;ssd_matx.c: 170: {
;ssd_matx.c: 171: op=0b00000001;
	movlw	low(01h)
	movwf	(main@op)
	movlw	high(01h)
	movwf	((main@op))+1
	line	172
;ssd_matx.c: 172: }
	goto	l1069
	line	173
	
l1082:	
	
l2595:	
;ssd_matx.c: 173: else if(p==9)
	movlw	09h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l2599
u2740:
	line	175
	
l2597:	
;ssd_matx.c: 174: {
;ssd_matx.c: 175: op=0b11000000;
	movlw	low(0C0h)
	movwf	(main@op)
	movlw	high(0C0h)
	movwf	((main@op))+1
	line	176
;ssd_matx.c: 176: }
	goto	l1069
	line	177
	
l1084:	
	
l2599:	
;ssd_matx.c: 177: else if(p==10)
	movlw	0Ah
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l2603
u2750:
	line	179
	
l2601:	
;ssd_matx.c: 178: {
;ssd_matx.c: 179: op=0b00110000;
	movlw	low(030h)
	movwf	(main@op)
	movlw	high(030h)
	movwf	((main@op))+1
	line	180
;ssd_matx.c: 180: }
	goto	l1069
	line	181
	
l1086:	
	
l2603:	
;ssd_matx.c: 181: else if(p==11)
	movlw	0Bh
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l2607
u2760:
	line	183
	
l2605:	
;ssd_matx.c: 182: {
;ssd_matx.c: 183: op=0b00001100;
	movlw	low(0Ch)
	movwf	(main@op)
	movlw	high(0Ch)
	movwf	((main@op))+1
	line	184
;ssd_matx.c: 184: }
	goto	l1069
	line	185
	
l1088:	
	
l2607:	
;ssd_matx.c: 185: else if(p==12)
	movlw	0Ch
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l2611
u2770:
	line	187
	
l2609:	
;ssd_matx.c: 186: {
;ssd_matx.c: 187: op=0b00000011;
	movlw	low(03h)
	movwf	(main@op)
	movlw	high(03h)
	movwf	((main@op))+1
	line	188
;ssd_matx.c: 188: }
	goto	l1069
	line	189
	
l1090:	
	
l2611:	
;ssd_matx.c: 189: else if(p==13)
	movlw	0Dh
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l2615
u2780:
	line	191
	
l2613:	
;ssd_matx.c: 190: {
;ssd_matx.c: 191: op=0b11100000;
	movlw	low(0E0h)
	movwf	(main@op)
	movlw	high(0E0h)
	movwf	((main@op))+1
	line	192
;ssd_matx.c: 192: }
	goto	l1069
	line	193
	
l1092:	
	
l2615:	
;ssd_matx.c: 193: else if(p==14)
	movlw	0Eh
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l2619
u2790:
	line	195
	
l2617:	
;ssd_matx.c: 194: {
;ssd_matx.c: 195: op=0b00011100;
	movlw	low(01Ch)
	movwf	(main@op)
	movlw	high(01Ch)
	movwf	((main@op))+1
	line	196
;ssd_matx.c: 196: }
	goto	l1069
	line	197
	
l1094:	
	
l2619:	
;ssd_matx.c: 197: else if(p==15)
	movlw	0Fh
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l2623
u2800:
	line	199
	
l2621:	
;ssd_matx.c: 198: {
;ssd_matx.c: 199: op=0b00000000;
	clrf	(main@op)
	clrf	(main@op+1)
	line	200
;ssd_matx.c: 200: }
	goto	l1069
	line	201
	
l1096:	
	
l2623:	
;ssd_matx.c: 201: else if(p==16)
	movlw	010h
	xorwf	(main@p),w
	iorwf	(main@p+1),w
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l1069
u2810:
	line	203
	
l2625:	
;ssd_matx.c: 202: {
;ssd_matx.c: 203: op=0b11111111;
	movlw	low(0FFh)
	movwf	(main@op)
	movlw	high(0FFh)
	movwf	((main@op))+1
	goto	l1069
	line	204
	
l1098:	
	goto	l1069
	line	207
	
l1097:	
	goto	l1069
	
l1095:	
	goto	l1069
	
l1093:	
	goto	l1069
	
l1091:	
	goto	l1069
	
l1089:	
	goto	l1069
	
l1087:	
	goto	l1069
	
l1085:	
	goto	l1069
	
l1083:	
	goto	l1069
	
l1081:	
	goto	l1069
	
l1079:	
	goto	l1069
	
l1077:	
	goto	l1069
	
l1075:	
	goto	l1069
	
l1073:	
	goto	l1069
	
l1071:	
	
l1069:	
;ssd_matx.c: 204: }
;ssd_matx.c: 207: if(p!=0)
	movf	(main@p+1),w
	iorwf	(main@p),w
	skipnz
	goto	u2821
	goto	u2820
u2821:
	goto	l2561
u2820:
	line	208
	
l2627:	
;ssd_matx.c: 208: PORTC=max[p-1];;
	movf	(main@p),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	0FEh
	addlw	main@max&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	goto	l2561
	
l1099:	
	goto	l2561
	line	209
	
l1100:	
	line	138
	goto	l2561
	
l1101:	
	line	211
	
l1102:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_scan
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:

;; *************** function _scan *****************
;; Defined at:
;;		line 14 in file "Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\matrix\ssd_matx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_resetout
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text110
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\matrix\ssd_matx.c"
	line	14
	global	__size_of_scan
	__size_of_scan	equ	__end_of_scan-_scan
	
_scan:	
	opt	stack 6
; Regs used in _scan: [wreg+status,2+status,0+pclath+cstack]
	line	16
	
l2437:	
;ssd_matx.c: 16: resetout();
	fcall	_resetout
	line	18
	
l2439:	
;ssd_matx.c: 18: RD4=1;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	line	20
	
l2441:	
;ssd_matx.c: 20: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l1034
u2490:
	line	22
	
l2443:	
;ssd_matx.c: 21: {
;ssd_matx.c: 22: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l1035
	
l2445:	
	goto	l1035
	line	23
	
l2447:	
;ssd_matx.c: 23: }
	goto	l2465
	line	24
	
l1034:	
;ssd_matx.c: 24: else if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l1037
u2500:
	line	26
	
l2449:	
;ssd_matx.c: 25: {
;ssd_matx.c: 26: return 2;
	movlw	low(02h)
	movwf	(?_scan)
	movlw	high(02h)
	movwf	((?_scan))+1
	goto	l1035
	
l2451:	
	goto	l1035
	line	27
	
l2453:	
;ssd_matx.c: 27: }
	goto	l2465
	line	28
	
l1037:	
;ssd_matx.c: 28: else if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1039
u2510:
	line	30
	
l2455:	
;ssd_matx.c: 29: {
;ssd_matx.c: 30: return 3;
	movlw	low(03h)
	movwf	(?_scan)
	movlw	high(03h)
	movwf	((?_scan))+1
	goto	l1035
	
l2457:	
	goto	l1035
	line	31
	
l2459:	
;ssd_matx.c: 31: }
	goto	l2465
	line	32
	
l1039:	
;ssd_matx.c: 32: else if(RD3==1)
	btfss	(67/8),(67)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l2465
u2520:
	line	34
	
l2461:	
;ssd_matx.c: 33: {
;ssd_matx.c: 34: return 4;
	movlw	low(04h)
	movwf	(?_scan)
	movlw	high(04h)
	movwf	((?_scan))+1
	goto	l1035
	
l2463:	
	goto	l1035
	line	35
	
l1041:	
	goto	l2465
	line	39
	
l1040:	
	goto	l2465
	
l1038:	
	goto	l2465
	
l1036:	
	
l2465:	
;ssd_matx.c: 35: }
;ssd_matx.c: 39: resetout();
	fcall	_resetout
	line	41
	
l2467:	
;ssd_matx.c: 41: RD5=1;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	line	43
	
l2469:	
;ssd_matx.c: 43: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l1042
u2530:
	line	45
	
l2471:	
;ssd_matx.c: 44: {
;ssd_matx.c: 45: return 5;
	movlw	low(05h)
	movwf	(?_scan)
	movlw	high(05h)
	movwf	((?_scan))+1
	goto	l1035
	
l2473:	
	goto	l1035
	line	46
	
l2475:	
;ssd_matx.c: 46: }
	goto	l2493
	line	47
	
l1042:	
;ssd_matx.c: 47: else if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1044
u2540:
	line	49
	
l2477:	
;ssd_matx.c: 48: {
;ssd_matx.c: 49: return 6;
	movlw	low(06h)
	movwf	(?_scan)
	movlw	high(06h)
	movwf	((?_scan))+1
	goto	l1035
	
l2479:	
	goto	l1035
	line	50
	
l2481:	
;ssd_matx.c: 50: }
	goto	l2493
	line	51
	
l1044:	
;ssd_matx.c: 51: else if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l1046
u2550:
	line	53
	
l2483:	
;ssd_matx.c: 52: {
;ssd_matx.c: 53: return 7;
	movlw	low(07h)
	movwf	(?_scan)
	movlw	high(07h)
	movwf	((?_scan))+1
	goto	l1035
	
l2485:	
	goto	l1035
	line	54
	
l2487:	
;ssd_matx.c: 54: }
	goto	l2493
	line	55
	
l1046:	
;ssd_matx.c: 55: else if(RD3==1)
	btfss	(67/8),(67)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l2493
u2560:
	line	57
	
l2489:	
;ssd_matx.c: 56: {
;ssd_matx.c: 57: return 8;
	movlw	low(08h)
	movwf	(?_scan)
	movlw	high(08h)
	movwf	((?_scan))+1
	goto	l1035
	
l2491:	
	goto	l1035
	line	58
	
l1048:	
	goto	l2493
	line	62
	
l1047:	
	goto	l2493
	
l1045:	
	goto	l2493
	
l1043:	
	
l2493:	
;ssd_matx.c: 58: }
;ssd_matx.c: 62: resetout();
	fcall	_resetout
	line	64
	
l2495:	
;ssd_matx.c: 64: RD6=1;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	line	66
	
l2497:	
;ssd_matx.c: 66: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l1049
u2570:
	line	68
	
l2499:	
;ssd_matx.c: 67: {
;ssd_matx.c: 68: return 9;
	movlw	low(09h)
	movwf	(?_scan)
	movlw	high(09h)
	movwf	((?_scan))+1
	goto	l1035
	
l2501:	
	goto	l1035
	line	69
	
l2503:	
;ssd_matx.c: 69: }
	goto	l2521
	line	70
	
l1049:	
;ssd_matx.c: 70: else if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l1051
u2580:
	line	72
	
l2505:	
;ssd_matx.c: 71: {
;ssd_matx.c: 72: return 10;
	movlw	low(0Ah)
	movwf	(?_scan)
	movlw	high(0Ah)
	movwf	((?_scan))+1
	goto	l1035
	
l2507:	
	goto	l1035
	line	73
	
l2509:	
;ssd_matx.c: 73: }
	goto	l2521
	line	74
	
l1051:	
;ssd_matx.c: 74: else if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l1053
u2590:
	line	76
	
l2511:	
;ssd_matx.c: 75: {
;ssd_matx.c: 76: return 11;
	movlw	low(0Bh)
	movwf	(?_scan)
	movlw	high(0Bh)
	movwf	((?_scan))+1
	goto	l1035
	
l2513:	
	goto	l1035
	line	77
	
l2515:	
;ssd_matx.c: 77: }
	goto	l2521
	line	78
	
l1053:	
;ssd_matx.c: 78: else if(RD3==1)
	btfss	(67/8),(67)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l2521
u2600:
	line	80
	
l2517:	
;ssd_matx.c: 79: {
;ssd_matx.c: 80: return 12;
	movlw	low(0Ch)
	movwf	(?_scan)
	movlw	high(0Ch)
	movwf	((?_scan))+1
	goto	l1035
	
l2519:	
	goto	l1035
	line	81
	
l1055:	
	goto	l2521
	line	85
	
l1054:	
	goto	l2521
	
l1052:	
	goto	l2521
	
l1050:	
	
l2521:	
;ssd_matx.c: 81: }
;ssd_matx.c: 85: resetout();
	fcall	_resetout
	line	87
	
l2523:	
;ssd_matx.c: 87: RD7=1;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	line	89
	
l2525:	
;ssd_matx.c: 89: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l1056
u2610:
	line	91
	
l2527:	
;ssd_matx.c: 90: {
;ssd_matx.c: 91: return 13;
	movlw	low(0Dh)
	movwf	(?_scan)
	movlw	high(0Dh)
	movwf	((?_scan))+1
	goto	l1035
	
l2529:	
	goto	l1035
	line	92
	
l2531:	
;ssd_matx.c: 92: }
	goto	l2549
	line	93
	
l1056:	
;ssd_matx.c: 93: else if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l1058
u2620:
	line	95
	
l2533:	
;ssd_matx.c: 94: {
;ssd_matx.c: 95: return 14;
	movlw	low(0Eh)
	movwf	(?_scan)
	movlw	high(0Eh)
	movwf	((?_scan))+1
	goto	l1035
	
l2535:	
	goto	l1035
	line	96
	
l2537:	
;ssd_matx.c: 96: }
	goto	l2549
	line	97
	
l1058:	
;ssd_matx.c: 97: else if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l1060
u2630:
	line	99
	
l2539:	
;ssd_matx.c: 98: {
;ssd_matx.c: 99: return 15;
	movlw	low(0Fh)
	movwf	(?_scan)
	movlw	high(0Fh)
	movwf	((?_scan))+1
	goto	l1035
	
l2541:	
	goto	l1035
	line	100
	
l2543:	
;ssd_matx.c: 100: }
	goto	l2549
	line	101
	
l1060:	
;ssd_matx.c: 101: else if(RD3==1)
	btfss	(67/8),(67)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2549
u2640:
	line	103
	
l2545:	
;ssd_matx.c: 102: {
;ssd_matx.c: 103: return 16;
	movlw	low(010h)
	movwf	(?_scan)
	movlw	high(010h)
	movwf	((?_scan))+1
	goto	l1035
	
l2547:	
	goto	l1035
	line	104
	
l1062:	
	goto	l2549
	line	107
	
l1061:	
	goto	l2549
	
l1059:	
	goto	l2549
	
l1057:	
	
l2549:	
;ssd_matx.c: 104: }
;ssd_matx.c: 107: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l1035
	
l2551:	
	line	109
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_scan
	__end_of_scan:
;; =============== function _scan ends ============

	signat	_scan,90
	global	_resetout
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

;; *************** function _resetout *****************
;; Defined at:
;;		line 7 in file "Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\matrix\ssd_matx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scan
;; This function uses a non-reentrant model
;;
psect	text111
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\matrix\ssd_matx.c"
	line	7
	global	__size_of_resetout
	__size_of_resetout	equ	__end_of_resetout-_resetout
	
_resetout:	
	opt	stack 6
; Regs used in _resetout: []
	line	8
	
l2435:	
;ssd_matx.c: 8: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	9
;ssd_matx.c: 9: RD5=0;
	bcf	(69/8),(69)&7
	line	10
;ssd_matx.c: 10: RD6=0;
	bcf	(70/8),(70)&7
	line	11
;ssd_matx.c: 11: RD7=0;
	bcf	(71/8),(71)&7
	line	12
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_resetout
	__end_of_resetout:
;; =============== function _resetout ends ============

	signat	_resetout,88
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
