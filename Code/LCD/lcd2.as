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
	FNCALL	_main,_cmd
	FNCALL	_main,_write
	FNCALL	_write,_dat
	FNCALL	_write,_cmd
	FNCALL	_cmd,_delay
	FNCALL	_dat,_delay
	FNROOT	_main
	global	main@F1705
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
	line	75

;initializer for main@F1705
	retlw	077h
	retlw	065h
	retlw	06Ch
	retlw	063h
	retlw	06Fh
	retlw	06Dh
	retlw	065h
	retlw	020h
	retlw	074h
	retlw	06Fh
	retlw	020h
	retlw	045h
	retlw	04Dh
	retlw	054h
	retlw	045h
	retlw	043h
	retlw	048h
	retlw	020h
	retlw	046h
	retlw	04Fh
	retlw	055h
	retlw	04Eh
	retlw	044h
	retlw	041h
	retlw	054h
	retlw	049h
	retlw	04Fh
	retlw	04Eh
	retlw	020h
	retlw	043h
	retlw	048h
	retlw	020h
	retlw	046h
	retlw	04Fh
	retlw	055h
	retlw	04Eh
	retlw	044h
	retlw	041h
	retlw	054h
	retlw	049h
	retlw	04Fh
	retlw	04Eh
	retlw	020h
	retlw	043h
	retlw	048h
	retlw	020h
	retlw	046h
	retlw	04Fh
	retlw	055h
	retlw	04Eh
	retlw	044h
	retlw	041h
	retlw	054h
	retlw	049h
	retlw	04Fh
	retlw	04Eh
	retlw	0
	global	_PORTC
_PORTC	set	7
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"lcd2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
main@F1705:
       ds      57

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
	movlw low(__pdataBANK0+57)
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
psect	cstackBANK3,class=BANK3,space=1
global __pcstackBANK3
__pcstackBANK3:
	global	main@str
main@str:	; 57 bytes @ 0x0
	ds	57
	global	main@dest
main@dest:	; 32 bytes @ 0x39
	ds	32
	global	main@st
main@st:	; 2 bytes @ 0x59
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x5B
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	2
	global	??_dat
??_dat:	; 0 bytes @ 0x2
	global	??_cmd
??_cmd:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_write
?_write:	; 0 bytes @ 0x2
	global	write@str
write@str:	; 2 bytes @ 0x2
	ds	2
	global	??_write
??_write:	; 0 bytes @ 0x4
	ds	2
	global	write@i
