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
	FNCALL	_main,_setlcd
	FNCALL	_main,_cmd
	FNCALL	_main,_dat
	FNCALL	_dat,_latch
	FNCALL	_cmd,_latch
	FNCALL	_latch,_delay
	FNCALL	_setlcd,_getn
	FNROOT	_main
	global	_PORTB
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
_PORTB	set	6
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
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
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"test.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_setlcd
?_setlcd:	; 0 bytes @ 0x0
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_latch
?_latch:	; 0 bytes @ 0x0
	global	?_getn
?_getn:	; 1 bytes @ 0x0
	global	getn@n
getn@n:	; 1 bytes @ 0x0
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	ds	1
	global	??_getn
??_getn:	; 0 bytes @ 0x1
	ds	1
	global	??_cmd
??_cmd:	; 0 bytes @ 0x2
	global	??_dat
??_dat:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_latch
??_latch:	; 0 bytes @ 0x2
	ds	1
	global	getn@c
getn@c:	; 1 bytes @ 0x3
	ds	1
	global	getn@tmp
getn@tmp:	; 1 bytes @ 0x4
	ds	1
	global	??_setlcd
??_setlcd:	; 0 bytes @ 0x5
	ds	2
	global	setlcd@number
setlcd@number:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_setlcd
;;   _latch->_delay
;;   _setlcd->_getn
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     210
;;                             _setlcd
;;                                _cmd
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (1) _dat                                                  0     0      0      15
;;                              _latch
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  0     0      0      15
;;                              _latch
;; ---------------------------------------------------------------------------------
;; (2) _latch                                                0     0      0      15
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _setlcd                                               3     3      0     180
;;                                              5 COMMON     3     3      0
;;                               _getn
;; ---------------------------------------------------------------------------------
;; (2) _getn                                                 5     4      1      60
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _setlcd
;;     _getn
;;   _cmd
;;     _latch
;;       _delay
;;   _dat
;;     _latch
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setlcd
;;		_cmd
;;		_dat
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l2218:	
;mod2.c: 37: TRISC=0b0000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	39
	
l2220:	
;mod2.c: 39: TRISD=0b11000000;
	movlw	(0C0h)
	movwf	(136)^080h	;volatile
	line	41
	
l2222:	
;mod2.c: 41: setlcd(0x38);
	movlw	(038h)
	fcall	_setlcd
	line	42
	
l2224:	
;mod2.c: 42: cmd();
	fcall	_cmd
	line	43
	
l2226:	
;mod2.c: 43: setlcd(0x0C);
	movlw	(0Ch)
	fcall	_setlcd
	line	44
	
l2228:	
;mod2.c: 44: cmd( );
	fcall	_cmd
	line	45
	
l2230:	
;mod2.c: 45: setlcd(0x01);
	movlw	(01h)
	fcall	_setlcd
	line	46
	
l2232:	
;mod2.c: 46: cmd( );
	fcall	_cmd
	line	47
	
l2234:	
;mod2.c: 47: setlcd(0x80);
	movlw	(080h)
	fcall	_setlcd
	line	48
	
l2236:	
;mod2.c: 48: cmd( );
	fcall	_cmd
	line	50
	
l2238:	
;mod2.c: 50: setlcd('A');
	movlw	(041h)
	fcall	_setlcd
	line	51
	
l2240:	
;mod2.c: 51: dat();
	fcall	_dat
	line	53
	
l2242:	
;mod2.c: 53: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	54
;mod2.c: 54: PORTB=0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l1038
	line	56
;mod2.c: 56: while(1);
	
l1037:	
	
l1038:	
	goto	l1038
	
l1039:	
	line	58
	
l1040:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_dat
psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:

;; *************** function _dat *****************
;; Defined at:
;;		line 97 in file "C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_latch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text109
	file	"C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
	line	97
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 5
; Regs used in _dat: [wreg+status,2+status,0+pclath+cstack]
	line	98
	
l2214:	
;mod2.c: 98: RD5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	line	99
	
l2216:	
;mod2.c: 99: latch();
	fcall	_latch
	line	100
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,88
	global	_cmd
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:

