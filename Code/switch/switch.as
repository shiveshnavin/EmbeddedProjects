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
	FNROOT	_main
	global	_PORTC
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RD0
_RD0	set	64
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"switch.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	main@ctr
main@ctr:	; 2 bytes @ 0x0
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;; (0) _main                                                 2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      2       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\switch\sw4.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ctr             2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\switch\sw4.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	13
	
l1403:	
;sw4.c: 13: int ctr=0;
	clrf	(main@ctr)
	clrf	(main@ctr+1)
	line	14
;sw4.c: 14: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	15
	
l1405:	
;sw4.c: 15: TRISD=0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	17
	
l1407:	
;sw4.c: 17: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	18
	
l1409:	
;sw4.c: 18: PORTD=0x00;
	clrf	(8)	;volatile
	goto	l1411
	line	20
;sw4.c: 20: while(1){
	
l1025:	
	line	22
	
l1411:	
;sw4.c: 22: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u11
	goto	u10
u11:
	goto	l1421
u10:
	goto	l1027
	line	24
	
l1413:	
;sw4.c: 23: {
;sw4.c: 24: while(RD0);
	goto	l1027
	
l1028:	
	
l1027:	
	btfsc	(64/8),(64)&7
	goto	u21
	goto	u20
u21:
	goto	l1027
u20:
	goto	l1415
	
l1029:	
	line	25
	
l1415:	
;sw4.c: 25: if(ctr==0)
	movf	((main@ctr+1)),w
	iorwf	((main@ctr)),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1419
u30:
	line	27
	
l1417:	
;sw4.c: 26: {
;sw4.c: 27: ctr=1;
	movlw	low(01h)
	movwf	(main@ctr)
	movlw	high(01h)
	movwf	((main@ctr))+1
	line	28
;sw4.c: 28: }
	goto	l1421
	line	29
	
l1030:	
	line	30
	
l1419:	
;sw4.c: 29: else{
;sw4.c: 30: ctr=0;
	clrf	(main@ctr)
	clrf	(main@ctr+1)
	goto	l1421
	line	31
	
l1031:	
	goto	l1421
	line	34
	
l1026:	
	line	36
	
l1421:	
;sw4.c: 31: }
;sw4.c: 34: }
;sw4.c: 36: RC0=ctr;
	btfsc	(main@ctr),0
	goto	u41
	goto	u40
	
u41:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u54
u40:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u54:
	goto	l1411
	line	37
	
l1032:	
	line	20
	goto	l1411
	
l1033:	
	line	43
	
l1034:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