write@i:	; 2 bytes @ 0x6
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	4
;;Data sizes: Strings 0, constant 0, data 57, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80      0      57
;; BANK1           80      0       0
;; BANK3           96     93      93
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; write@str	PTR unsigned char  size(2) Largest target is 512
;;		 -> main@dest(BANK3[32]), RAM(DATA[512]), scroll@dest(BANK0[32]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_write
;;   _cmd->_delay
;;   _dat->_delay
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
;; (0) _main                                                97    97      0     363
;;                                              8 COMMON     4     4      0
;;                                              0 BANK3     93    93      0
;;                                _cmd
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _write                                                6     4      2     156
;;                                              2 COMMON     6     4      2
;;                                _dat
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (2) _cmd                                                  0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _dat                                                  0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;     _delay
;;   _write
;;     _dat
;;       _delay
;;     _cmd
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60     5D      5D       9       96.9%
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
;;DATA                 0      0      A5      12        0.0%
;;ABS                  0      0      A2       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0      39       5       71.2%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 74 in file "Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   91[BANK3 ] int 
;;  str            57    0[BANK3 ] unsigned char [57]
;;  dest           32   57[BANK3 ] unsigned char [32]
;;  st              2   89[BANK3 ] int 
;; Return value:  Size  Location     Type
;;                  2  1054[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0      93       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0      93       0
;;Total ram usage:       97 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_cmd
;;		_write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
	line	74
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	75
	
l2403:	
;lcd2.c: 75: char str[]="welcome to EMTECH FOUNDATION CH FOUNDATION CH FOUNDATION";
	movlw	(main@str)&0ffh
	movwf	fsr0
	movlw	low(main@F1705)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	57
	movwf	((??_main+0)+0+2)
u2350:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2350
	line	77
	
l2405:	
;lcd2.c: 77: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	78
	
l2407:	
;lcd2.c: 78: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	79
	
l2409:	
;lcd2.c: 79: PORTC=0x38;
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	80
	
l2411:	
;lcd2.c: 80: cmd();
	fcall	_cmd
	line	81
	
l2413:	
;lcd2.c: 81: PORTC=0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	82
	
l2415:	
;lcd2.c: 82: cmd();
	fcall	_cmd
	line	83
	
l2417:	
;lcd2.c: 83: PORTC=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	84
	
l2419:	
;lcd2.c: 84: cmd();
	fcall	_cmd
	line	85
	
l2421:	
;lcd2.c: 85: PORTC=0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	87
	
l2423:	
;lcd2.c: 87: PORTC=0b10000000;
	movlw	(080h)
	movwf	(7)	;volatile
	line	89
	
l2425:	
;lcd2.c: 89: cmd();
	fcall	_cmd
	line	94
	
l2427:	
;lcd2.c: 93: char dest [32] ;
;lcd2.c: 94: int st=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@st)^0180h
	movlw	high(01h)
	movwf	((main@st)^0180h)+1
	line	95
	
l2429:	
;lcd2.c: 95: for(int i=0;i<25;i++)
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	
l2431:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(019h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(019h)
	subwf	(main@i)^0180h,w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2435
u2360:
	goto	l2441
	
l2433:	
	goto	l2441
	line	96
	
l1057:	
	line	97
	
l2435:	
;lcd2.c: 96: {
;lcd2.c: 97: dest[i]=str[st+i];
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addwf	(main@st)^0180h,w
	addlw	main@str&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(main@i)^0180h,w
	addlw	main@dest&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	95
	
l2437:	
	movlw	low(01h)
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	high(01h)
	addwf	(main@i+1)^0180h,f
	
l2439:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(019h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(019h)
	subwf	(main@i)^0180h,w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2435
u2370:
	goto	l2441
	
l1058:	
	line	99
	
l2441:	
;lcd2.c: 98: }
;lcd2.c: 99: write(dest);
	movlw	(main@dest&0ffh)
	movwf	(?_write)
	movlw	(0x3/2)
	movwf	(?_write+1)
	fcall	_write
	goto	l1060
	line	103
;lcd2.c: 103: while(1);
	
l1059:	
	
l1060:	
	goto	l1060
	
l1061:	
	line	106
	
l1062:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_write
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:

;; *************** function _write *****************
;; Defined at:
;;		line 12 in file "Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
;; Parameters:    Size  Location     Type
;;  str             2    2[COMMON] PTR unsigned char 
;;		 -> main@dest(32), RAM(512), scroll@dest(32), 
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dat
;;		_cmd
;; This function is called by:
;;		_main
;;		_scroll
;; This function uses a non-reentrant model
;;
psect	text149
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
	line	12
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 5
; Regs used in _write: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	14
	
l2387:	
;lcd2.c: 14: int i=0;
	clrf	(write@i)
	clrf	(write@i+1)
	line	15
;lcd2.c: 15: while(str[i]!='\0')
	goto	l2401
	
l1032:	
	line	18
	
l2389:	
;lcd2.c: 16: {
;lcd2.c: 18: PORTC=str[i++];
	movf	(write@i),w
	addwf	(write@str),w
	movwf	(??_write+0)+0
	movf	(write@i+1),w
	skipnc
	incf	(write@i+1),w
	addwf	(write@str+1),w
	movwf	1+(??_write+0)+0
	movf	0+(??_write+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_write+0)+0,0
	bcf	status,7
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l2391:	
	movlw	low(01h)
	addwf	(write@i),f
	skipnc
	incf	(write@i+1),f
	movlw	high(01h)
	addwf	(write@i+1),f
	line	19
	
l2393:	
;lcd2.c: 19: dat();
	fcall	_dat
	line	21
	
l2395:	
;lcd2.c: 21: if(i==15)
	movlw	0Fh
	xorwf	(write@i),w
	iorwf	(write@i+1),w
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l2401
u2330:
	line	24
	
l2397:	
;lcd2.c: 22: {
;lcd2.c: 24: PORTC=0xC0;
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	26
	
l2399:	
;lcd2.c: 26: cmd();
	fcall	_cmd
	goto	l2401
	line	27
	
l1033:	
	goto	l2401
	line	28
	
l1031:	
	line	15
	
l2401:	
	movf	(write@i),w
	addwf	(write@str),w
	movwf	(??_write+0)+0
	movf	(write@i+1),w
	skipnc
	incf	(write@i+1),w
	addwf	(write@str+1),w
	movwf	1+(??_write+0)+0
	movf	0+(??_write+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_write+0)+0,0
	bcf	status,7
	movf	indf,f
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2389
u2340:
	goto	l1035
	
l1034:	
	line	31
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,4216
	global	_cmd
psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:

;; *************** function _cmd *****************
;; Defined at:
;;		line 114 in file "Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_write
;;		_main
;; This function uses a non-reentrant model
;;
psect	text150
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
	line	114
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 5
; Regs used in _cmd: [wreg+status,2+status,0+pclath+cstack]
	line	115
	
l2381:	
;lcd2.c: 115: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	116
;lcd2.c: 116: RD1=1;
	bsf	(65/8),(65)&7
	line	117
	
l2383:	
;lcd2.c: 117: delay(50);
	movlw	low(032h)
	movwf	(?_delay)
	movlw	high(032h)
	movwf	((?_delay))+1
	fcall	_delay
	line	118
	
l2385:	
;lcd2.c: 118: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	119
;lcd2.c: 119: delay(50);
	movlw	low(032h)
	movwf	(?_delay)
	movlw	high(032h)
	movwf	((?_delay))+1
	fcall	_delay
	line	121
	
l1071:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,88
	global	_dat
psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:

;; *************** function _dat *****************
;; Defined at:
;;		line 123 in file "Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_write
;; This function uses a non-reentrant model
;;
psect	text151
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
	line	123
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 5
; Regs used in _dat: [wreg+status,2+status,0+pclath+cstack]
	line	124
	
l2375:	
;lcd2.c: 124: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	125
;lcd2.c: 125: RD1=1;
	bsf	(65/8),(65)&7
	line	126
	
l2377:	
;lcd2.c: 126: delay(50);
	movlw	low(032h)
	movwf	(?_delay)
	movlw	high(032h)
	movwf	((?_delay))+1
	fcall	_delay
	line	127
	
l2379:	
;lcd2.c: 127: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	128
;lcd2.c: 128: delay(50);
	movlw	low(032h)
	movwf	(?_delay)
	movlw	high(032h)
	movwf	((?_delay))+1
	fcall	_delay
	line	131
	
l1074:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,88
	global	_delay
psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:

;; *************** function _delay *****************
;; Defined at:
;;		line 108 in file "Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_cmd
;;		_dat
;;		_scroll
;; This function uses a non-reentrant model
;;
psect	text152
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\LCD\lcd2.c"
	line	108
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	110
	
l2371:	
;lcd2.c: 110: while(x-->0);
	goto	l2373
	
l1066:	
	goto	l2373
	
l1065:	
	
l2373:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2325
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2325:

	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l2373
u2320:
	goto	l1068
	
l1067:	
	line	112
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