;; *************** function _cmd *****************
;; Defined at:
;;		line 103 in file "C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_latch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text110
	file	"C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
	line	103
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 5
; Regs used in _cmd: [wreg+status,2+status,0+pclath+cstack]
	line	104
	
l2210:	
;mod2.c: 104: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	line	105
	
l2212:	
;mod2.c: 105: latch();
	fcall	_latch
	line	106
	
l1055:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,88
	global	_latch
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

;; *************** function _latch *****************
;; Defined at:
;;		line 88 in file "C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
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
;;		_dat
;;		_cmd
;; This function uses a non-reentrant model
;;
psect	text111
	file	"C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
	line	88
	global	__size_of_latch
	__size_of_latch	equ	__end_of_latch-_latch
	
_latch:	
	opt	stack 5
; Regs used in _latch: [wreg+status,2+status,0+pclath+cstack]
	line	89
	
l2204:	
;mod2.c: 89: RD4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	line	90
	
l2206:	
;mod2.c: 90: delay(250);
	movlw	low(0FAh)
	movwf	(?_delay)
	movlw	high(0FAh)
	movwf	((?_delay))+1
	fcall	_delay
	line	91
	
l2208:	
;mod2.c: 91: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	92
;mod2.c: 92: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	93
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_latch
	__end_of_latch:
;; =============== function _latch ends ============

	signat	_latch,88
	global	_setlcd
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:

