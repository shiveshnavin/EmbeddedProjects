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
	FNCALL	_main,_initlcd
	FNCALL	_main,_initkeypad
	FNCALL	_main,_getlogicseq
	FNCALL	_getlogicseq,_scroll
	FNCALL	_getlogicseq,_write
	FNCALL	_getlogicseq,_scan
	FNCALL	_getlogicseq,_startswitch
	FNCALL	_getlogicseq,_strcpy
	FNCALL	_getlogicseq,_itoaa
	FNCALL	_getlogicseq,_strcat
	FNCALL	_startswitch,_init_fun
	FNCALL	_startswitch,_strcpy
	FNCALL	_startswitch,_strcmp
	FNCALL	_startswitch,_write
	FNCALL	_startswitch,_check
	FNCALL	_scroll,_write
	FNCALL	_scroll,_delay
	FNCALL	_scroll,_cmd
	FNCALL	_init_fun,_write
	FNCALL	_write,_clearlcd
	FNCALL	_write,_cmd
	FNCALL	_write,_dat
	FNCALL	_clearlcd,_cmd
	FNCALL	_scan,_actrow
	FNCALL	_initlcd,_cmd
	FNCALL	_actrow,_resetout
	FNCALL	_actrow,_delay
	FNCALL	_dat,_setLCD
	FNCALL	_dat,_delay
	FNCALL	_cmd,_setLCD
	FNCALL	_cmd,_delay
	FNCALL	_itoaa,___wmul
	FNCALL	_itoaa,___awdiv
	FNCALL	_itoaa,___awmod
	FNROOT	_main
	global	_logic_d4
	global	_lo
	global	_logic_d1
	global	_logic_d2
	global	_logic_d3
	global	_plo
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	113

;initializer for _logic_d4
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	line	114

;initializer for _lo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
	line	110

;initializer for _logic_d1
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	111

;initializer for _logic_d2
	retlw	030h
	retlw	031h
	retlw	030h
	retlw	0
	retlw	0
	line	112

;initializer for _logic_d3
	retlw	030h
	retlw	031h
	retlw	030h
	retlw	0
	retlw	0
	line	115

;initializer for _plo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
	global	setLCD@size
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	556
setLCD@size:
	retlw	010h
	retlw	0

	global	setLCD@size
	global	_dev
	global	_done_init
	global	_pdev
	global	getlogicseq@F1264
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
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
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	
STR_4:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	33	;'!'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	71	;'G'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	66	;'B'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	85	;'U'
	retlw	84	;'T'
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_7:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	49	;'1'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_10:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_13:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	51	;'3'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	83	;'S'
	retlw	87	;'W'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	32	;' '
	retlw	50	;'2'
	retlw	46	;'.'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	71	;'G'
	retlw	0
psect	strings
	
STR_1:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_6:	
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_16:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_24:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_20:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_28:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_18:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_26:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_22:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_30:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_17:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_25:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_21:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_29:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_19:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_27:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_23:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_31:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_9:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	0
psect	strings
STR_2	equ	STR_16+1
STR_3	equ	STR_16+1
STR_12	equ	STR_9+0
STR_15	equ	STR_9+0
STR_8	equ	STR_7+19
STR_11	equ	STR_7+19
STR_14	equ	STR_7+19
	file	"prev1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dev:
       ds      2

_done_init:
       ds      2

_pdev:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	114
_lo:
       ds      5

psect	dataBANK0
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	110
_logic_d1:
       ds      5

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	111
_logic_d2:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	112
_logic_d3:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	115
_plo:
       ds      5

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
getlogicseq@F1264:
       ds      16

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	113
_logic_d4:
       ds      5

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+010h)
	fcall	clear_ram
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
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK3
	movlw low(__pdataBANK3+5)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+15)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+10)
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
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	getlogicseq@str
getlogicseq@str:	; 32 bytes @ 0x0
	ds	32
	global	getlogicseq@bf
getlogicseq@bf:	; 2 bytes @ 0x20
	ds	2
	global	getlogicseq@snum
getlogicseq@snum:	; 16 bytes @ 0x22
	ds	16
	global	getlogicseq@f1
getlogicseq@f1:	; 2 bytes @ 0x32
	ds	2
	global	getlogicseq@f2
getlogicseq@f2:	; 2 bytes @ 0x34
	ds	2
	global	getlogicseq@f3
getlogicseq@f3:	; 2 bytes @ 0x36
	ds	2
	global	getlogicseq@nf
getlogicseq@nf:	; 2 bytes @ 0x38
	ds	2
	global	getlogicseq@wf
getlogicseq@wf:	; 2 bytes @ 0x3A
	ds	2
	global	getlogicseq@ccount
getlogicseq@ccount:	; 2 bytes @ 0x3C
	ds	2
	global	getlogicseq@num
getlogicseq@num:	; 2 bytes @ 0x3E
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_initlcd
?_initlcd:	; 0 bytes @ 0x0
	global	?_initkeypad
?_initkeypad:	; 0 bytes @ 0x0
	global	??_initkeypad
??_initkeypad:	; 0 bytes @ 0x0
	global	?_getlogicseq
?_getlogicseq:	; 0 bytes @ 0x0
	global	?_setLCD
?_setLCD:	; 0 bytes @ 0x0
	global	?_init_fun
?_init_fun:	; 0 bytes @ 0x0
	global	?_startswitch
?_startswitch:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_clearlcd
?_clearlcd:	; 0 bytes @ 0x0
	global	?_resetout
?_resetout:	; 0 bytes @ 0x0
	global	??_resetout
??_resetout:	; 0 bytes @ 0x0
	global	?_strcpy
?_strcpy:	; 1 bytes @ 0x0
	global	?_strcat
?_strcat:	; 1 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?_check
?_check:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	check@logic
check@logic:	; 1 bytes @ 0x0
	global	strcat@from
strcat@from:	; 1 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	setLCD@number
setLCD@number:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 2 bytes @ 0x0
	global	strcpy@from
strcpy@from:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_strcat
??_strcat:	; 0 bytes @ 0x1
	ds	1
	global	??_strcpy
??_strcpy:	; 0 bytes @ 0x2
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	??_setLCD
??_setLCD:	; 0 bytes @ 0x2
	global	?_actrow
?_actrow:	; 0 bytes @ 0x2
	global	??_check
??_check:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	strcat@to
strcat@to:	; 1 bytes @ 0x2
	global	actrow@n
actrow@n:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	check@input
check@input:	; 1 bytes @ 0x3
	global	strcat@cp
strcat@cp:	; 1 bytes @ 0x3
	ds	1
	global	??_actrow
??_actrow:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	?_scan
?_scan:	; 2 bytes @ 0x4
	global	check@i
check@i:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_scan
??_scan:	; 0 bytes @ 0x6
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x6
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?_cmd
?_cmd:	; 0 bytes @ 0x8
	global	?_dat
?_dat:	; 0 bytes @ 0x8
	global	cmd@Command
cmd@Command:	; 2 bytes @ 0x8
	global	dat@Command
dat@Command:	; 2 bytes @ 0x8
	ds	1
	global	?_itoaa
?_itoaa:	; 2 bytes @ 0x9
	global	itoaa@value
itoaa@value:	; 2 bytes @ 0x9
	ds	1
	global	??_initlcd
??_initlcd:	; 0 bytes @ 0xA
	global	??_write
??_write:	; 0 bytes @ 0xA
	global	??_cmd
??_cmd:	; 0 bytes @ 0xA
	global	??_clearlcd
??_clearlcd:	; 0 bytes @ 0xA
	global	??_dat
??_dat:	; 0 bytes @ 0xA
	ds	1
	global	itoaa@ptr
itoaa@ptr:	; 1 bytes @ 0xB
	ds	1
	global	??_itoaa
??_itoaa:	; 0 bytes @ 0xC
	global	write@i
write@i:	; 2 bytes @ 0xC
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xE
	global	??_init_fun
??_init_fun:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	itoaa@count
itoaa@count:	; 2 bytes @ 0x0
	global	setLCD@vbool
setLCD@vbool:	; 32 bytes @ 0x0
	ds	2
	global	itoaa@temp
itoaa@temp:	; 2 bytes @ 0x2
	ds	30
	global	setLCD@i
setLCD@i:	; 2 bytes @ 0x20
	ds	2
	global	?_write
?_write:	; 0 bytes @ 0x22
	global	write@str
write@str:	; 2 bytes @ 0x22
	ds	2
	global	write@line
write@line:	; 2 bytes @ 0x24
	ds	2
	global	write@erase
write@erase:	; 2 bytes @ 0x26
	ds	2
	global	?_scroll
?_scroll:	; 0 bytes @ 0x28
	global	??_startswitch
??_startswitch:	; 0 bytes @ 0x28
	global	scroll@loops
scroll@loops:	; 2 bytes @ 0x28
	ds	2
	global	??_scroll
??_scroll:	; 0 bytes @ 0x2A
	ds	3
	global	scroll@st
scroll@st:	; 2 bytes @ 0x2D
	ds	2
	global	scroll@en
scroll@en:	; 2 bytes @ 0x2F
	ds	2
	global	scroll@startat
scroll@startat:	; 2 bytes @ 0x31
	ds	2
	global	scroll@endat
scroll@endat:	; 2 bytes @ 0x33
	ds	2
	global	scroll@loopn
scroll@loopn:	; 2 bytes @ 0x35
	ds	2
	global	scroll@str
scroll@str:	; 1 bytes @ 0x37
	ds	1
	global	scroll@len
scroll@len:	; 2 bytes @ 0x38
	ds	2
	global	scroll@i
scroll@i:	; 2 bytes @ 0x3A
	ds	2
	global	??_getlogicseq
??_getlogicseq:	; 0 bytes @ 0x3C
	ds	4
