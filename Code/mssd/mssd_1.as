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
	global	main@F1601
	global	main@F1603
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\mssd\mssd_1.c"
	line	5

;initializer for main@F1601
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

	retlw	0EDh
	retlw	0

	retlw	0FDh
	retlw	0

	retlw	087h
	retlw	0

	retlw	0FFh
	retlw	0

	retlw	0EFh
	retlw	0

	line	17

;initializer for main@F1603
	retlw	01h
	retlw	0

	retlw	02h
	retlw	0

	retlw	04h
	retlw	0

	retlw	08h
	retlw	0

	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"mssd_1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\mssd\mssd_1.c"
	line	5
main@F1601:
       ds      20

psect	dataBANK0
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\mssd\mssd_1.c"
	line	17
main@F1603:
       ds      8

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
	movlw low(__pdataBANK0+28)
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@max
main@max:	; 20 bytes @ 0x0
	ds	20
	global	main@po
main@po:	; 8 bytes @ 0x14
	ds	8
	global	main@x
main@x:	; 2 bytes @ 0x1C
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x1E
	ds	2
;;Data sizes: Strings 0, constant 0, data 28, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     32      60
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                38    38      0     118
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     32    32      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
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
;;DATA                 0      0      40      12        0.0%
;;ABS                  0      0      40       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     20      3C       5       75.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\mssd\mssd_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  max            20    0[BANK0 ] int [10]
;;  po              8   20[BANK0 ] int [4]
;;  i               2   30[BANK0 ] int 
;;  x               2   28[BANK0 ] int 
;;  press           2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      32       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      32       0       0       0
;;Total ram usage:       36 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"Z:\home\shivesh\Proteus 7.7 Professional\PROJECTS\Training_Project\Code\mssd\mssd_1.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	16
	
l2198:	
;mssd_1.c: 4: int press;
;mssd_1.c: 5: int max[]={
;mssd_1.c: 6: 0x3F,
;mssd_1.c: 7: 0x06,
;mssd_1.c: 8: 0x5B,
;mssd_1.c: 9: 0x4F,
;mssd_1.c: 10: 0x66,
;mssd_1.c: 11: 0b11101101,
;mssd_1.c: 12: 0b11111101,
;mssd_1.c: 13: 0b10000111,
;mssd_1.c: 14: 0b11111111,
;mssd_1.c: 15: 0b11101111
;mssd_1.c: 16: };
	movlw	(main@max)&0ffh
	movwf	fsr0
	movlw	low(main@F1601)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2190:
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
	goto	u2190
	line	17
;mssd_1.c: 17: int po[]={0b00000001,0b00000010,0b00000100,0b00001000};
	movlw	(main@po)&0ffh
	movwf	fsr0
	movlw	low(main@F1603)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u2200:
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
	goto	u2200
	line	19
	
l2200:	
;mssd_1.c: 19: int i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	20
	
l2202:	
;mssd_1.c: 20: int x=40;
	movlw	low(028h)
	movwf	(main@x)
	movlw	high(028h)
	movwf	((main@x))+1
	line	21
	
l2204:	
;mssd_1.c: 21: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	22
	
l2206:	
;mssd_1.c: 22: TRISD=0x00;
	clrf	(136)^080h	;volatile
	goto	l2208
	line	23
;mssd_1.c: 23: while(1){
	
l1029:	
	line	25
	
l2208:	
;mssd_1.c: 25: for(i=0;i<4;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2210:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2215
	movlw	low(04h)
	subwf	(main@i),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l2214
u2210:
	goto	l2208
	
l2212:	
	goto	l2208
	
l1030:	
	line	27
	
l2214:	
;mssd_1.c: 27: PORTC=0xFF;;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	29
	
l2216:	
;mssd_1.c: 29: PORTD=po[i];
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@po&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	31
;mssd_1.c: 31: while(x-->0);
	goto	l2218
	
l1033:	
	goto	l2218
	
l1032:	
	
l2218:	
	movlw	low(-1)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(-1)
	addwf	(main@x+1),f
	btfss	((main@x+1)),7
	goto	u2221
	goto	u2220
u2221:
	goto	l2218
u2220:
	goto	l2220
	
l1034:	
	line	32
	
l2220:	
;mssd_1.c: 32: x=100;
	movlw	low(064h)
	movwf	(main@x)
	movlw	high(064h)
	movwf	((main@x))+1
	line	25
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2222:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(04h)
	subwf	(main@i),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l2214
u2230:
	goto	l2208
	
l1031:	
	goto	l2208
	line	34
	
l1035:	
	line	23
	goto	l2208
	
l1036:	
	line	36
	
l1037:	
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