;; *************** function _setlcd *****************
;; Defined at:
;;		line 71 in file "C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
;; Parameters:    Size  Location     Type
;;  number          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  number          1    7[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_getn
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text112
	file	"C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
	line	71
	global	__size_of_setlcd
	__size_of_setlcd	equ	__end_of_setlcd-_setlcd
	
_setlcd:	
	opt	stack 6
; Regs used in _setlcd: [wreg+status,2+status,0+pclath+cstack]
;setlcd@number stored from wreg
	line	74
	movwf	(setlcd@number)
	
l2202:	
;mod2.c: 74: RD3=getn(number,0);
	clrf	(?_getn)
	movf	(setlcd@number),w
	fcall	_getn
	movwf	(??_setlcd+0)+0
	btfsc	0+(??_setlcd+0)+0,0
	goto	u2171
	goto	u2170
	
u2171:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	goto	u2184
u2170:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
u2184:
	line	75
;mod2.c: 75: RD2=getn(number,1);
	clrf	(?_getn)
	bsf	status,0
	rlf	(?_getn),f
	movf	(setlcd@number),w
	fcall	_getn
	movwf	(??_setlcd+0)+0
	btfsc	0+(??_setlcd+0)+0,0
	goto	u2191
	goto	u2190
	
u2191:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	goto	u2204
u2190:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
u2204:
	line	76
;mod2.c: 76: RD1=getn(number,2);
	movlw	(02h)
	movwf	(??_setlcd+0)+0
	movf	(??_setlcd+0)+0,w
	movwf	(?_getn)
	movf	(setlcd@number),w
	fcall	_getn
	movwf	(??_setlcd+1)+0
	btfsc	0+(??_setlcd+1)+0,0
	goto	u2211
	goto	u2210
	
u2211:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u2224
u2210:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u2224:
	line	77
;mod2.c: 77: RD0=getn(number,3);
	movlw	(03h)
	movwf	(??_setlcd+0)+0
	movf	(??_setlcd+0)+0,w
	movwf	(?_getn)
	movf	(setlcd@number),w
	fcall	_getn
	movwf	(??_setlcd+1)+0
	btfsc	0+(??_setlcd+1)+0,0
	goto	u2231
	goto	u2230
	
u2231:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u2244
u2230:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u2244:
	line	78
;mod2.c: 78: RC3=getn(number,4);
	movlw	(04h)
	movwf	(??_setlcd+0)+0
	movf	(??_setlcd+0)+0,w
	movwf	(?_getn)
	movf	(setlcd@number),w
	fcall	_getn
	movwf	(??_setlcd+1)+0
	btfsc	0+(??_setlcd+1)+0,0
	goto	u2251
	goto	u2250
	
u2251:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u2264
u2250:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u2264:
	line	79
;mod2.c: 79: RC2=getn(number,5);
	movlw	(05h)
	movwf	(??_setlcd+0)+0
	movf	(??_setlcd+0)+0,w
	movwf	(?_getn)
	movf	(setlcd@number),w
	fcall	_getn
	movwf	(??_setlcd+1)+0
	btfsc	0+(??_setlcd+1)+0,0
	goto	u2271
	goto	u2270
	
u2271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u2284
u2270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u2284:
	line	80
;mod2.c: 80: RC1=getn(number,6);
	movlw	(06h)
	movwf	(??_setlcd+0)+0
	movf	(??_setlcd+0)+0,w
	movwf	(?_getn)
	movf	(setlcd@number),w
	fcall	_getn
	movwf	(??_setlcd+1)+0
	btfsc	0+(??_setlcd+1)+0,0
	goto	u2291
	goto	u2290
	
u2291:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u2304
u2290:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u2304:
	line	81
;mod2.c: 81: RC0=getn(number,7);
	movlw	(07h)
	movwf	(??_setlcd+0)+0
	movf	(??_setlcd+0)+0,w
	movwf	(?_getn)
	movf	(setlcd@number),w
	fcall	_getn
	movwf	(??_setlcd+1)+0
	btfsc	0+(??_setlcd+1)+0,0
	goto	u2311
	goto	u2310
	
u2311:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u2324
u2310:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u2324:
	line	84
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_setlcd
	__end_of_setlcd:
;; =============== function _setlcd ends ============

	signat	_setlcd,4216
	global	_getn
psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:

;; *************** function _getn *****************
;; Defined at:
;;		line 63 in file "C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  n               1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[COMMON] unsigned char 
;;  tmp             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setlcd
;; This function uses a non-reentrant model
;;
psect	text113
	file	"C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
	line	63
	global	__size_of_getn
	__size_of_getn	equ	__end_of_getn-_getn
	
_getn:	
	opt	stack 6
; Regs used in _getn: [wreg+status,2+status,0]
;getn@c stored from wreg
	movwf	(getn@c)
	line	64
	
l1432:	
;mod2.c: 64: unsigned char tmp=1<<n;
	movlw	(01h)
	movwf	(??_getn+0)+0
	incf	(getn@n),w
	goto	u24
u25:
	clrc
	rlf	(??_getn+0)+0,f
u24:
	addlw	-1
	skipz
	goto	u25
	movf	0+(??_getn+0)+0,w
	movwf	(??_getn+1)+0
	movf	(??_getn+1)+0,w
	movwf	(getn@tmp)
	line	65
;mod2.c: 65: return (c & tmp)>>n;
	movf	(getn@c),w
	andwf	(getn@tmp),w
	movwf	(??_getn+0)+0
	incf	(getn@n),w
	goto	u34
u35:
	clrc
	rrf	(??_getn+0)+0,f
u34:
	addlw	-1
	skipz
	goto	u35
	movf	0+(??_getn+0)+0,w
	goto	l1043
	
l1434:	
	line	66
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_getn
	__end_of_getn:
;; =============== function _getn ends ============

	signat	_getn,8313
	global	_delay
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:

;; *************** function _delay *****************
;; Defined at:
;;		line 8 in file "C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
;; Parameters:    Size  Location     Type
;;  i               2    0[COMMON] unsigned int 
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
;;		_latch
;; This function uses a non-reentrant model
;;
psect	text114
	file	"C:\PIC\PROJECTS\Training_Project\Code\test\mod2.c"
	line	8
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	9
	
l1428:	
;mod2.c: 9: while(i-->0);
	goto	l1430
	
l1032:	
	goto	l1430
	
l1031:	
	
l1430:	
	movlw	low(01h)
	subwf	(delay@i),f
	movlw	high(01h)
	skipc
	decf	(delay@i+1),f
	subwf	(delay@i+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@i+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay@i)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1430
u10:
	goto	l1034
	
l1033:	
	line	10
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