;;Data sizes: Strings 216, constant 2, data 30, bss 22, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     64      80
;; BANK1           80     64      79
;; BANK3           96      0      21
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_strcat	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; ?_itoaa	int  size(1) Largest target is 0
;;
;; ?_strcmp	int  size(1) Largest target is 0
;;
;; ?_strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;		 -> lo(BANK0[5]), plo(BANK1[5]), 
;;
;; strcpy@from	PTR const unsigned char  size(2) Largest target is 20
;;		 -> STR_14(CODE[1]), STR_13(CODE[20]), STR_11(CODE[1]), STR_10(CODE[20]), 
;;		 -> STR_8(CODE[1]), STR_7(CODE[20]), STR_2(CODE[4]), lo(BANK0[5]), 
;;
;; strcpy@to	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;		 -> lo(BANK0[5]), plo(BANK1[5]), 
;;
;; strcpy@cp	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;		 -> lo(BANK0[5]), plo(BANK1[5]), 
;;
;; strcmp@s2	PTR const unsigned char  size(2) Largest target is 5
;;		 -> STR_31(CODE[5]), STR_30(CODE[5]), STR_29(CODE[5]), STR_28(CODE[5]), 
;;		 -> STR_27(CODE[5]), STR_26(CODE[5]), STR_25(CODE[5]), STR_24(CODE[5]), 
;;		 -> STR_23(CODE[5]), STR_22(CODE[5]), STR_21(CODE[5]), STR_20(CODE[5]), 
;;		 -> STR_19(CODE[5]), STR_18(CODE[5]), STR_17(CODE[5]), STR_16(CODE[5]), 
;;		 -> STR_3(CODE[4]), plo(BANK1[5]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 5
;;		 -> lo(BANK0[5]), 
;;
;; strcat@from	PTR const unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; strcat@to	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; strcat@cp	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; scroll@str	PTR unsigned char  size(1) Largest target is 38
;;		 -> STR_4(CODE[38]), 
;;
;; write@str	PTR unsigned char  size(2) Largest target is 38
;;		 -> STR_15(CODE[4]), STR_12(CODE[4]), STR_9(CODE[4]), getlogicseq@str(BANK1[32]), 
;;		 -> STR_6(CODE[8]), STR_5(CODE[15]), STR_4(CODE[38]), logic_d3(BANK1[5]), 
;;		 -> logic_d2(BANK1[5]), logic_d1(BANK0[5]), lo(BANK0[5]), STR_1(CODE[11]), 
;;
;; itoaa@ptr	PTR unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; sp__strcat	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; sp__strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;		 -> lo(BANK0[5]), plo(BANK1[5]), 
;;
;; check@logic	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; check@input	PTR unsigned char  size(1) Largest target is 5
;;		 -> lo(BANK0[5]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _getlogicseq->_write
;;   _startswitch->_write
;;   _scroll->_write
;;   _init_fun->_write
;;   _write->_cmd
;;   _write->_dat
;;   _clearlcd->_cmd
;;   _scan->_actrow
;;   _initlcd->_cmd
;;   _actrow->_delay
;;   _dat->_setLCD
;;   _cmd->_setLCD
;;   _itoaa->___awdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_getlogicseq
;;   _getlogicseq->_scroll
;;   _startswitch->_write
;;   _scroll->_write
;;   _init_fun->_write
;;   _dat->_setLCD
;;   _cmd->_setLCD
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_getlogicseq
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
;; (0) _main                                                 0     0      0    8561
;;                            _initlcd
;;                         _initkeypad
;;                        _getlogicseq
;; ---------------------------------------------------------------------------------
;; (1) _getlogicseq                                         68    68      0    8197
;;                                             60 BANK0      4     4      0
;;                                              0 BANK1     64    64      0
;;                             _scroll
;;                              _write
;;                               _scan
;;                        _startswitch
;;                             _strcpy
;;                              _itoaa
;;                             _strcat
;; ---------------------------------------------------------------------------------
;; (2) _startswitch                                          1     1      0    2749
;;                                             40 BANK0      1     1      0
;;                           _init_fun
;;                             _strcpy
;;                             _strcmp
;;                              _write
;;                              _check
;; ---------------------------------------------------------------------------------
;; (2) _scroll                                              52    50      2    1820
;;                                             40 BANK0     20    18      2
;;                              _write
;;                              _delay
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (3) _init_fun                                             0     0      0    1226
;;                              _write
;; ---------------------------------------------------------------------------------
;; (3) _write                                               10     4      6    1226
;;                                             10 COMMON     4     4      0
;;                                             34 BANK0      6     0      6
;;                           _clearlcd
;;                                _cmd
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (4) _clearlcd                                             0     0      0     364
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (2) _scan                                                 2     0      2     110
;;                                              4 COMMON     2     0      2
;;                             _actrow
;; ---------------------------------------------------------------------------------
;; (1) _initlcd                                              0     0      0     364
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (3) _actrow                                               2     0      2     110
;;                                              2 COMMON     2     0      2
;;                           _resetout
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (4) _dat                                                  2     0      2     364
;;                                              8 COMMON     2     0      2
;;                             _setLCD
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (4) _cmd                                                  2     0      2     364
;;                                              8 COMMON     2     0      2
;;                             _setLCD
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _itoaa                                                8     5      3    1078
;;                                              9 COMMON     4     1      3
;;                                              0 BANK0      4     4      0
;;                             ___wmul
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (4) _resetout                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (6) _setLCD                                              42    40      2     320
;;                                              0 COMMON     8     6      2
;;                                              0 BANK0     34    34      0
;; ---------------------------------------------------------------------------------
;; (5) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (2) _strcat                                               4     3      1      96
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (4) _strcmp                                               8     6      2      89
;;                                              0 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (3) _strcpy                                               7     5      2      73
;;                                              0 COMMON     7     5      2
;; ---------------------------------------------------------------------------------
;; (3) _check                                                6     4      2     135
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _initkeypad                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initlcd
;;     _cmd
;;       _setLCD
;;       _delay
;;   _initkeypad
;;   _getlogicseq
;;     _scroll
;;       _write
;;         _clearlcd
;;           _cmd
;;             _setLCD
;;             _delay
;;         _cmd
;;           _setLCD
;;           _delay
;;         _dat
;;           _setLCD
;;           _delay
;;       _delay
;;       _cmd
;;         _setLCD
;;         _delay
;;     _write
;;       _clearlcd
;;         _cmd
;;           _setLCD
;;           _delay
;;       _cmd
;;         _setLCD
;;         _delay
;;       _dat
;;         _setLCD
;;         _delay
;;     _scan
;;       _actrow
;;         _resetout
;;         _delay
;;     _startswitch
;;       _init_fun
;;         _write
;;           _clearlcd
;;             _cmd
;;               _setLCD
;;               _delay
;;           _cmd
;;             _setLCD
;;             _delay
;;           _dat
;;             _setLCD
;;             _delay
;;       _strcpy
;;       _strcmp
;;       _write
;;         _clearlcd
;;           _cmd
;;             _setLCD
;;             _delay
;;         _cmd
;;           _setLCD
;;           _delay
;;         _dat
;;           _setLCD
;;           _delay
;;       _check
;;     _strcpy
;;     _itoaa
;;       ___wmul
;;       ___awdiv
;;       ___awmod
;;     _strcat
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      15       9       21.9%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50     40      4F       7       98.8%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      CA      12        0.0%
;;ABS                  0      0      C2       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       8       2        0.0%
;;BANK0               50     40      50       5      100.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 82 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  684[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_initlcd
;;		_initkeypad
;;		_getlogicseq
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	87
	
l3532:	
;prev11.c: 87: initlcd();
	fcall	_initlcd
	line	88
	
l3534:	
;prev11.c: 88: initkeypad();
	fcall	_initkeypad
	goto	l3536
	line	92
;prev11.c: 92: while(1){
	
l685:	
	line	94
	
l3536:	
;prev11.c: 94: getlogicseq();
	fcall	_getlogicseq
	goto	l3536
	line	95
	
l686:	
	line	92
	goto	l3536
	
l687:	
	line	101
	
l688:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_getlogicseq
psect	text532,local,class=CODE,delta=2
global __ptext532
__ptext532:

;; *************** function _getlogicseq *****************
;; Defined at:
;;		line 194 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  str            32    0[BANK1 ] unsigned char [32]
;;  snum           16   34[BANK1 ] unsigned char [16]
;;  num             2   62[BANK1 ] int 
;;  ccount          2   60[BANK1 ] int 
;;  wf              2   58[BANK1 ] int 
;;  nf              2   56[BANK1 ] int 
;;  f3              2   54[BANK1 ] int 
;;  f2              2   52[BANK1 ] int 
;;  f1              2   50[BANK1 ] int 
;;  bf              2   32[BANK1 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      64       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4      64       0       0
;;Total ram usage:       68 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_scroll
;;		_write
;;		_scan
;;		_startswitch
;;		_strcpy
;;		_itoaa
;;		_strcat
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text532
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	194
	global	__size_of_getlogicseq
	__size_of_getlogicseq	equ	__end_of_getlogicseq-_getlogicseq
	
_getlogicseq:	
	opt	stack 0
; Regs used in _getlogicseq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	197
	
l3344:	
;prev11.c: 197: scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scroll)
	movlw	high(0)
	movwf	((?_scroll))+1
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_scroll
	line	202
	
l3346:	
;prev11.c: 201: int num ;
;prev11.c: 202: char snum[16]="";
	movlw	(getlogicseq@snum)&0ffh
	movwf	fsr0
	movlw	low(getlogicseq@F1264)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	fsr0,w
	movwf	((??_getlogicseq+0)+0+1)
	movlw	16
	movwf	((??_getlogicseq+0)+0+2)
u4460:
	movf	(??_getlogicseq+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_getlogicseq+0)+0+3)
	incf	(??_getlogicseq+0)+0,f
	movf	((??_getlogicseq+0)+0+1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	((??_getlogicseq+0)+0+3),w
	movwf	indf
	incf	((??_getlogicseq+0)+0+1),f
	decfsz	((??_getlogicseq+0)+0+2),f
	goto	u4460
	line	203
	
l3348:	
;prev11.c: 203: int wf=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	line	204
	
l3350:	
;prev11.c: 204: int nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	line	205
	
l3352:	
;prev11.c: 205: int bf=0;
	clrf	(getlogicseq@bf)^080h
	clrf	(getlogicseq@bf+1)^080h
	line	206
	
l3354:	
;prev11.c: 206: int ccount=0;
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	210
	
l3356:	
;prev11.c: 207: char str[32];
;prev11.c: 210: write("1.SWT  2.REPRG",1,1);
	movlw	low((STR_5-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	80h
	movwf	(?_write+1)
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(01h)
	movwf	0+(?_write)+04h
	movlw	high(01h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	211
	
l3358:	
;prev11.c: 211: write("3.RESET",2,0);
	movlw	low((STR_6-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	80h
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	212
	
l3360:	
;prev11.c: 212: int f1=0, f2=0, f3=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@f1)^080h
	clrf	(getlogicseq@f1+1)^080h
	
l3362:	
	clrf	(getlogicseq@f2)^080h
	clrf	(getlogicseq@f2+1)^080h
	
l3364:	
	clrf	(getlogicseq@f3)^080h
	clrf	(getlogicseq@f3+1)^080h
	goto	l3366
	line	213
;prev11.c: 213: while(1)
	
l716:	
	line	216
	
l3366:	
;prev11.c: 214: {
;prev11.c: 216: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	217
	
l3368:	
;prev11.c: 217: if(num==1)
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l717
u4470:
	line	219
	
l3370:	
;prev11.c: 218: {
;prev11.c: 219: f1=1;
	movlw	low(01h)
	movwf	(getlogicseq@f1)^080h
	movlw	high(01h)
	movwf	((getlogicseq@f1)^080h)+1
	line	220
	
l3372:	
;prev11.c: 220: f2=0;
	clrf	(getlogicseq@f2)^080h
	clrf	(getlogicseq@f2+1)^080h
	line	221
	
l3374:	
;prev11.c: 221: f3=0;
	clrf	(getlogicseq@f3)^080h
	clrf	(getlogicseq@f3+1)^080h
	line	222
	
l717:	
	line	223
;prev11.c: 222: }
;prev11.c: 223: if(num==2)
	movlw	02h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4481
	goto	u4480
u4481:
	goto	l718
u4480:
	line	225
	
l3376:	
;prev11.c: 224: {
;prev11.c: 225: f1=0;
	clrf	(getlogicseq@f1)^080h
	clrf	(getlogicseq@f1+1)^080h
	line	226
	
l3378:	
;prev11.c: 226: f2=1;
	movlw	low(01h)
	movwf	(getlogicseq@f2)^080h
	movlw	high(01h)
	movwf	((getlogicseq@f2)^080h)+1
	line	227
	
l3380:	
;prev11.c: 227: f3=0;
	clrf	(getlogicseq@f3)^080h
	clrf	(getlogicseq@f3+1)^080h
	line	228
	
l718:	
	line	229
;prev11.c: 228: }
;prev11.c: 229: if(num==3)
	movlw	03h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4491
	goto	u4490
u4491:
	goto	l3386
u4490:
	line	231
	
l3382:	
;prev11.c: 230: {
;prev11.c: 231: f1=0;
	clrf	(getlogicseq@f1)^080h
	clrf	(getlogicseq@f1+1)^080h
	line	232
;prev11.c: 232: f2=0;
	clrf	(getlogicseq@f2)^080h
	clrf	(getlogicseq@f2+1)^080h
	line	233
	
l3384:	
;prev11.c: 233: f3=1;
	movlw	low(01h)
	movwf	(getlogicseq@f3)^080h
	movlw	high(01h)
	movwf	((getlogicseq@f3)^080h)+1
	goto	l3386
	line	234
	
l719:	
	line	236
	
l3386:	
;prev11.c: 234: }
;prev11.c: 236: if(f1)
	movf	(getlogicseq@f1+1)^080h,w
	iorwf	(getlogicseq@f1)^080h,w
	skipnz
	goto	u4501
	goto	u4500
u4501:
	goto	l3390
u4500:
	line	237
	
l3388:	
;prev11.c: 237: startswitch();
	fcall	_startswitch
	goto	l3366
	line	238
	
l720:	
	
l3390:	
;prev11.c: 238: else if(f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(getlogicseq@f2+1)^080h,w
	iorwf	(getlogicseq@f2)^080h,w
	skipnz
	goto	u4511
	goto	u4510
u4511:
	goto	l3396
u4510:
	goto	l3400
	line	239
	
l3392:	
;prev11.c: 239: goto START_SEQ;
	goto	l3400
	
l3394:	
	goto	l3366
	line	240
	
l722:	
	
l3396:	
;prev11.c: 240: else if(f3)
	movf	(getlogicseq@f3+1)^080h,w
	iorwf	(getlogicseq@f3)^080h,w
	skipnz
	goto	u4521
	goto	u4520
u4521:
	goto	l3366
u4520:
	goto	l726
	line	241
	
l3398:	
;prev11.c: 241: return;
	goto	l726
	
l725:	
	goto	l3366
	line	243
	
l724:	
	goto	l3366
	
l721:	
	goto	l3366
	
l727:	
	line	213
	goto	l3366
	
l728:	
	goto	l3400
	line	246
;prev11.c: 243: }
;prev11.c: 246: START_SEQ:
	
l723:	
	line	248
	
l3400:	
;prev11.c: 248: wf=0;ccount=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	249
	
l3402:	
;prev11.c: 249: strcpy(str,"Enter Logic DEV1:  ");
	movlw	low((STR_7-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	250
	
l3404:	
;prev11.c: 250: write(str,1,1);
	movlw	(getlogicseq@str&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x1/2)
	movwf	(?_write+1)
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(01h)
	movwf	0+(?_write)+04h
	movlw	high(01h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	251
	
l3406:	
;prev11.c: 251: write(logic_d1,2,0);
	movlw	(_logic_d1&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x0/2)
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	goto	l3408
	line	253
;prev11.c: 253: while(1)
	
l729:	
	line	255
	
l3408:	
;prev11.c: 254: {
;prev11.c: 255: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	256
	
l3410:	
;prev11.c: 256: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4531
	goto	u4530
u4531:
	goto	l3414
u4530:
	
l3412:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4541
	goto	u4540
u4541:
	goto	l3428
u4540:
	goto	l3414
	
l732:	
	line	257
	
l3414:	
;prev11.c: 257: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4551
	goto	u4550
u4551:
	goto	l3430
u4550:
	line	259
	
l3416:	
;prev11.c: 258: {
;prev11.c: 259: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4561
	goto	u4560
u4561:
	goto	l734
u4560:
	line	260
	
l3418:	
;prev11.c: 260: strcpy(logic_d1,"");
	movlw	low((STR_8-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_logic_d1)&0ffh
	fcall	_strcpy
	
l734:	
	line	261
;prev11.c: 261: write("---",2,0);
	movlw	low((STR_9-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	80h
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	262
;prev11.c: 262: itoaa(num, snum);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(getlogicseq@num+1)^080h,w
	clrf	(?_itoaa+1)
	addwf	(?_itoaa+1)
	movf	(getlogicseq@num)^080h,w
	clrf	(?_itoaa)
	addwf	(?_itoaa)

	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	0+(?_itoaa)+02h
	fcall	_itoaa
	line	263
	
l3420:	
;prev11.c: 263: strcat(logic_d1,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d1)&0ffh
	fcall	_strcat
	line	264
	
l3422:	
;prev11.c: 264: write( logic_d1,2,0); ;
	movlw	(_logic_d1&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x0/2)
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	265
	
l3424:	
;prev11.c: 265: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	266
	
l3426:	
;prev11.c: 266: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3430
	line	267
	
l733:	
	line	268
;prev11.c: 267: }
;prev11.c: 268: }
	goto	l3430
	line	269
	
l730:	
	line	270
	
l3428:	
;prev11.c: 269: else{
;prev11.c: 270: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3430
	line	271
	
l735:	
	line	272
	
l3430:	
;prev11.c: 271: }
;prev11.c: 272: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4575
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4575:

	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l3434
u4570:
	goto	l3444
	line	273
	
l3432:	
;prev11.c: 273: break;
	goto	l3444
	
l736:	
	line	276
	
l3434:	
;prev11.c: 276: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4581
	goto	u4580
u4581:
	goto	l3440
u4580:
	line	278
	
l3436:	
;prev11.c: 277: {
;prev11.c: 278: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l3408
u4590:
	line	279
	
l3438:	
;prev11.c: 279: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	280
;prev11.c: 280: break;
	goto	l3444
	line	281
	
l739:	
	line	282
;prev11.c: 281: }
;prev11.c: 282: }
	goto	l3408
	line	283
	
l738:	
	
l3440:	
;prev11.c: 283: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4601
	goto	u4600
u4601:
	goto	l3408
u4600:
	line	284
	
l3442:	
;prev11.c: 284: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3408
	line	285
	
l741:	
	goto	l3408
	line	286
	
l740:	
	goto	l3408
	
l742:	
	line	253
	goto	l3408
	
l737:	
	line	289
	
l3444:	
;prev11.c: 285: }
;prev11.c: 286: }
;prev11.c: 289: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	290
	
l3446:	
;prev11.c: 290: strcpy(str,"Enter Logic DEV2:  ");
	movlw	low((STR_10-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	291
	
l3448:	
;prev11.c: 291: write(str,1,1);
	movlw	(getlogicseq@str&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x1/2)
	movwf	(?_write+1)
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(01h)
	movwf	0+(?_write)+04h
	movlw	high(01h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	292
	
l3450:	
;prev11.c: 292: write(logic_d2,2,0);
	movlw	(_logic_d2&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x1/2)
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	goto	l3452
	line	294
;prev11.c: 294: while(1)
	
l743:	
	line	296
	
l3452:	
;prev11.c: 295: {
;prev11.c: 296: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	297
	
l3454:	
;prev11.c: 297: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4611
	goto	u4610
u4611:
	goto	l3458
u4610:
	
l3456:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4621
	goto	u4620
u4621:
	goto	l3472
u4620:
	goto	l3458
	
l746:	
	line	298
	
l3458:	
;prev11.c: 298: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l3474
u4630:
	line	299
	
l3460:	
;prev11.c: 299: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l748
u4640:
	line	300
	
l3462:	
;prev11.c: 300: strcpy(logic_d2,"");
	movlw	low((STR_11-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_logic_d2)&0ffh
	fcall	_strcpy
	
l748:	
	line	301
;prev11.c: 301: write("---",2,0);
	movlw	low((STR_12-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	80h
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	302
;prev11.c: 302: itoaa(num, snum);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(getlogicseq@num+1)^080h,w
	clrf	(?_itoaa+1)
	addwf	(?_itoaa+1)
	movf	(getlogicseq@num)^080h,w
	clrf	(?_itoaa)
	addwf	(?_itoaa)

	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	0+(?_itoaa)+02h
	fcall	_itoaa
	line	303
	
l3464:	
;prev11.c: 303: strcat(logic_d2,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d2)&0ffh
	fcall	_strcat
	line	304
	
l3466:	
;prev11.c: 304: write( logic_d2,2,0); ;
	movlw	(_logic_d2&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x1/2)
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	305
	
l3468:	
;prev11.c: 305: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	306
	
l3470:	
;prev11.c: 306: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3474
	line	307
	
l747:	
	line	308
;prev11.c: 307: }
;prev11.c: 308: }
	goto	l3474
	line	309
	
l744:	
	line	310
	
l3472:	
;prev11.c: 309: else{
;prev11.c: 310: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3474
	line	311
	
l749:	
	line	312
	
l3474:	
;prev11.c: 311: }
;prev11.c: 312: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4655
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4655:

	skipc
	goto	u4651
	goto	u4650
u4651:
	goto	l3478
u4650:
	goto	l3488
	line	313
	
l3476:	
;prev11.c: 313: break;
	goto	l3488
	
l750:	
	line	315
	
l3478:	
;prev11.c: 315: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4661
	goto	u4660
u4661:
	goto	l3484
u4660:
	line	317
	
l3480:	
;prev11.c: 316: {
;prev11.c: 317: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4671
	goto	u4670
u4671:
	goto	l3452
u4670:
	line	318
	
l3482:	
;prev11.c: 318: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	319
;prev11.c: 319: break;
	goto	l3488
	line	320
	
l753:	
	line	321
;prev11.c: 320: }
;prev11.c: 321: }
	goto	l3452
	line	322
	
l752:	
	
l3484:	
;prev11.c: 322: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l3452
u4680:
	line	323
	
l3486:	
;prev11.c: 323: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3452
	line	324
	
l755:	
	goto	l3452
	line	325
	
l754:	
	goto	l3452
	
l756:	
	line	294
	goto	l3452
	
l751:	
	line	328
	
l3488:	
;prev11.c: 324: }
;prev11.c: 325: }
;prev11.c: 328: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	329
	
l3490:	
;prev11.c: 329: strcpy(str,"Enter Logic DEV3:  ");
	movlw	low((STR_13-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	330
	
l3492:	
;prev11.c: 330: write(str,1,1);
	movlw	(getlogicseq@str&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x1/2)
	movwf	(?_write+1)
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(01h)
	movwf	0+(?_write)+04h
	movlw	high(01h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	331
	
l3494:	
;prev11.c: 331: write(logic_d3,2,0);
	movlw	(_logic_d3&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x1/2)
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	goto	l3496
	line	333
;prev11.c: 333: while(1)
	
l757:	
	line	335
	
l3496:	
;prev11.c: 334: {
;prev11.c: 335: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	336
	
l3498:	
;prev11.c: 336: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4691
	goto	u4690
u4691:
	goto	l3502
u4690:
	
l3500:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l3516
u4700:
	goto	l3502
	
l760:	
	line	337
	
l3502:	
;prev11.c: 337: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l3518
u4710:
	line	338
	
l3504:	
;prev11.c: 338: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l762
u4720:
	line	339
	
l3506:	
;prev11.c: 339: strcpy(logic_d3,"");
	movlw	low((STR_14-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_logic_d3)&0ffh
	fcall	_strcpy
	
l762:	
	line	340
;prev11.c: 340: write("---",2,0);
	movlw	low((STR_15-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	80h
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	341
;prev11.c: 341: itoaa(num, snum);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(getlogicseq@num+1)^080h,w
	clrf	(?_itoaa+1)
	addwf	(?_itoaa+1)
	movf	(getlogicseq@num)^080h,w
	clrf	(?_itoaa)
	addwf	(?_itoaa)

	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	0+(?_itoaa)+02h
	fcall	_itoaa
	line	342
	
l3508:	
;prev11.c: 342: strcat(logic_d3,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d3)&0ffh
	fcall	_strcat
	line	343
	
l3510:	
;prev11.c: 343: write( logic_d3,2,0); ;
	movlw	(_logic_d3&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x1/2)
	movwf	(?_write+1)
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	344
	
l3512:	
;prev11.c: 344: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	345
	
l3514:	
;prev11.c: 345: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3518
	line	346
	
l761:	
	line	347
;prev11.c: 346: }
;prev11.c: 347: }
	goto	l3518
	line	348
	
l758:	
	line	349
	
l3516:	
;prev11.c: 348: else{
;prev11.c: 349: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3518
	line	350
	
l763:	
	line	351
	
l3518:	
;prev11.c: 350: }
;prev11.c: 351: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4735
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4735:

	skipc
	goto	u4731
	goto	u4730
u4731:
	goto	l3522
u4730:
	goto	l726
	line	352
	
l3520:	
;prev11.c: 352: break;
	goto	l726
	
l764:	
	line	354
	
l3522:	
;prev11.c: 354: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l3528
u4740:
	line	356
	
l3524:	
;prev11.c: 355: {
;prev11.c: 356: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l3496
u4750:
	line	357
	
l3526:	
;prev11.c: 357: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	358
;prev11.c: 358: break;
	goto	l726
	line	359
	
l767:	
	line	360
;prev11.c: 359: }
;prev11.c: 360: }
	goto	l3496
	line	361
	
l766:	
	
l3528:	
;prev11.c: 361: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4761
	goto	u4760
u4761:
	goto	l3496
u4760:
	line	362
	
l3530:	
;prev11.c: 362: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3496
	line	363
	
l769:	
	goto	l3496
	line	364
	
l768:	
	goto	l3496
	
l770:	
	line	333
	goto	l3496
	
l765:	
	line	410
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_getlogicseq
	__end_of_getlogicseq:
;; =============== function _getlogicseq ends ============

	signat	_getlogicseq,88
	global	_startswitch
psect	text533,local,class=CODE,delta=2
global __ptext533
__ptext533:

;; *************** function _startswitch *****************
;; Defined at:
;;		line 144 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_init_fun
;;		_strcpy
;;		_strcmp
;;		_write
;;		_check
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text533
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	144
	global	__size_of_startswitch
	__size_of_startswitch	equ	__end_of_startswitch-_startswitch
	
_startswitch:	
	opt	stack 0
; Regs used in _startswitch: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	145
	
l3302:	
;prev11.c: 145: init_fun();
	fcall	_init_fun
	line	148
;prev11.c: 148: strcpy(plo,lo);
	movlw	(_lo&0ffh)
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	(_plo)&0ffh
	fcall	_strcpy
	line	149
;prev11.c: 149: strcpy(lo,"000");;
	movlw	low((STR_2-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_lo)&0ffh
	fcall	_strcpy
	line	150
	
l3304:	
;prev11.c: 150: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l3308
u4380:
	line	151
	
l3306:	
;prev11.c: 151: lo[0]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(_lo)
	goto	l3308
	
l701:	
	line	152
	
l3308:	
;prev11.c: 152: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l3312
u4390:
	line	153
	
l3310:	
;prev11.c: 153: lo[1]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+01h
	goto	l3312
	
l702:	
	line	154
	
l3312:	
;prev11.c: 154: if(RC6==1)
	btfss	(62/8),(62)&7
	goto	u4401
	goto	u4400
u4401:
	goto	l3316
u4400:
	line	155
	
l3314:	
;prev11.c: 155: lo[2]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+02h
	goto	l3316
	
l703:	
	line	158
	
l3316:	
;prev11.c: 158: pdev=dev;
	movf	(_dev+1),w
	clrf	(_pdev+1)
	addwf	(_pdev+1)
	movf	(_dev),w
	clrf	(_pdev)
	addwf	(_pdev)

	line	159
	
l3318:	
;prev11.c: 159: dev=0b0000;
	clrf	(_dev)
	clrf	(_dev+1)
	line	161
	
l3320:	
;prev11.c: 161: if(strcmp(lo,plo)!=0&&strcmp(lo,"000")!=0)
	movlw	(_plo&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	iorwf	(0+(?_strcmp)),w
	skipnz
	goto	u4411
	goto	u4410
u4411:
	goto	l711
u4410:
	
l3322:	
	movlw	low((STR_3-__stringbase))
	movwf	(?_strcmp)
	movlw	80h
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	iorwf	(0+(?_strcmp)),w
	skipnz
	goto	u4421
	goto	u4420
u4421:
	goto	l711
u4420:
	line	164
	
l3324:	
;prev11.c: 162: {
;prev11.c: 164: write(lo,1,1);
	movlw	(_lo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x0/2)
	movwf	(?_write+1)
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(01h)
	movwf	0+(?_write)+04h
	movlw	high(01h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	167
;prev11.c: 167: if(check(lo,logic_d1))
	movlw	(_logic_d1)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(?_check)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4431
	goto	u4430
u4431:
	goto	l3328
u4430:
	line	168
	
l3326:	
;prev11.c: 168: dev=dev|0b0001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(01h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3330
	line	169
	
l705:	
	line	170
	
l3328:	
;prev11.c: 169: else
;prev11.c: 170: dev=dev&0b0110;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(06h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3330
	
l706:	
	line	172
	
l3330:	
;prev11.c: 172: if(check(lo,logic_d2))
	movlw	(_logic_d2)&0ffh
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(?_check)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4441
	goto	u4440
u4441:
	goto	l3334
u4440:
	line	173
	
l3332:	
;prev11.c: 173: dev=dev|0b0010;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(02h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3336
	line	174
	
l707:	
	line	175
	
l3334:	
;prev11.c: 174: else
;prev11.c: 175: dev=dev&0b0101;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(05h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3336
	
l708:	
	line	178
	
l3336:	
;prev11.c: 178: if(check(lo,logic_d3))
	movlw	(_logic_d3)&0ffh
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(?_check)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4451
	goto	u4450
u4451:
	goto	l3340
u4450:
	line	179
	
l3338:	
;prev11.c: 179: dev=dev|0b0100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(04h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l710
	line	180
	
l709:	
	line	181
	
l3340:	
;prev11.c: 180: else
;prev11.c: 181: dev=dev&0b0011;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(03h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	
l710:	
	line	186
;prev11.c: 186: PORTA=dev;
	movf	(_dev),w
	movwf	(5)	;volatile
	goto	l711
	line	187
	
l704:	
	goto	l711
	line	188
	
l3342:	
	line	190
;prev11.c: 187: }
;prev11.c: 188: return;
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_startswitch
	__end_of_startswitch:
;; =============== function _startswitch ends ============

	signat	_startswitch,88
	global	_scroll
psect	text534,local,class=CODE,delta=2
global __ptext534
__ptext534:

;; *************** function _scroll *****************
;; Defined at:
;;		line 599 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> STR_4(38), 
;;  loops           2   40[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  str             1   55[BANK0 ] PTR unsigned char 
;;		 -> STR_4(38), 
;;  dest           32    0        unsigned char [32]
;;  endat           2   51[BANK0 ] int 
;;  startat         2   49[BANK0 ] int 
;;  i               2   58[BANK0 ] int 
;;  len             2   56[BANK0 ] int 
;;  loopn           2   53[BANK0 ] int 
;;  en              2   47[BANK0 ] int 
;;  st              2   45[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0      15       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_write
;;		_delay
;;		_cmd
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text534
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	599
	global	__size_of_scroll
	__size_of_scroll	equ	__end_of_scroll-_scroll
	
_scroll:	
	opt	stack 1
; Regs used in _scroll: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;scroll@str stored from wreg
	line	601
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scroll@str)
	
l3262:	
;prev11.c: 601: write(str,1,0); ;
	movf	(scroll@str),w
	movwf	(?_write)
	movlw	80h
	movwf	(?_write+1)
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	602
	
l3264:	
;prev11.c: 602: int loopn=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@loopn)
	clrf	(scroll@loopn+1)
	line	604
	
l3266:	
;prev11.c: 603: int i;
;prev11.c: 604: int len=0;;
	clrf	(scroll@len)
	clrf	(scroll@len+1)
	line	605
	
l3268:	
;prev11.c: 605: int st=0;
	clrf	(scroll@st)
	clrf	(scroll@st+1)
	line	607
;prev11.c: 606: int en;
;prev11.c: 607: while(str[i]!='\0')
	goto	l3272
	
l852:	
	line	608
	
l3270:	
;prev11.c: 608: { i++;
	movlw	low(01h)
	addwf	(scroll@i),f
	skipnc
	incf	(scroll@i+1),f
	movlw	high(01h)
	addwf	(scroll@i+1),f
	line	609
;prev11.c: 609: len++;
	movlw	low(01h)
	addwf	(scroll@len),f
	skipnc
	incf	(scroll@len+1),f
	movlw	high(01h)
	addwf	(scroll@len+1),f
	goto	l3272
	line	610
	
l851:	
	line	607
	
l3272:	
	movf	(scroll@i),w
	addwf	(scroll@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u4331
	goto	u4330
u4331:
	goto	l3270
u4330:
	goto	l3274
	
l853:	
	line	611
	
l3274:	
;prev11.c: 610: }
;prev11.c: 611: en=len-1;
	movf	(scroll@len),w
	addlw	low(-1)
	movwf	(scroll@en)
	movf	(scroll@len+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(scroll@en)
	line	613
	
l3276:	
;prev11.c: 613: if(len>32)
	movf	(scroll@len+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(021h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4345
	movlw	low(021h)
	subwf	(scroll@len),w
u4345:

	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l863
u4340:
	line	617
	
l3278:	
;prev11.c: 614: {
;prev11.c: 616: char dest [32] ;
;prev11.c: 617: int startat=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@startat)
	clrf	(scroll@startat+1)
	line	618
	
l3280:	
;prev11.c: 618: int endat=31;
	movlw	low(01Fh)
	movwf	(scroll@endat)
	movlw	high(01Fh)
	movwf	((scroll@endat))+1
	goto	l3282
	line	619
;prev11.c: 619: START:
	
l855:	
	line	620
	
l3282:	
;prev11.c: 620: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	621
;prev11.c: 621: while(i++<32)
	goto	l3288
	
l857:	
	line	624
	
l3284:	
;prev11.c: 622: {
;prev11.c: 624: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	625
	
l3286:	
;prev11.c: 625: cmd(0x1E);
	movlw	low(01Eh)
	movwf	(?_cmd)
	movlw	high(01Eh)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3288
	line	628
	
l856:	
	line	621
	
l3288:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scroll@i),f
	skipnc
	incf	(scroll@i+1),f
	movlw	high(01h)
	addwf	(scroll@i+1),f
	movf	((scroll@i+1)),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(021h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4355
	movlw	low(021h)
	subwf	((scroll@i)),w
u4355:

	skipc
	goto	u4351
	goto	u4350
u4351:
	goto	l3284
u4350:
	goto	l3290
	
l858:	
	line	630
	
l3290:	
;prev11.c: 628: }
;prev11.c: 630: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	631
;prev11.c: 631: while(i++<32)
	goto	l3296
	
l860:	
	line	634
	
l3292:	
;prev11.c: 632: {
;prev11.c: 634: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	635
	
l3294:	
;prev11.c: 635: cmd(0x18);
	movlw	low(018h)
	movwf	(?_cmd)
	movlw	high(018h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3296
	line	638
	
l859:	
	line	631
	
l3296:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scroll@i),f
	skipnc
	incf	(scroll@i+1),f
	movlw	high(01h)
	addwf	(scroll@i+1),f
	movf	((scroll@i+1)),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(021h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4365
	movlw	low(021h)
	subwf	((scroll@i)),w
u4365:

	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l3292
u4360:
	goto	l3298
	
l861:	
	line	639
	
l3298:	
;prev11.c: 638: }
;prev11.c: 639: if(loopn++<loops)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(scroll@loopn+1),w
	movwf	(??_scroll+0)+0+1
	movf	(scroll@loopn),w
	movwf	(??_scroll+0)+0
	movlw	(01h)
	addwf	(scroll@loopn),f
	skipnc
	incf	(scroll@loopn+1),f
	movf	1+(??_scroll+0)+0,w
	xorlw	80h
	movwf	(??_scroll+2)+0
	movf	(scroll@loops+1),w
	xorlw	80h
	subwf	(??_scroll+2)+0,w
	skipz
	goto	u4375
	movf	(scroll@loops),w
	subwf	0+(??_scroll+0)+0,w
u4375:

	skipnc
	goto	u4371
	goto	u4370
u4371:
	goto	l863
u4370:
	goto	l3282
	line	640
	
l3300:	
;prev11.c: 640: goto START;
	goto	l3282
	
l862:	
	goto	l863
	line	641
	
l854:	
	line	646
	
l863:	
	return
	opt stack 0
GLOBAL	__end_of_scroll
	__end_of_scroll:
;; =============== function _scroll ends ============

	signat	_scroll,8312
	global	_init_fun
psect	text535,local,class=CODE,delta=2
global __ptext535
__ptext535:

;; *************** function _init_fun *****************
;; Defined at:
;;		line 133 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_write
;; This function is called by:
;;		_startswitch
;; This function uses a non-reentrant model
;;
psect	text535
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	133
	global	__size_of_init_fun
	__size_of_init_fun	equ	__end_of_init_fun-_init_fun
	
_init_fun:	
	opt	stack 0
; Regs used in _init_fun: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	134
	
l3252:	
;prev11.c: 134: if(done_init==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_done_init+1)),w
	iorwf	((_done_init)),w
	skipz
	goto	u4321
	goto	u4320
u4321:
	goto	l698
u4320:
	line	137
	
l3254:	
;prev11.c: 135: {
;prev11.c: 137: TRISA=0b110000;
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	138
	
l3256:	
;prev11.c: 138: PORTA=0x0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	139
	
l3258:	
;prev11.c: 139: done_init=1;
	movlw	low(01h)
	movwf	(_done_init)
	movlw	high(01h)
	movwf	((_done_init))+1
	line	140
	
l3260:	
;prev11.c: 140: write("Sensing...",1,1);
	movlw	low((STR_1-__stringbase))
	movwf	(?_write)
	movlw	80h
	movwf	(?_write+1)
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(01h)
	movwf	0+(?_write)+04h
	movlw	high(01h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	goto	l698
	line	141
	
l697:	
	line	142
	
l698:	
	return
	opt stack 0
GLOBAL	__end_of_init_fun
	__end_of_init_fun:
;; =============== function _init_fun ends ============

	signat	_init_fun,88
	global	_write
psect	text536,local,class=CODE,delta=2
global __ptext536
__ptext536:

;; *************** function _write *****************
;; Defined at:
;;		line 578 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  str             2   34[BANK0 ] PTR unsigned char 
;;		 -> STR_15(4), STR_12(4), STR_9(4), getlogicseq@str(32), 
;;		 -> STR_6(8), STR_5(15), STR_4(38), logic_d3(5), 
;;		 -> logic_d2(5), logic_d1(5), lo(5), STR_1(11), 
;;  line            2   36[BANK0 ] int 
;;  erase           2   38[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2   12[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       6       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_clearlcd
;;		_cmd
;;		_dat
;; This function is called by:
;;		_init_fun
;;		_startswitch
;;		_getlogicseq
;;		_scroll
;; This function uses a non-reentrant model
;;
psect	text536
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	578
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 1
; Regs used in _write: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	579
	
l3234:	
;prev11.c: 579: if(erase==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@erase),w
	iorwf	(write@erase+1),w
	skipz
	goto	u4291
	goto	u4290
u4291:
	goto	l3238
u4290:
	line	580
	
l3236:	
;prev11.c: 580: clearlcd();
	fcall	_clearlcd
	goto	l3238
	
l842:	
	line	582
	
l3238:	
;prev11.c: 582: if(line==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@line),w
	iorwf	(write@line+1),w
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l3242
u4300:
	line	583
	
l3240:	
;prev11.c: 583: cmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_cmd)
	movlw	high(0C0h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3244
	line	584
	
l843:	
	line	585
	
l3242:	
;prev11.c: 584: else
;prev11.c: 585: cmd(0x2);
	movlw	low(02h)
	movwf	(?_cmd)
	movlw	high(02h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3244
	
l844:	
	line	587
	
l3244:	
;prev11.c: 587: int i=0;
	clrf	(write@i)
	clrf	(write@i+1)
	line	588
;prev11.c: 588: while(str[i]!='\0')
	goto	l3250
	
l846:	
	line	590
	
l3246:	
;prev11.c: 589: {
;prev11.c: 590: dat(str[i]);
	movf	(write@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(write@str),w
	movwf	fsr0
	movf	(write@str+1),w
	skipnc
	incf	(write@str+1),w
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_write+0)+0
	clrf	(??_write+0)+0+1
	movf	0+(??_write+0)+0,w
	movwf	(?_dat)
	movf	1+(??_write+0)+0,w
	movwf	(?_dat+1)
	fcall	_dat
	line	591
	
l3248:	
;prev11.c: 591: i++;
	movlw	low(01h)
	addwf	(write@i),f
	skipnc
	incf	(write@i+1),f
	movlw	high(01h)
	addwf	(write@i+1),f
	goto	l3250
	line	592
	
l845:	
	line	588
	
l3250:	
	movf	(write@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(write@str),w
	movwf	fsr0
	movf	(write@str+1),w
	skipnc
	incf	(write@str+1),w
	movwf	btemp+1
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4311
	goto	u4310
u4311:
	goto	l3246
u4310:
	goto	l848
	
l847:	
	line	595
	
l848:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,12408
	global	_clearlcd
psect	text537,local,class=CODE,delta=2
global __ptext537
__ptext537:

;; *************** function _clearlcd *****************
;; Defined at:
;;		line 521 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_cmd
;; This function is called by:
;;		_write
;; This function uses a non-reentrant model
;;
psect	text537
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	521
	global	__size_of_clearlcd
	__size_of_clearlcd	equ	__end_of_clearlcd-_clearlcd
	
_clearlcd:	
	opt	stack 1
; Regs used in _clearlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	522
	
l3232:	
;prev11.c: 522: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	523
	
l826:	
	return
	opt stack 0
GLOBAL	__end_of_clearlcd
	__end_of_clearlcd:
;; =============== function _clearlcd ends ============

	signat	_clearlcd,88
	global	_scan
psect	text538,local,class=CODE,delta=2
global __ptext538
__ptext538:

;; *************** function _scan *****************
;; Defined at:
;;		line 660 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_actrow
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text538
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	660
	global	__size_of_scan
	__size_of_scan	equ	__end_of_scan-_scan
	
_scan:	
	opt	stack 4
; Regs used in _scan: [wreg+status,2+status,0+pclath+cstack]
	line	661
	
l3124:	
;prev11.c: 661: actrow(1) ;
	movlw	low(01h)
	movwf	(?_actrow)
	movlw	high(01h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	662
	
l3126:	
;prev11.c: 662: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4131
	goto	u4130
u4131:
	goto	l869
u4130:
	line	663
	
l3128:	
;prev11.c: 663: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l870
	
l3130:	
	goto	l870
	
l3132:	
	goto	l3150
	line	664
	
l869:	
;prev11.c: 664: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l872
u4140:
	line	665
	
l3134:	
;prev11.c: 665: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l870
	
l3136:	
	goto	l870
	
l3138:	
	goto	l3150
	line	666
	
l872:	
;prev11.c: 666: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l874
u4150:
	line	667
	
l3140:	
;prev11.c: 667: return 2;
	movlw	low(02h)
	movwf	(?_scan)
	movlw	high(02h)
	movwf	((?_scan))+1
	goto	l870
	
l3142:	
	goto	l870
	
l3144:	
	goto	l3150
	line	668
	
l874:	
;prev11.c: 668: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l3150
u4160:
	line	669
	
l3146:	
;prev11.c: 669: return 3;
	movlw	low(03h)
	movwf	(?_scan)
	movlw	high(03h)
	movwf	((?_scan))+1
	goto	l870
	
l3148:	
	goto	l870
	
l876:	
	goto	l3150
	line	671
	
l875:	
	goto	l3150
	
l873:	
	goto	l3150
	
l871:	
	
l3150:	
;prev11.c: 671: actrow(2) ;
	movlw	low(02h)
	movwf	(?_actrow)
	movlw	high(02h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	673
	
l3152:	
;prev11.c: 673: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l877
u4170:
	line	674
	
l3154:	
;prev11.c: 674: return 4;
	movlw	low(04h)
	movwf	(?_scan)
	movlw	high(04h)
	movwf	((?_scan))+1
	goto	l870
	
l3156:	
	goto	l870
	
l3158:	
	goto	l3176
	line	675
	
l877:	
;prev11.c: 675: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l879
u4180:
	line	676
	
l3160:	
;prev11.c: 676: return 5;
	movlw	low(05h)
	movwf	(?_scan)
	movlw	high(05h)
	movwf	((?_scan))+1
	goto	l870
	
l3162:	
	goto	l870
	
l3164:	
	goto	l3176
	line	677
	
l879:	
;prev11.c: 677: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l881
u4190:
	line	678
	
l3166:	
;prev11.c: 678: return 6;
	movlw	low(06h)
	movwf	(?_scan)
	movlw	high(06h)
	movwf	((?_scan))+1
	goto	l870
	
l3168:	
	goto	l870
	
l3170:	
	goto	l3176
	line	679
	
l881:	
;prev11.c: 679: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4201
	goto	u4200
u4201:
	goto	l3176
u4200:
	line	680
	
l3172:	
;prev11.c: 680: return 7;
	movlw	low(07h)
	movwf	(?_scan)
	movlw	high(07h)
	movwf	((?_scan))+1
	goto	l870
	
l3174:	
	goto	l870
	
l883:	
	goto	l3176
	line	682
	
l882:	
	goto	l3176
	
l880:	
	goto	l3176
	
l878:	
	
l3176:	
;prev11.c: 682: actrow(3) ;
	movlw	low(03h)
	movwf	(?_actrow)
	movlw	high(03h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	684
	
l3178:	
;prev11.c: 684: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l884
u4210:
	line	685
	
l3180:	
;prev11.c: 685: return 8;
	movlw	low(08h)
	movwf	(?_scan)
	movlw	high(08h)
	movwf	((?_scan))+1
	goto	l870
	
l3182:	
	goto	l870
	
l3184:	
	goto	l3202
	line	686
	
l884:	
;prev11.c: 686: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l886
u4220:
	line	687
	
l3186:	
;prev11.c: 687: return 9;
	movlw	low(09h)
	movwf	(?_scan)
	movlw	high(09h)
	movwf	((?_scan))+1
	goto	l870
	
l3188:	
	goto	l870
	
l3190:	
	goto	l3202
	line	688
	
l886:	
;prev11.c: 688: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4231
	goto	u4230
u4231:
	goto	l888
u4230:
	line	689
	
l3192:	
;prev11.c: 689: return 10;
	movlw	low(0Ah)
	movwf	(?_scan)
	movlw	high(0Ah)
	movwf	((?_scan))+1
	goto	l870
	
l3194:	
	goto	l870
	
l3196:	
	goto	l3202
	line	690
	
l888:	
;prev11.c: 690: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l3202
u4240:
	line	691
	
l3198:	
;prev11.c: 691: return 11;
	movlw	low(0Bh)
	movwf	(?_scan)
	movlw	high(0Bh)
	movwf	((?_scan))+1
	goto	l870
	
l3200:	
	goto	l870
	
l890:	
	goto	l3202
	line	694
	
l889:	
	goto	l3202
	
l887:	
	goto	l3202
	
l885:	
	
l3202:	
;prev11.c: 694: actrow(4) ;
	movlw	low(04h)
	movwf	(?_actrow)
	movlw	high(04h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	696
	
l3204:	
;prev11.c: 696: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l891
u4250:
	line	697
	
l3206:	
;prev11.c: 697: return 12;
	movlw	low(0Ch)
	movwf	(?_scan)
	movlw	high(0Ch)
	movwf	((?_scan))+1
	goto	l870
	
l3208:	
	goto	l870
	
l3210:	
	goto	l3228
	line	698
	
l891:	
;prev11.c: 698: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l893
u4260:
	line	699
	
l3212:	
;prev11.c: 699: return 13;
	movlw	low(0Dh)
	movwf	(?_scan)
	movlw	high(0Dh)
	movwf	((?_scan))+1
	goto	l870
	
l3214:	
	goto	l870
	
l3216:	
	goto	l3228
	line	700
	
l893:	
;prev11.c: 700: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l895
u4270:
	line	701
	
l3218:	
;prev11.c: 701: return 14;
	movlw	low(0Eh)
	movwf	(?_scan)
	movlw	high(0Eh)
	movwf	((?_scan))+1
	goto	l870
	
l3220:	
	goto	l870
	
l3222:	
	goto	l3228
	line	702
	
l895:	
;prev11.c: 702: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l3228
u4280:
	line	703
	
l3224:	
;prev11.c: 703: return 15;
	movlw	low(0Fh)
	movwf	(?_scan)
	movlw	high(0Fh)
	movwf	((?_scan))+1
	goto	l870
	
l3226:	
	goto	l870
	
l897:	
	goto	l3228
	line	707
	
l896:	
	goto	l3228
	
l894:	
	goto	l3228
	
l892:	
	
l3228:	
;prev11.c: 707: return 99;
	movlw	low(063h)
	movwf	(?_scan)
	movlw	high(063h)
	movwf	((?_scan))+1
	goto	l870
	
l3230:	
	line	711
	
l870:	
	return
	opt stack 0
GLOBAL	__end_of_scan
	__end_of_scan:
;; =============== function _scan ends ============

	signat	_scan,90
	global	_initlcd
psect	text539,local,class=CODE,delta=2
global __ptext539
__ptext539:

;; *************** function _initlcd *****************
;; Defined at:
;;		line 503 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text539
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	503
	global	__size_of_initlcd
	__size_of_initlcd	equ	__end_of_initlcd-_initlcd
	
_initlcd:	
	opt	stack 4
; Regs used in _initlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	505
	
l3110:	
;prev11.c: 505: TRISC=0b11111100;
	movlw	(0FCh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	507
	
l3112:	
;prev11.c: 507: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	509
	
l3114:	
;prev11.c: 509: cmd(0x38);
	movlw	low(038h)
	movwf	(?_cmd)
	movlw	high(038h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	511
	
l3116:	
;prev11.c: 511: cmd(0x0C);
	movlw	low(0Ch)
	movwf	(?_cmd)
	movlw	high(0Ch)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	513
	
l3118:	
;prev11.c: 513: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	515
	
l3120:	
;prev11.c: 515: cmd(0x80);
	movlw	low(080h)
	movwf	(?_cmd)
	movlw	high(080h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	517
	
l3122:	
;prev11.c: 517: cmd(0x0f);
	movlw	low(0Fh)
	movwf	(?_cmd)
	movlw	high(0Fh)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	519
	
l823:	
	return
	opt stack 0
GLOBAL	__end_of_initlcd
	__end_of_initlcd:
;; =============== function _initlcd ends ============

	signat	_initlcd,88
	global	_actrow
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:

;; *************** function _actrow *****************
;; Defined at:
;;		line 719 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  n               2    2[COMMON] int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_resetout
;;		_delay
;; This function is called by:
;;		_scan
;; This function uses a non-reentrant model
;;
psect	text540
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	719
	global	__size_of_actrow
	__size_of_actrow	equ	__end_of_actrow-_actrow
	
_actrow:	
	opt	stack 4
; Regs used in _actrow: [wreg+status,2+status,0+pclath+cstack]
	line	720
	
l3090:	
;prev11.c: 720: resetout();
	fcall	_resetout
	line	722
	
l3092:	
;prev11.c: 722: if(n==1)
	movlw	01h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4091
	goto	u4090
u4091:
	goto	l3096
u4090:
	line	724
	
l3094:	
;prev11.c: 723: {
;prev11.c: 724: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	725
;prev11.c: 725: }
	goto	l3108
	line	726
	
l903:	
	
l3096:	
;prev11.c: 726: else if(n==2)
	movlw	02h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l3100
u4100:
	line	728
	
l3098:	
;prev11.c: 727: {
;prev11.c: 728: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	729
;prev11.c: 729: }
	goto	l3108
	line	730
	
l905:	
	
l3100:	
;prev11.c: 730: else if(n==3)
	movlw	03h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l3104
u4110:
	line	732
	
l3102:	
;prev11.c: 731: {
;prev11.c: 732: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	733
;prev11.c: 733: }
	goto	l3108
	line	734
	
l907:	
	
l3104:	
;prev11.c: 734: else if(n==4)
	movlw	04h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l3108
u4120:
	line	736
	
l3106:	
;prev11.c: 735: {
;prev11.c: 736: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	goto	l3108
	line	737
	
l909:	
	goto	l3108
	line	738
	
l908:	
	goto	l3108
	
l906:	
	goto	l3108
	
l904:	
	
l3108:	
;prev11.c: 737: }
;prev11.c: 738: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	741
	
l910:	
	return
	opt stack 0
GLOBAL	__end_of_actrow
	__end_of_actrow:
;; =============== function _actrow ends ============

	signat	_actrow,4216
	global	_dat
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:

;; *************** function _dat *****************
;; Defined at:
;;		line 536 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  Command         2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_setLCD
;;		_delay
;; This function is called by:
;;		_write
;; This function uses a non-reentrant model
;;
psect	text541
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	536
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 2
; Regs used in _dat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	537
	
l3078:	
;prev11.c: 537: setLCD(Command);
	movf	(dat@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(dat@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	539
	
l3080:	
;prev11.c: 539: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	541
	
l3082:	
;prev11.c: 541: RC1=1;
	bsf	(57/8),(57)&7
	line	543
	
l3084:	
;prev11.c: 543: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	545
	
l3086:	
;prev11.c: 545: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	547
	
l3088:	
;prev11.c: 547: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	553
	
l832:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text542,local,class=CODE,delta=2
global __ptext542
__ptext542:

;; *************** function _cmd *****************
;; Defined at:
;;		line 525 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  Command         2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_setLCD
;;		_delay
;; This function is called by:
;;		_initlcd
;;		_clearlcd
;;		_write
;;		_scroll
;; This function uses a non-reentrant model
;;
psect	text542
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	525
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 2
; Regs used in _cmd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	526
	
l3066:	
;prev11.c: 526: setLCD(Command);
	movf	(cmd@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(cmd@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	527
	
l3068:	
;prev11.c: 527: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	528
	
l3070:	
;prev11.c: 528: RC1=1;
	bsf	(57/8),(57)&7
	line	529
	
l3072:	
;prev11.c: 529: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	530
	
l3074:	
;prev11.c: 530: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	531
	
l3076:	
;prev11.c: 531: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	533
	
l829:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_itoaa
psect	text543,local,class=CODE,delta=2
global __ptext543
__ptext543:

;; *************** function _itoaa *****************
;; Defined at:
;;		line 476 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  value           2    9[COMMON] int 
;;  ptr             1   11[COMMON] PTR unsigned char 
;;		 -> getlogicseq@snum(16), 
;; Auto vars:     Size  Location     Type
;;  temp            2    2[BANK0 ] int 
;;  count           2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text543
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	476
	global	__size_of_itoaa
	__size_of_itoaa	equ	__end_of_itoaa-_itoaa
	
_itoaa:	
	opt	stack 5
; Regs used in _itoaa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	477
	
l3018:	
;prev11.c: 477: int count=0,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@count)
	clrf	(itoaa@count+1)
	line	478
	
l3020:	
;prev11.c: 478: if(ptr==(0))
	movf	(itoaa@ptr),f
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l3024
u4020:
	goto	l814
	line	479
	
l3022:	
;prev11.c: 479: return 0;
;	Return value of _itoaa is never used
	goto	l814
	
l813:	
	line	480
	
l3024:	
;prev11.c: 480: if(value==0)
	movf	((itoaa@value+1)),w
	iorwf	((itoaa@value)),w
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l815
u4030:
	line	482
	
l3026:	
;prev11.c: 481: {
;prev11.c: 482: *ptr='0';
	movlw	(030h)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l814
	line	483
	
l3028:	
;prev11.c: 483: return 1;
;	Return value of _itoaa is never used
	goto	l814
	line	484
	
l815:	
	line	486
;prev11.c: 484: }
;prev11.c: 486: if(value<0)
	btfss	(itoaa@value+1),7
	goto	u4041
	goto	u4040
u4041:
	goto	l3038
u4040:
	line	488
	
l3030:	
;prev11.c: 487: {
;prev11.c: 488: value*=(-1);
	movlw	low(-1)
	movwf	(?___wmul)
	movlw	high(-1)
	movwf	((?___wmul))+1
	movf	(itoaa@value+1),w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(itoaa@value),w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	movf	(1+(?___wmul)),w
	clrf	(itoaa@value+1)
	addwf	(itoaa@value+1)
	movf	(0+(?___wmul)),w
	clrf	(itoaa@value)
	addwf	(itoaa@value)

	line	489
	
l3032:	
;prev11.c: 489: *ptr++='-';
	movlw	(02Dh)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3034:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	line	490
	
l3036:	
;prev11.c: 490: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	goto	l3038
	line	491
	
l816:	
	line	492
	
l3038:	
;prev11.c: 491: }
;prev11.c: 492: for(temp=value;temp>0;temp/=10,ptr++);
	movf	(itoaa@value+1),w
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3040:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4055
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4055:

	skipnc
	goto	u4051
	goto	u4050
u4051:
	goto	l3044
u4050:
	goto	l3050
	
l3042:	
	goto	l3050
	
l817:	
	
l3044:	
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(itoaa@temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(itoaa@temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(0+(?___awdiv)),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3046:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	
l3048:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4065
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4065:

	skipnc
	goto	u4061
	goto	u4060
u4061:
	goto	l3044
u4060:
	goto	l3050
	
l818:	
	line	493
	
l3050:	
;prev11.c: 493: *ptr='\0';
	movf	(itoaa@ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	494
	
l3052:	
;prev11.c: 494: for(temp=value;temp>0;temp/=10)
	movf	(itoaa@value+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3054:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4075
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4075:

	skipnc
	goto	u4071
	goto	u4070
u4071:
	goto	l3058
u4070:
	goto	l814
	
l3056:	
	goto	l814
	line	495
	
l819:	
	line	496
	
l3058:	
;prev11.c: 495: {
;prev11.c: 496: *--ptr=temp%10+'0';
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(itoaa@temp+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(itoaa@temp),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	movwf	(??_itoaa+0)+0
	movlw	low(01h)
	subwf	(itoaa@ptr),f
	movf	((itoaa@ptr)),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	497
	
l3060:	
;prev11.c: 497: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	line	494
	
l3062:	
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(itoaa@temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(itoaa@temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(0+(?___awdiv)),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3064:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4085
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4085:

	skipnc
	goto	u4081
	goto	u4080
u4081:
	goto	l3058
u4080:
	goto	l814
	
l820:	
	line	500
;prev11.c: 498: }
;prev11.c: 499: return count;
;	Return value of _itoaa is never used
	
l814:	
	return
	opt stack 0
GLOBAL	__end_of_itoaa
	__end_of_itoaa:
;; =============== function _itoaa ends ============

	signat	_itoaa,8314
	global	___awmod
psect	text544,local,class=CODE,delta=2
global __ptext544
__ptext544:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_itoaa
;; This function uses a non-reentrant model
;;
psect	text544
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2984:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3931
	goto	u3930
u3931:
	goto	l2988
u3930:
	line	10
	
l2986:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2988
	line	12
	
l1150:	
	line	13
	
l2988:	
	btfss	(___awmod@divisor+1),7
	goto	u3941
	goto	u3940
u3941:
	goto	l2992
u3940:
	line	14
	
l2990:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2992
	
l1151:	
	line	15
	
l2992:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3951
	goto	u3950
u3951:
	goto	l3010
u3950:
	line	16
	
l2994:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3000
	
l1154:	
	line	18
	
l2996:	
	movlw	01h
	
u3965:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3965
	line	19
	
l2998:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3000
	line	20
	
l1153:	
	line	17
	
l3000:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l2996
u3970:
	goto	l3002
	
l1155:	
	goto	l3002
	line	21
	
l1156:	
	line	22
	
l3002:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3985
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3985:
	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l3006
u3980:
	line	23
	
l3004:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3006
	
l1157:	
	line	24
	
l3006:	
	movlw	01h
	
u3995:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3995
	line	25
	
l3008:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l3002
u4000:
	goto	l3010
	
l1158:	
	goto	l3010
	line	26
	
l1152:	
	line	27
	
l3010:	
	movf	(___awmod@sign),w
	skipz
	goto	u4010
	goto	l3014
u4010:
	line	28
	
l3012:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3014
	
l1159:	
	line	29
	
l3014:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1160
	
l3016:	
	line	30
	
l1160:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text545,local,class=CODE,delta=2
global __ptext545
__ptext545:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_itoaa
;; This function uses a non-reentrant model
;;
psect	text545
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2944:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3831
	goto	u3830
u3831:
	goto	l2948
u3830:
	line	11
	
l2946:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2948
	line	13
	
l1082:	
	line	14
	
l2948:	
	btfss	(___awdiv@dividend+1),7
	goto	u3841
	goto	u3840
u3841:
	goto	l2954
u3840:
	line	15
	
l2950:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2952:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2954
	line	17
	
l1083:	
	line	18
	
l2954:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2956:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3851
	goto	u3850
u3851:
	goto	l2976
u3850:
	line	20
	
l2958:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2964
	
l1086:	
	line	22
	
l2960:	
	movlw	01h
	
u3865:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3865
	line	23
	
l2962:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2964
	line	24
	
l1085:	
	line	21
	
l2964:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3871
	goto	u3870
u3871:
	goto	l2960
u3870:
	goto	l2966
	
l1087:	
	goto	l2966
	line	25
	
l1088:	
	line	26
	
l2966:	
	movlw	01h
	
u3885:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3885
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3895
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3895:
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l2972
u3890:
	line	28
	
l2968:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2970:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2972
	line	30
	
l1089:	
	line	31
	
l2972:	
	movlw	01h
	
u3905:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3905
	line	32
	
l2974:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l2966
u3910:
	goto	l2976
	
l1090:	
	goto	l2976
	line	33
	
l1084:	
	line	34
	
l2976:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3920
	goto	l2980
u3920:
	line	35
	
l2978:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2980
	
l1091:	
	line	36
	
l2980:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1092
	
l2982:	
	line	37
	
l1092:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_itoaa
;; This function uses a non-reentrant model
;;
psect	text546
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2932:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2934
	line	6
	
l942:	
	line	7
	
l2934:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3791
	goto	u3790
u3791:
	goto	l943
u3790:
	line	8
	
l2936:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l943:	
	line	9
	movlw	01h
	
u3805:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3805
	line	10
	
l2938:	
	movlw	01h
	
u3815:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3815
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l2934
u3820:
	goto	l2940
	
l944:	
	line	12
	
l2940:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l945
	
l2942:	
	line	13
	
l945:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_resetout
psect	text547,local,class=CODE,delta=2
global __ptext547
__ptext547:

;; *************** function _resetout *****************
;; Defined at:
;;		line 715 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
;;		_actrow
;; This function uses a non-reentrant model
;;
psect	text547
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	715
	global	__size_of_resetout
	__size_of_resetout	equ	__end_of_resetout-_resetout
	
_resetout:	
	opt	stack 4
; Regs used in _resetout: []
	line	716
	
l2930:	
;prev11.c: 716: RC2=0;RC3=0;RB6=0;RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(54/8),(54)&7
	bcf	(55/8),(55)&7
	line	717
	
l900:	
	return
	opt stack 0
GLOBAL	__end_of_resetout
	__end_of_resetout:
;; =============== function _resetout ends ============

	signat	_resetout,88
	global	_setLCD
psect	text548,local,class=CODE,delta=2
global __ptext548
__ptext548:

;; *************** function _setLCD *****************
;; Defined at:
;;		line 555 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  number          2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  vbool          32    0[BANK0 ] int [16]
;;  i               2   32[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0      34       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         8      34       0       0       0
;;Total ram usage:       42 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_cmd
;;		_dat
;; This function uses a non-reentrant model
;;
psect	text548
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	555
	global	__size_of_setLCD
	__size_of_setLCD	equ	__end_of_setLCD-_setLCD
	
_setLCD:	
	opt	stack 2
; Regs used in _setLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	560
	
l2916:	
;prev11.c: 556: const int size=8*sizeof(int);
;prev11.c: 557: int vbool[8*sizeof(int)];
;prev11.c: 558: int i;;
;prev11.c: 560: for (i = 0; i <size; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLCD@i)
	clrf	(setLCD@i+1)
	
l2918:	
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	fcall	stringdir
	movwf	(??_setLCD+0)+0+1
	movf	(setLCD@i+1),w
	xorlw	80h
	movwf	(??_setLCD+2)+0
	movf	1+(??_setLCD+0)+0,w
	xorlw	80h
	subwf	(??_setLCD+2)+0,w
	skipz
	goto	u3605
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3605:

	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l2922
u3600:
	goto	l2928
	
l2920:	
	goto	l2928
	line	561
	
l837:	
	line	562
	
l2922:	
;prev11.c: 561: {
;prev11.c: 562: vbool[i] = number<<i < 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(setLCD@i),w
	movwf	(??_setLCD+0)+0
	movf	(setLCD@number+1),w
	movwf	(??_setLCD+1)+0+1
	movf	(setLCD@number),w
	movwf	(??_setLCD+1)+0
	goto	u3614
u3615:
	clrc
	rlf	(??_setLCD+1)+0,f
	rlf	(??_setLCD+1)+1,f
u3614:
	decfsz	(??_setLCD+0)+0,f
	goto	u3615
	movlw	0
	btfsc	1+(??_setLCD+1)+0,7
	movlw	1
	movwf	(??_setLCD+3)+0
	clrf	(??_setLCD+3)+0+1
	movf	(setLCD@i),w
	movwf	(??_setLCD+5)+0
	addwf	(??_setLCD+5)+0,w
	addlw	setLCD@vbool&0ffh
	movwf	fsr0
	movf	0+(??_setLCD+3)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_setLCD+3)+0,w
	movwf	indf
	line	560
	
l2924:	
	movlw	low(01h)
	addwf	(setLCD@i),f
	skipnc
	incf	(setLCD@i+1),f
	movlw	high(01h)
	addwf	(setLCD@i+1),f
	
l2926:	
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	fcall	stringdir
	movwf	(??_setLCD+0)+0+1
	movf	(setLCD@i+1),w
	xorlw	80h
	movwf	(??_setLCD+2)+0
	movf	1+(??_setLCD+0)+0,w
	xorlw	80h
	subwf	(??_setLCD+2)+0,w
	skipz
	goto	u3625
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3625:

	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l2922
u3620:
	goto	l2928
	
l838:	
	line	565
	
l2928:	
;prev11.c: 563: }
;prev11.c: 565: RD0=vbool[size-1];
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	addwf	(??_setLCD+0)+0,w
	addlw	0FEh
	addlw	setLCD@vbool&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_setLCD+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLCD+1)+0+1
	btfsc	0+(??_setLCD+1)+0,0
	goto	u3631
	goto	u3630
	
u3631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u3644
u3630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u3644:
	line	566
;prev11.c: 566: RD1=vbool[size-2];
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	addwf	(??_setLCD+0)+0,w
	addlw	0FCh
	addlw	setLCD@vbool&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_setLCD+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLCD+1)+0+1
	btfsc	0+(??_setLCD+1)+0,0
	goto	u3651
	goto	u3650
	
u3651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u3664
u3650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u3664:
	line	567
;prev11.c: 567: RD2=vbool[size-3];
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	addwf	(??_setLCD+0)+0,w
	addlw	0FAh
	addlw	setLCD@vbool&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_setLCD+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLCD+1)+0+1
	btfsc	0+(??_setLCD+1)+0,0
	goto	u3671
	goto	u3670
	
u3671:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	goto	u3684
u3670:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
u3684:
	line	568
;prev11.c: 568: RD3=vbool[size-4];
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	addwf	(??_setLCD+0)+0,w
	addlw	0F8h
	addlw	setLCD@vbool&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_setLCD+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLCD+1)+0+1
	btfsc	0+(??_setLCD+1)+0,0
	goto	u3691
	goto	u3690
	
u3691:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	goto	u3704
u3690:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
u3704:
	line	569
;prev11.c: 569: RD4=vbool[size-5];
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	addwf	(??_setLCD+0)+0,w
	addlw	0F6h
	addlw	setLCD@vbool&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_setLCD+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLCD+1)+0+1
	btfsc	0+(??_setLCD+1)+0,0
	goto	u3711
	goto	u3710
	
u3711:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3724
u3710:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3724:
	line	570
;prev11.c: 570: RD5=vbool[size-6];
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	addwf	(??_setLCD+0)+0,w
	addlw	0F4h
	addlw	setLCD@vbool&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_setLCD+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLCD+1)+0+1
	btfsc	0+(??_setLCD+1)+0,0
	goto	u3731
	goto	u3730
	
u3731:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3744
u3730:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3744:
	line	571
;prev11.c: 571: RD6=vbool[size-7];
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	addwf	(??_setLCD+0)+0,w
	addlw	0F2h
	addlw	setLCD@vbool&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_setLCD+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLCD+1)+0+1
	btfsc	0+(??_setLCD+1)+0,0
	goto	u3751
	goto	u3750
	
u3751:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3764
u3750:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3764:
	line	572
;prev11.c: 572: RD7=vbool[size-8];
	movlw	(setLCD@size-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_setLCD+0)+0
	addwf	(??_setLCD+0)+0,w
	addlw	0F0h
	addlw	setLCD@vbool&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_setLCD+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLCD+1)+0+1
	btfsc	0+(??_setLCD+1)+0,0
	goto	u3771
	goto	u3770
	
u3771:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3784
u3770:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3784:
	line	576
	
l839:	
	return
	opt stack 0
GLOBAL	__end_of_setLCD
	__end_of_setLCD:
;; =============== function _setLCD ends ============

	signat	_setLCD,4216
	global	_delay
psect	text549,local,class=CODE,delta=2
global __ptext549
__ptext549:

;; *************** function _delay *****************
;; Defined at:
;;		line 470 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
;;		_actrow
;; This function uses a non-reentrant model
;;
psect	text549
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	470
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 3
; Regs used in _delay: [wreg]
	line	471
	
l2912:	
;prev11.c: 471: while(x-->0);
	goto	l2914
	
l808:	
	goto	l2914
	
l807:	
	
l2914:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u3595
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u3595:

	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l2914
u3590:
	goto	l810
	
l809:	
	line	472
	
l810:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_strcat
psect	text550,local,class=CODE,delta=2
global __ptext550
__ptext550:

;; *************** function _strcat *****************
;; Defined at:
;;		line 10 in file "../../common/strcat.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
;;  from            1    0[COMMON] PTR const unsigned char 
;;		 -> getlogicseq@snum(16), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[COMMON] PTR unsigned char 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
;;  cp              1    3[COMMON] PTR unsigned char 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text550
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcat.c"
	line	10
	global	__size_of_strcat
	__size_of_strcat	equ	__end_of_strcat-_strcat
	
_strcat:	
	opt	stack 6
; Regs used in _strcat: [wreg-fsr0h+status,2+status,0]
;strcat@to stored from wreg
	line	18
	movwf	(strcat@to)
	
l2836:	
	movf	(strcat@to),w
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	movwf	(strcat@cp)
	line	19
	goto	l2840
	
l914:	
	line	20
	
l2838:	
	movlw	(01h)
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	addwf	(strcat@cp),f
	goto	l2840
	
l913:	
	line	19
	
l2840:	
	movf	(strcat@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l2838
u3410:
	goto	l2842
	
l915:	
	line	21
	goto	l2842
	
l917:	
	line	22
	goto	l2842
	
l916:	
	line	21
	
l2842:	
	movf	(strcat@from),w
	movwf	fsr0
	movlw	01h
	addwf	(strcat@from),f
	movf	indf,w
	movwf	(??_strcat+0)+0
	movf	(strcat@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strcat@cp),f
	movf	(??_strcat+0)+0,w
	movwf	indf
	movf	(indf),f
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l2842
u3420:
	goto	l919
	
l918:	
	line	24
;	Return value of _strcat is never used
	
l919:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
;; =============== function _strcat ends ============

	signat	_strcat,8313
	global	_strcmp
psect	text551,local,class=CODE,delta=2
global __ptext551
__ptext551:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> lo(5), 
;;  s2              2    0[COMMON] PTR const unsigned char 
;;		 -> STR_31(5), STR_30(5), STR_29(5), STR_28(5), 
;;		 -> STR_27(5), STR_26(5), STR_25(5), STR_24(5), 
;;		 -> STR_23(5), STR_22(5), STR_21(5), STR_20(5), 
;;		 -> STR_19(5), STR_18(5), STR_17(5), STR_16(5), 
;;		 -> STR_3(4), plo(5), 
;; Auto vars:     Size  Location     Type
;;  s1              1    7[COMMON] PTR const unsigned char 
;;		 -> lo(5), 
;;  r               1    6[COMMON] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_startswitch
;;		_parselogic
;; This function uses a non-reentrant model
;;
psect	text551
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
	opt	stack 4
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
;strcmp@s1 stored from wreg
	movwf	(strcmp@s1)
	line	37
	
l2826:	
	goto	l2828
	
l923:	
	line	38
	goto	l2828
	
l922:	
	line	37
	
l2828:	
	movf	(strcmp@s1),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s2+1),w
	movwf	(??_strcmp+1)+0+1
	movf	(strcmp@s2),w
	movwf	(??_strcmp+1)+0
	movlw	(01h)
	addwf	(strcmp@s2),f
	skipnc
	incf	(strcmp@s2+1),f
	movf	1+(??_strcmp+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	0+(??_strcmp+1)+0,w
	movwf	fsr0
	fcall	stringtab
	xorlw	0ffh
	addlw	1
	addwf	(??_strcmp+0)+0,w
	movwf	(??_strcmp+3)+0
	movf	(??_strcmp+3)+0,w
	movwf	(strcmp@r)
	movf	((strcmp@r)),f
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l2832
u3390:
	
l2830:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l2828
u3400:
	goto	l2832
	
l925:	
	goto	l2832
	
l926:	
	line	39
	
l2832:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l927
	
l2834:	
	line	40
	
l927:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_strcpy
psect	text552,local,class=CODE,delta=2
global __ptext552
__ptext552:

;; *************** function _strcpy *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d3(5), logic_d2(5), logic_d1(5), 
;;		 -> lo(5), plo(5), 
;;  from            2    0[COMMON] PTR const unsigned char 
;;		 -> STR_14(1), STR_13(20), STR_11(1), STR_10(20), 
;;		 -> STR_8(1), STR_7(20), STR_2(4), lo(5), 
;; Auto vars:     Size  Location     Type
;;  to              1    5[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d3(5), logic_d2(5), logic_d1(5), 
;;		 -> lo(5), plo(5), 
;;  cp              1    6[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d3(5), logic_d2(5), logic_d1(5), 
;;		 -> lo(5), plo(5), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_startswitch
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text552
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
	line	10
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
	opt	stack 5
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
;strcpy@to stored from wreg
	line	18
	movwf	(strcpy@to)
	
l2822:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l2824
	
l931:	
	line	20
	goto	l2824
	
l930:	
	line	19
	
l2824:	
	movf	(strcpy@from+1),w
	movwf	(??_strcpy+0)+0+1
	movf	(strcpy@from),w
	movwf	(??_strcpy+0)+0
	movlw	(01h)
	addwf	(strcpy@from),f
	skipnc
	incf	(strcpy@from+1),f
	movf	1+(??_strcpy+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	0+(??_strcpy+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_strcpy+2)+0
	movf	(strcpy@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strcpy@cp),f
	movf	(??_strcpy+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	(indf),f
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l2824
u3380:
	goto	l933
	
l932:	
	line	22
;	Return value of _strcpy is never used
	
l933:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_check
psect	text553,local,class=CODE,delta=2
global __ptext553
__ptext553:

;; *************** function _check *****************
;; Defined at:
;;		line 120 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  input           1    wreg     PTR unsigned char 
;;		 -> lo(5), 
;;  logic           1    0[COMMON] PTR unsigned char 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
;; Auto vars:     Size  Location     Type
;;  input           1    3[COMMON] PTR unsigned char 
;;		 -> lo(5), 
;;  i               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_startswitch
;; This function uses a non-reentrant model
;;
psect	text553
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	120
	global	__size_of_check
	__size_of_check	equ	__end_of_check-_check
	
_check:	
	opt	stack 5
; Regs used in _check: [wreg-fsr0h+status,2+status,0+btemp+1]
;check@input stored from wreg
	line	122
	movwf	(check@input)
	
l2800:	
;prev11.c: 122: int i=0;
	clrf	(check@i)
	clrf	(check@i+1)
	line	124
;prev11.c: 124: for(i=0;i<4;i++)
	clrf	(check@i)
	clrf	(check@i+1)
	
l2802:	
	movf	(check@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3345
	movlw	low(04h)
	subwf	(check@i),w
u3345:

	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l2806
u3340:
	goto	l2818
	
l2804:	
	goto	l2818
	line	125
	
l691:	
	line	126
	
l2806:	
;prev11.c: 125: {
;prev11.c: 126: if(input[i]=='0'&&logic[i]=='1')
	movf	(check@i),w
	addwf	(check@input),w
	movwf	(??_check+0)+0
	movf	0+(??_check+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	030h
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l2814
u3350:
	
l2808:	
	movf	(check@i),w
	addwf	(check@logic),w
	movwf	(??_check+0)+0
	movf	0+(??_check+0)+0,w
	movwf	fsr0
	movf	indf,w
	xorlw	031h
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l2814
u3360:
	line	127
	
l2810:	
;prev11.c: 127: return 0;
	clrf	(?_check)
	clrf	(?_check+1)
	goto	l694
	
l2812:	
	goto	l694
	
l693:	
	line	124
	
l2814:	
	movlw	low(01h)
	addwf	(check@i),f
	skipnc
	incf	(check@i+1),f
	movlw	high(01h)
	addwf	(check@i+1),f
	
l2816:	
	movf	(check@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3375
	movlw	low(04h)
	subwf	(check@i),w
u3375:

	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l2806
u3370:
	goto	l2818
	
l692:	
	line	129
	
l2818:	
;prev11.c: 128: }
;prev11.c: 129: return 1;
	movlw	low(01h)
	movwf	(?_check)
	movlw	high(01h)
	movwf	((?_check))+1
	goto	l694
	
l2820:	
	line	130
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_check
	__end_of_check:
;; =============== function _check ends ============

	signat	_check,8314
	global	_initkeypad
psect	text554,local,class=CODE,delta=2
global __ptext554
__ptext554:

;; *************** function _initkeypad *****************
;; Defined at:
;;		line 653 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text554
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	653
	global	__size_of_initkeypad
	__size_of_initkeypad	equ	__end_of_initkeypad-_initkeypad
	
_initkeypad:	
	opt	stack 7
; Regs used in _initkeypad: [wreg+status,2]
	line	654
	
l1362:	
;prev11.c: 654: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	655
	
l1364:	
;prev11.c: 655: TRISB = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	657
	
l866:	
	return
	opt stack 0
GLOBAL	__end_of_initkeypad
	__end_of_initkeypad:
;; =============== function _initkeypad ends ============

	signat	_initkeypad,88
psect	text555,local,class=CODE,delta=2
global __ptext555
__ptext555:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
