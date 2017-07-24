opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F877
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
	FNCALL	_main,_dat
	FNCALL	_cmd,_delay
	FNCALL	_dat,_delay
	FNROOT	_main
	global	main@F1118
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	75

;initializer for main@F1118
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
	file	"prev0.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
main@F1118:
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
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	4
;;Data sizes: Strings 0, constant 0, data 57, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80      0      57
;; BANK1           80      0       0
;; BANK3           96     93      93
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
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
;; (0) _main                                                97    97      0     205
;;                                              2 COMMON     4     4      0
;;                                              0 BANK3     93    93      0
;;                                _cmd
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _dat                                                  0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;     _delay
;;   _dat
;;     _delay
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
;;DATA                 0      0      9E      12        0.0%
;;ABS                  0      0      9C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0      39       5       71.3%
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
;;		line 74 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   91[BANK3 ] int 
;;  str            57    0[BANK3 ] unsigned char [57]
;;  dest           32   57[BANK3 ] unsigned char [32]
;;  st              2   89[BANK3 ] int 
;; Return value:  Size  Location     Type
;;                  2  670[COMMON] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_cmd
;;		_dat
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	74
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	75
	
l2021:	
;lcd1.c: 75: char str[]="welcome to EMTECH FOUNDATION CH FOUNDATION CH FOUNDATION";
	movlw	(main@str)&0ffh
	movwf	fsr0
	movlw	low(main@F1118)
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
	
l2023:	
;lcd1.c: 77: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	78
	
l2025:	
;lcd1.c: 78: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	79
	
l2027:	
;lcd1.c: 79: PORTC=0x38;
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	80
	
l2029:	
;lcd1.c: 80: cmd();
	fcall	_cmd
	line	81
	
l2031:	
;lcd1.c: 81: PORTC=0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	82
	
l2033:	
;lcd1.c: 82: cmd();
	fcall	_cmd
	line	83
	
l2035:	
;lcd1.c: 83: PORTC=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	84
	
l2037:	
;lcd1.c: 84: cmd();
	fcall	_cmd
	line	85
	
l2039:	
;lcd1.c: 85: PORTC=0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	87
	
l2041:	
;lcd1.c: 87: PORTC=0b10000000;
	movlw	(080h)
	movwf	(7)	;volatile
	line	89
	
l2043:	
;lcd1.c: 89: cmd();
	fcall	_cmd
	line	94
	
l2045:	
;lcd1.c: 93: char dest [32] ;
;lcd1.c: 94: int st=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@st)^0180h
	movlw	high(01h)
	movwf	((main@st)^0180h)+1
	line	95
	
l2047:	
;lcd1.c: 95: for(int i=0;i<25;i++)
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	
l2049:	
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
	goto	l2053
u2360:
	goto	l2059
	
l2051:	
	goto	l2059
	line	96
	
l673:	
	line	97
	
l2053:	
;lcd1.c: 96: {
;lcd1.c: 97: dest[i]=str[st+i];
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
	
l2055:	
	movlw	low(01h)
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	high(01h)
	addwf	(main@i+1)^0180h,f
	
l2057:	
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
	goto	l2053
u2370:
	goto	l2059
	
l674:	
	line	100
	
l2059:	
;lcd1.c: 98: }
;lcd1.c: 100: PORTC='a';
	movlw	(061h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	101
	
l2061:	
;lcd1.c: 101: dat();
	fcall	_dat
	goto	l676
	line	105
;lcd1.c: 105: while(1);
	
l675:	
	
l676:	
	goto	l676
	
l677:	
	line	108
	
l678:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_cmd
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

;; *************** function _cmd *****************
;; Defined at:
;;		line 116 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
;;		_main
;;		_write
;; This function uses a non-reentrant model
;;
psect	text129
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	116
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 6
; Regs used in _cmd: [wreg+status,2+status,0+pclath+cstack]
	line	117
	
l2015:	
;lcd1.c: 117: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	118
;lcd1.c: 118: RD1=1;
	bsf	(65/8),(65)&7
	line	119
	
l2017:	
;lcd1.c: 119: delay(50);
	movlw	low(032h)
	movwf	(?_delay)
	movlw	high(032h)
	movwf	((?_delay))+1
	fcall	_delay
	line	120
	
l2019:	
;lcd1.c: 120: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	121
;lcd1.c: 121: delay(50);
	movlw	low(032h)
	movwf	(?_delay)
	movlw	high(032h)
	movwf	((?_delay))+1
	fcall	_delay
	line	123
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,88
	global	_dat
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function _dat *****************
;; Defined at:
;;		line 125 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
;;		_main
;;		_write
;; This function uses a non-reentrant model
;;
psect	text130
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	125
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 6
; Regs used in _dat: [wreg+status,2+status,0+pclath+cstack]
	line	126
	
l2009:	
;lcd1.c: 126: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	127
;lcd1.c: 127: RD1=1;
	bsf	(65/8),(65)&7
	line	128
	
l2011:	
;lcd1.c: 128: delay(50);
	movlw	low(032h)
	movwf	(?_delay)
	movlw	high(032h)
	movwf	((?_delay))+1
	fcall	_delay
	line	129
	
l2013:	
;lcd1.c: 129: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	130
;lcd1.c: 130: delay(50);
	movlw	low(032h)
	movwf	(?_delay)
	movlw	high(032h)
	movwf	((?_delay))+1
	fcall	_delay
	line	133
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,88
	global	_delay
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:

;; *************** function _delay *****************
;; Defined at:
;;		line 110 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text131
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	110
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	112
	
l2005:	
;lcd1.c: 112: while(x-->0);
	goto	l2007
	
l682:	
	goto	l2007
	
l681:	
	
l2007:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2345
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2345:

	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2007
u2340:
	goto	l684
	
l683:	
	line	114
	
l684:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
