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
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	_isr,i1_delay
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_PORTC
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_TMR0
_TMR0	set	1
	global	_GIE
_GIE	set	95
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"intr_led.as"
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
	global	?_isr
?_isr:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?i1_delay
?i1_delay:	; 0 bytes @ 0x0
	global	i1delay@x
i1delay@x:	; 2 bytes @ 0x0
	ds	2
	global	??_isr
??_isr:	; 0 bytes @ 0x2
	global	??i1_delay
??i1_delay:	; 0 bytes @ 0x2
	ds	4
	global	?_delay
?_delay:	; 0 bytes @ 0x6
	global	delay@x
delay@x:	; 2 bytes @ 0x6
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x8
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
;;   _main->_delay
;;
;; Critical Paths under _isr in COMMON
;;
;;   _isr->i1_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _isr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _isr in BANK2
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
;; (0) _main                                                 0     0      0      15
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
;;                                              6 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _isr                                                  4     4      0      60
;;                                              2 COMMON     4     4      0
;;                            i1_delay
;; ---------------------------------------------------------------------------------
;; (3) i1_delay                                              2     0      2      60
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;
;; _isr (ROOT)
;;   i1_delay
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
;;STACK                0      0       5       2        0.0%
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
;;		line 19 in file "Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\intr\intr_led_1.c"
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
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\intr\intr_led_1.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l2192:	
;intr_led_1.c: 21: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	22
;intr_led_1.c: 22: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	23
;intr_led_1.c: 23: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	24
;intr_led_1.c: 24: PORTD=0x00;
	clrf	(8)	;volatile
	line	26
	
l2194:	
;intr_led_1.c: 26: OPTION_REG=0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	27
	
l2196:	
;intr_led_1.c: 27: TMR0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	28
	
l2198:	
;intr_led_1.c: 28: T0IF=0;
	bcf	(90/8),(90)&7
	line	30
	
l2200:	
;intr_led_1.c: 30: GIE=1;
	bsf	(95/8),(95)&7
	line	31
	
l2202:	
;intr_led_1.c: 31: T0IE=1;
	bsf	(93/8),(93)&7
	goto	l2204
	line	33
;intr_led_1.c: 33: while(1)
	
l1034:	
	line	35
	
l2204:	
;intr_led_1.c: 34: {
;intr_led_1.c: 35: PORTC=~PORTD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(8),w	;volatile
	movwf	(7)	;volatile
	line	36
	
l2206:	
;intr_led_1.c: 36: delay(20000);
	movlw	low(04E20h)
	movwf	(?_delay)
	movlw	high(04E20h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2204
	line	38
	
l1035:	
	line	33
	goto	l2204
	
l1036:	
	line	40
	
l1037:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:

;; *************** function _delay *****************
;; Defined at:
;;		line 4 in file "Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\intr\intr_led_1.c"
;; Parameters:    Size  Location     Type
;;  x               2    6[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text74
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\intr\intr_led_1.c"
	line	4
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	5
	
l1406:	
;intr_led_1.c: 5: while(x-->0);
	goto	l1408
	
l1026:	
	goto	l1408
	
l1025:	
	
l1408:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1408
u10:
	goto	l1028
	
l1027:	
	line	6
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_isr
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:

;; *************** function _isr *****************
;; Defined at:
;;		line 10 in file "Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\intr\intr_led_1.c"
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
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_delay
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text75
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\intr\intr_led_1.c"
	line	10
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 5
; Regs used in _isr: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+0)
	movf	fsr0,w
	movwf	(??_isr+1)
	movf	pclath,w
	movwf	(??_isr+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text75
	line	11
	
i1l1410:	
;intr_led_1.c: 11: T0IF=0;
	bcf	(90/8),(90)&7
	line	12
	
i1l1412:	
;intr_led_1.c: 12: TMR0=0;
	clrf	(1)	;volatile
	line	13
	
i1l1414:	
;intr_led_1.c: 13: PORTD=~PORTD;
	comf	(8),f	;volatile
	line	14
	
i1l1416:	
;intr_led_1.c: 14: delay(100);
	movlw	low(064h)
	movwf	(?i1_delay)
	movlw	high(064h)
	movwf	((?i1_delay))+1
	fcall	i1_delay
	line	16
	
i1l1031:	
	movf	(??_isr+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_isr+2),w
	movwf	pclath
	movf	(??_isr+1),w
	movwf	fsr0
	swapf	(??_isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,88
	global	i1_delay
psect	text76,local,class=CODE,delta=2
global __ptext76
__ptext76:

;; *************** function i1_delay *****************
;; Defined at:
;;		line 4 in file "Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\intr\intr_led_1.c"
;; Parameters:    Size  Location     Type
;;  delay           2    0[COMMON] unsigned int 
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
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text76
	file	"Z:\home\shivesh\Proteus 7.7 Professional\BIN\PROJECTS\Training_Project\Code\intr\intr_led_1.c"
	line	4
	global	__size_ofi1_delay
	__size_ofi1_delay	equ	__end_ofi1_delay-i1_delay
	
i1_delay:	
	opt	stack 5
; Regs used in i1_delay: [wreg]
	line	5
	
i1l2188:	
;intr_led_1.c: 5: while(x-->0);
	goto	i1l2190
	
i1l1026:	
	goto	i1l2190
	
i1l1025:	
	
i1l2190:	
	movlw	low(01h)
	subwf	(i1delay@x),f
	movlw	high(01h)
	skipc
	decf	(i1delay@x+1),f
	subwf	(i1delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((i1delay@x+1)),w
	skipz
	goto	u216_25
	movlw	low(0FFFFh)
	xorwf	((i1delay@x)),w
u216_25:

	skipz
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l2190
u216_20:
	goto	i1l1028
	
i1l1027:	
	line	6
	
i1l1028:	
	return
	opt stack 0
GLOBAL	__end_ofi1_delay
	__end_ofi1_delay:
;; =============== function i1_delay ends ============

	signat	i1_delay,88
psect	text77,local,class=CODE,delta=2
global __ptext77
__ptext77:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
