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
	FNCALL	_main,_init_fun
	FNCALL	_main,_getlogicseq
	FNCALL	_getlogicseq,_scroll
	FNCALL	_getlogicseq,_strcpy
	FNCALL	_getlogicseq,_write
	FNCALL	_getlogicseq,_scan
	FNCALL	_getlogicseq,_itoaa
	FNCALL	_getlogicseq,_strcat
	FNCALL	_getlogicseq,_startswitch
	FNCALL	_scroll,_write
	FNCALL	_scroll,_delay
	FNCALL	_scroll,_cmd
	FNCALL	_startswitch,_strcpy
	FNCALL	_startswitch,_strcmp
	FNCALL	_startswitch,_check
	FNCALL	_startswitch,_write
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
	global	_lo
	global	_logic_d1
	global	_logic_d2
	global	_logic_d3
	global	_logic_d4
	global	_plo
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	122

;initializer for _lo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
	line	118

;initializer for _logic_d1
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	031h
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	119

;initializer for _logic_d2
	retlw	031h
	retlw	030h
	retlw	031h
	retlw	031h
	retlw	0
	line	120

;initializer for _logic_d3
	retlw	030h
	retlw	031h
	retlw	031h
	retlw	030h
	retlw	0
	line	121

;initializer for _logic_d4
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
	line	123

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
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	558
setLCD@size:
	retlw	010h
	retlw	0

	global	setLCD@size
	global	_dev
	global	_done_init
	global	_pdev
	global	getlogicseq@F1263
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
	global	_RCEN
_RCEN	set	1163
	global	_TXEN
_TXEN	set	1221
	
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
	
STR_5:	
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
	
STR_8:	
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
	
STR_11:	
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
	
STR_14:	
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
	retlw	52	;'4'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_1:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_3:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_21:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_29:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_19:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_27:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_23:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_31:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_18:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_26:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_22:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_30:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_20:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_28:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_24:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_32:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
STR_25	equ	STR_3+0
STR_2	equ	STR_1+0
STR_17	equ	STR_1+0
STR_10	equ	STR_7+0
STR_13	equ	STR_7+0
STR_16	equ	STR_7+0
STR_6	equ	STR_5+19
STR_9	equ	STR_5+19
STR_12	equ	STR_5+19
STR_15	equ	STR_5+19
	file	"prev0.as"
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
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	122
_lo:
       ds      5

psect	dataBANK0
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	118
_logic_d1:
       ds      5

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	119
_logic_d2:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	120
_logic_d3:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	121
_logic_d4:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	123
_plo:
       ds      5

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
getlogicseq@F1263:
       ds      16

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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+20)
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
	global	getlogicseq@nf
getlogicseq@nf:	; 2 bytes @ 0x32
	ds	2
	global	getlogicseq@wf
getlogicseq@wf:	; 2 bytes @ 0x34
	ds	2
	global	getlogicseq@ccount
getlogicseq@ccount:	; 2 bytes @ 0x36
	ds	2
	global	getlogicseq@num
getlogicseq@num:	; 2 bytes @ 0x38
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
	global	?_init_fun
?_init_fun:	; 0 bytes @ 0x0
	global	??_init_fun
??_init_fun:	; 0 bytes @ 0x0
	global	?_getlogicseq
?_getlogicseq:	; 0 bytes @ 0x0
	global	?_setLCD
?_setLCD:	; 0 bytes @ 0x0
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
	global	?_check
?_check:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
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
	global	??_check
??_check:	; 0 bytes @ 0x2
	global	??_setLCD
??_setLCD:	; 0 bytes @ 0x2
	global	?_actrow
?_actrow:	; 0 bytes @ 0x2
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
;;Data sizes: Strings 203, constant 2, data 30, bss 22, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     64      80
;; BANK1           80     58      78
;; BANK3           96      0      16
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
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; ?_itoaa	int  size(1) Largest target is 0
;;
;; ?_strcmp	int  size(1) Largest target is 0
;;
;; ?_strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK0[5]), lo(BANK0[5]), plo(BANK1[5]), 
;;
;; strcpy@from	PTR const unsigned char  size(2) Largest target is 20
;;		 -> STR_15(CODE[1]), STR_14(CODE[20]), STR_12(CODE[1]), STR_11(CODE[20]), 
;;		 -> STR_9(CODE[1]), STR_8(CODE[20]), STR_6(CODE[1]), STR_5(CODE[20]), 
;;		 -> STR_1(CODE[5]), lo(BANK0[5]), 
;;
;; strcpy@to	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK0[5]), lo(BANK0[5]), plo(BANK1[5]), 
;;
;; strcpy@cp	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK0[5]), lo(BANK0[5]), plo(BANK1[5]), 
;;
;; strcmp@s2	PTR const unsigned char  size(2) Largest target is 5
;;		 -> STR_32(CODE[5]), STR_31(CODE[5]), STR_30(CODE[5]), STR_29(CODE[5]), 
;;		 -> STR_28(CODE[5]), STR_27(CODE[5]), STR_26(CODE[5]), STR_25(CODE[5]), 
;;		 -> STR_24(CODE[5]), STR_23(CODE[5]), STR_22(CODE[5]), STR_21(CODE[5]), 
;;		 -> STR_20(CODE[5]), STR_19(CODE[5]), STR_18(CODE[5]), STR_17(CODE[5]), 
;;		 -> STR_3(CODE[5]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK0[5]), STR_2(CODE[5]), plo(BANK1[5]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 5
;;		 -> lo(BANK0[5]), 
;;
;; strcat@from	PTR const unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; strcat@to	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; strcat@cp	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; scroll@str	PTR unsigned char  size(1) Largest target is 38
;;		 -> STR_4(CODE[38]), 
;;
;; write@str	PTR unsigned char  size(2) Largest target is 38
;;		 -> STR_16(CODE[5]), STR_13(CODE[5]), STR_10(CODE[5]), STR_7(CODE[5]), 
;;		 -> getlogicseq@str(BANK1[32]), STR_4(CODE[38]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), 
;;		 -> logic_d2(BANK1[5]), logic_d1(BANK0[5]), lo(BANK0[5]), 
;;
;; itoaa@ptr	PTR unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; check@logic	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; check@input	PTR unsigned char  size(1) Largest target is 5
;;		 -> lo(BANK0[5]), 
;;
;; sp__strcat	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK0[5]), 
;;
;; sp__strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK0[5]), lo(BANK0[5]), plo(BANK1[5]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _getlogicseq->_write
;;   _scroll->_write
;;   _startswitch->_write
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
;;   _scroll->_write
;;   _startswitch->_write
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
;; (0) _main                                                 0     0      0    7484
;;                            _initlcd
;;                         _initkeypad
;;                           _init_fun
;;                        _getlogicseq
;; ---------------------------------------------------------------------------------
;; (1) _getlogicseq                                         62    62      0    7120
;;                                             60 BANK0      4     4      0
;;                                              0 BANK1     58    58      0
;;                             _scroll
;;                             _strcpy
;;                              _write
;;                               _scan
;;                              _itoaa
;;                             _strcat
;;                        _startswitch
;; ---------------------------------------------------------------------------------
;; (2) _scroll                                              52    50      2    1820
;;                                             40 BANK0     20    18      2
;;                              _write
;;                              _delay
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (2) _startswitch                                          1     1      0    1523
;;                                             40 BANK0      1     1      0
;;                             _strcpy
;;                             _strcmp
;;                              _check
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
;; (3) _check                                                6     4      2     135
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (4) _strcmp                                               8     6      2      89
;;                                              0 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (4) _strcpy                                               7     5      2      73
;;                                              0 COMMON     7     5      2
;; ---------------------------------------------------------------------------------
;; (1) _init_fun                                             0     0      0       0
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
;;   _init_fun
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
;;     _strcpy
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
;;     _itoaa
;;       ___wmul
;;       ___awdiv
;;       ___awmod
;;     _strcat
;;     _startswitch
;;       _strcpy
;;       _strcmp
;;       _check
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
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      10       9       16.7%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50     3A      4E       7       97.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      C3      12        0.0%
;;ABS                  0      0      BC       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
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
;;		line 84 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  688[COMMON] int 
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_initlcd
;;		_initkeypad
;;		_init_fun
;;		_getlogicseq
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	84
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	88
	
l3641:	
;prev04.c: 88: initlcd();
	fcall	_initlcd
	line	89
	
l3643:	
;prev04.c: 89: initkeypad();
	fcall	_initkeypad
	line	90
	
l3645:	
;prev04.c: 90: init_fun();
	fcall	_init_fun
	line	100
;prev04.c: 100: while(1){
	
l689:	
	line	102
;prev04.c: 102: getlogicseq();
	fcall	_getlogicseq
	goto	l689
	line	103
	
l690:	
	line	100
	goto	l689
	
l691:	
	line	109
	
l692:	
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
;;		line 210 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  str            32    0[BANK1 ] unsigned char [32]
;;  snum           16   34[BANK1 ] unsigned char [16]
;;  num             2   56[BANK1 ] int 
;;  ccount          2   54[BANK1 ] int 
;;  wf              2   52[BANK1 ] int 
;;  nf              2   50[BANK1 ] int 
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
;;      Locals:         0       0      58       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4      58       0       0
;;Total ram usage:       62 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_scroll
;;		_strcpy
;;		_write
;;		_scan
;;		_itoaa
;;		_strcat
;;		_startswitch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text532
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	210
	global	__size_of_getlogicseq
	__size_of_getlogicseq	equ	__end_of_getlogicseq-_getlogicseq
	
_getlogicseq:	
	opt	stack 1
; Regs used in _getlogicseq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	213
	
l3449:	
;prev04.c: 213: scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scroll)
	movlw	high(0)
	movwf	((?_scroll))+1
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_scroll
	line	218
	
l3451:	
;prev04.c: 217: int num ;
;prev04.c: 218: char snum[16]="";
	movlw	(getlogicseq@snum)&0ffh
	movwf	fsr0
	movlw	low(getlogicseq@F1263)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	fsr0,w
	movwf	((??_getlogicseq+0)+0+1)
	movlw	16
	movwf	((??_getlogicseq+0)+0+2)
u4640:
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
	goto	u4640
	line	219
	
l3453:	
;prev04.c: 219: int wf=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	line	220
	
l3455:	
;prev04.c: 220: int nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	line	221
	
l3457:	
;prev04.c: 221: int bf=0;
	clrf	(getlogicseq@bf)^080h
	clrf	(getlogicseq@bf+1)^080h
	line	222
	
l3459:	
;prev04.c: 222: int ccount=0;
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	goto	l3461
	line	224
;prev04.c: 223: char str[32];
;prev04.c: 224: START_SEQ:
	
l720:	
	line	226
	
l3461:	
;prev04.c: 226: wf=0;ccount=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	
l3463:	
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	227
	
l3465:	
;prev04.c: 227: strcpy(str,"Enter Logic DEV1:  ");
	movlw	low((STR_5-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	228
	
l3467:	
;prev04.c: 228: write(str,1,1);
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
	line	229
	
l3469:	
;prev04.c: 229: write(logic_d1,2,0);
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
	goto	l3471
	line	231
;prev04.c: 231: while(1)
	
l721:	
	line	233
	
l3471:	
;prev04.c: 232: {
;prev04.c: 233: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	234
	
l3473:	
;prev04.c: 234: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4651
	goto	u4650
u4651:
	goto	l3477
u4650:
	
l3475:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4661
	goto	u4660
u4661:
	goto	l3491
u4660:
	goto	l3477
	
l724:	
	line	235
	
l3477:	
;prev04.c: 235: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4671
	goto	u4670
u4671:
	goto	l3493
u4670:
	line	237
	
l3479:	
;prev04.c: 236: {
;prev04.c: 237: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l726
u4680:
	line	238
	
l3481:	
;prev04.c: 238: strcpy(logic_d1,"");
	movlw	low((STR_6-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_logic_d1)&0ffh
	fcall	_strcpy
	
l726:	
	line	239
;prev04.c: 239: write("----",2,0);
	movlw	low((STR_7-__stringbase))
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
	line	240
;prev04.c: 240: itoaa(num, snum);
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
	line	241
	
l3483:	
;prev04.c: 241: strcat(logic_d1,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d1)&0ffh
	fcall	_strcat
	line	242
	
l3485:	
;prev04.c: 242: write( logic_d1,2,0); ;
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
	line	243
	
l3487:	
;prev04.c: 243: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	244
	
l3489:	
;prev04.c: 244: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3493
	line	245
	
l725:	
	line	246
;prev04.c: 245: }
;prev04.c: 246: }
	goto	l3493
	line	247
	
l722:	
	line	248
	
l3491:	
;prev04.c: 247: else{
;prev04.c: 248: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3493
	line	249
	
l727:	
	line	250
	
l3493:	
;prev04.c: 249: }
;prev04.c: 250: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4695
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4695:

	skipc
	goto	u4691
	goto	u4690
u4691:
	goto	l3497
u4690:
	goto	l3507
	line	251
	
l3495:	
;prev04.c: 251: break;
	goto	l3507
	
l728:	
	line	254
	
l3497:	
;prev04.c: 254: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l3503
u4700:
	line	256
	
l3499:	
;prev04.c: 255: {
;prev04.c: 256: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l3471
u4710:
	line	257
	
l3501:	
;prev04.c: 257: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	258
;prev04.c: 258: break;
	goto	l3507
	line	259
	
l731:	
	line	260
;prev04.c: 259: }
;prev04.c: 260: }
	goto	l3471
	line	261
	
l730:	
	
l3503:	
;prev04.c: 261: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l3471
u4720:
	line	262
	
l3505:	
;prev04.c: 262: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3471
	line	263
	
l733:	
	goto	l3471
	line	264
	
l732:	
	goto	l3471
	
l734:	
	line	231
	goto	l3471
	
l729:	
	line	267
	
l3507:	
;prev04.c: 263: }
;prev04.c: 264: }
;prev04.c: 267: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	268
	
l3509:	
;prev04.c: 268: strcpy(str,"Enter Logic DEV2:  ");
	movlw	low((STR_8-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	269
	
l3511:	
;prev04.c: 269: write(str,1,1);
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
	line	270
	
l3513:	
;prev04.c: 270: write(logic_d2,2,0);
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
	goto	l3515
	line	272
;prev04.c: 272: while(1)
	
l735:	
	line	274
	
l3515:	
;prev04.c: 273: {
;prev04.c: 274: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	275
	
l3517:	
;prev04.c: 275: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4731
	goto	u4730
u4731:
	goto	l3521
u4730:
	
l3519:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l3535
u4740:
	goto	l3521
	
l738:	
	line	276
	
l3521:	
;prev04.c: 276: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l3537
u4750:
	line	277
	
l3523:	
;prev04.c: 277: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4761
	goto	u4760
u4761:
	goto	l740
u4760:
	line	278
	
l3525:	
;prev04.c: 278: strcpy(logic_d2,"");
	movlw	low((STR_9-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_logic_d2)&0ffh
	fcall	_strcpy
	
l740:	
	line	279
;prev04.c: 279: write("----",2,0);
	movlw	low((STR_10-__stringbase))
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
	line	280
;prev04.c: 280: itoaa(num, snum);
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
	line	281
	
l3527:	
;prev04.c: 281: strcat(logic_d2,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d2)&0ffh
	fcall	_strcat
	line	282
	
l3529:	
;prev04.c: 282: write( logic_d2,2,0); ;
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
	line	283
	
l3531:	
;prev04.c: 283: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	284
	
l3533:	
;prev04.c: 284: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3537
	line	285
	
l739:	
	line	286
;prev04.c: 285: }
;prev04.c: 286: }
	goto	l3537
	line	287
	
l736:	
	line	288
	
l3535:	
;prev04.c: 287: else{
;prev04.c: 288: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3537
	line	289
	
l741:	
	line	290
	
l3537:	
;prev04.c: 289: }
;prev04.c: 290: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4775
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4775:

	skipc
	goto	u4771
	goto	u4770
u4771:
	goto	l3541
u4770:
	goto	l3551
	line	291
	
l3539:	
;prev04.c: 291: break;
	goto	l3551
	
l742:	
	line	293
	
l3541:	
;prev04.c: 293: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4781
	goto	u4780
u4781:
	goto	l3547
u4780:
	line	295
	
l3543:	
;prev04.c: 294: {
;prev04.c: 295: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4791
	goto	u4790
u4791:
	goto	l3515
u4790:
	line	296
	
l3545:	
;prev04.c: 296: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	297
;prev04.c: 297: break;
	goto	l3551
	line	298
	
l745:	
	line	299
;prev04.c: 298: }
;prev04.c: 299: }
	goto	l3515
	line	300
	
l744:	
	
l3547:	
;prev04.c: 300: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l3515
u4800:
	line	301
	
l3549:	
;prev04.c: 301: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3515
	line	302
	
l747:	
	goto	l3515
	line	303
	
l746:	
	goto	l3515
	
l748:	
	line	272
	goto	l3515
	
l743:	
	line	306
	
l3551:	
;prev04.c: 302: }
;prev04.c: 303: }
;prev04.c: 306: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	307
	
l3553:	
;prev04.c: 307: strcpy(str,"Enter Logic DEV3:  ");
	movlw	low((STR_11-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	308
	
l3555:	
;prev04.c: 308: write(str,1,1);
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
	line	309
	
l3557:	
;prev04.c: 309: write(logic_d3,2,0);
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
	goto	l3559
	line	311
;prev04.c: 311: while(1)
	
l749:	
	line	313
	
l3559:	
;prev04.c: 312: {
;prev04.c: 313: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	314
	
l3561:	
;prev04.c: 314: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4811
	goto	u4810
u4811:
	goto	l3565
u4810:
	
l3563:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4821
	goto	u4820
u4821:
	goto	l3579
u4820:
	goto	l3565
	
l752:	
	line	315
	
l3565:	
;prev04.c: 315: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l3581
u4830:
	line	316
	
l3567:	
;prev04.c: 316: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l754
u4840:
	line	317
	
l3569:	
;prev04.c: 317: strcpy(logic_d3,"");
	movlw	low((STR_12-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_logic_d3)&0ffh
	fcall	_strcpy
	
l754:	
	line	318
;prev04.c: 318: write("----",2,0);
	movlw	low((STR_13-__stringbase))
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
	line	319
;prev04.c: 319: itoaa(num, snum);
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
	line	320
	
l3571:	
;prev04.c: 320: strcat(logic_d3,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d3)&0ffh
	fcall	_strcat
	line	321
	
l3573:	
;prev04.c: 321: write( logic_d3,2,0); ;
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
	line	322
	
l3575:	
;prev04.c: 322: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	323
	
l3577:	
;prev04.c: 323: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3581
	line	324
	
l753:	
	line	325
;prev04.c: 324: }
;prev04.c: 325: }
	goto	l3581
	line	326
	
l750:	
	line	327
	
l3579:	
;prev04.c: 326: else{
;prev04.c: 327: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3581
	line	328
	
l755:	
	line	329
	
l3581:	
;prev04.c: 328: }
;prev04.c: 329: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4855
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4855:

	skipc
	goto	u4851
	goto	u4850
u4851:
	goto	l3585
u4850:
	goto	l3595
	line	330
	
l3583:	
;prev04.c: 330: break;
	goto	l3595
	
l756:	
	line	332
	
l3585:	
;prev04.c: 332: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4861
	goto	u4860
u4861:
	goto	l3591
u4860:
	line	334
	
l3587:	
;prev04.c: 333: {
;prev04.c: 334: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l3559
u4870:
	line	335
	
l3589:	
;prev04.c: 335: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	336
;prev04.c: 336: break;
	goto	l3595
	line	337
	
l759:	
	line	338
;prev04.c: 337: }
;prev04.c: 338: }
	goto	l3559
	line	339
	
l758:	
	
l3591:	
;prev04.c: 339: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l3559
u4880:
	line	340
	
l3593:	
;prev04.c: 340: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3559
	line	341
	
l761:	
	goto	l3559
	line	342
	
l760:	
	goto	l3559
	
l762:	
	line	311
	goto	l3559
	
l757:	
	line	346
	
l3595:	
;prev04.c: 341: }
;prev04.c: 342: }
;prev04.c: 346: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	347
	
l3597:	
;prev04.c: 347: strcpy(str,"Enter Logic DEV4:  ");
	movlw	low((STR_14-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	348
	
l3599:	
;prev04.c: 348: write(str,1,1);
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
	line	349
	
l3601:	
;prev04.c: 349: write(logic_d4,2,0);
	movlw	(_logic_d4&0ffh)
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
	goto	l3603
	line	351
;prev04.c: 351: while(1)
	
l763:	
	line	353
	
l3603:	
;prev04.c: 352: {
;prev04.c: 353: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	354
	
l3605:	
;prev04.c: 354: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4891
	goto	u4890
u4891:
	goto	l3609
u4890:
	
l3607:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l3623
u4900:
	goto	l3609
	
l766:	
	line	355
	
l3609:	
;prev04.c: 355: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4911
	goto	u4910
u4911:
	goto	l3625
u4910:
	line	357
	
l3611:	
;prev04.c: 356: {
;prev04.c: 357: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4921
	goto	u4920
u4921:
	goto	l768
u4920:
	line	358
	
l3613:	
;prev04.c: 358: strcpy(logic_d4,"");
	movlw	low((STR_15-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_logic_d4)&0ffh
	fcall	_strcpy
	
l768:	
	line	359
;prev04.c: 359: write("----",2,0);
	movlw	low((STR_16-__stringbase))
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
	line	360
;prev04.c: 360: itoaa(num, snum);
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
	line	361
	
l3615:	
;prev04.c: 361: strcat(logic_d4,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d4)&0ffh
	fcall	_strcat
	line	362
	
l3617:	
;prev04.c: 362: write( logic_d4,2,0); ;
	movlw	(_logic_d4&0ffh)
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
	line	363
	
l3619:	
;prev04.c: 363: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	364
	
l3621:	
;prev04.c: 364: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3625
	line	365
	
l767:	
	line	366
;prev04.c: 365: }
;prev04.c: 366: }
	goto	l3625
	line	367
	
l764:	
	line	368
	
l3623:	
;prev04.c: 367: else{
;prev04.c: 368: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3625
	line	369
	
l769:	
	line	370
	
l3625:	
;prev04.c: 369: }
;prev04.c: 370: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4935
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4935:

	skipc
	goto	u4931
	goto	u4930
u4931:
	goto	l3629
u4930:
	goto	l3639
	line	371
	
l3627:	
;prev04.c: 371: break;
	goto	l3639
	
l770:	
	line	373
	
l3629:	
;prev04.c: 373: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l3635
u4940:
	line	375
	
l3631:	
;prev04.c: 374: {
;prev04.c: 375: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4951
	goto	u4950
u4951:
	goto	l3603
u4950:
	line	376
	
l3633:	
;prev04.c: 376: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	377
;prev04.c: 377: break;
	goto	l3639
	line	378
	
l773:	
	line	379
;prev04.c: 378: }
;prev04.c: 379: }
	goto	l3603
	line	380
	
l772:	
	
l3635:	
;prev04.c: 380: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l3603
u4960:
	line	381
	
l3637:	
;prev04.c: 381: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3603
	line	382
	
l775:	
	goto	l3603
	line	383
	
l774:	
	goto	l3603
	
l776:	
	line	351
	goto	l3603
	
l771:	
	line	384
	
l3639:	
;prev04.c: 382: }
;prev04.c: 383: }
;prev04.c: 384: startswitch();;
	fcall	_startswitch
	line	387
	
l777:	
	return
	opt stack 0
GLOBAL	__end_of_getlogicseq
	__end_of_getlogicseq:
;; =============== function _getlogicseq ends ============

	signat	_getlogicseq,88
	global	_scroll
psect	text533,local,class=CODE,delta=2
global __ptext533
__ptext533:

;; *************** function _scroll *****************
;; Defined at:
;;		line 601 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text533
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	601
	global	__size_of_scroll
	__size_of_scroll	equ	__end_of_scroll-_scroll
	
_scroll:	
	opt	stack 1
; Regs used in _scroll: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;scroll@str stored from wreg
	line	603
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scroll@str)
	
l3409:	
;prev04.c: 603: write(str,1,0); ;
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
	line	604
	
l3411:	
;prev04.c: 604: int loopn=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@loopn)
	clrf	(scroll@loopn+1)
	line	606
	
l3413:	
;prev04.c: 605: int i;
;prev04.c: 606: int len=0;;
	clrf	(scroll@len)
	clrf	(scroll@len+1)
	line	607
	
l3415:	
;prev04.c: 607: int st=0;
	clrf	(scroll@st)
	clrf	(scroll@st+1)
	line	609
;prev04.c: 608: int en;
;prev04.c: 609: while(str[i]!='\0')
	goto	l3419
	
l869:	
	line	610
	
l3417:	
;prev04.c: 610: { i++;
	movlw	low(01h)
	addwf	(scroll@i),f
	skipnc
	incf	(scroll@i+1),f
	movlw	high(01h)
	addwf	(scroll@i+1),f
	line	611
;prev04.c: 611: len++;
	movlw	low(01h)
	addwf	(scroll@len),f
	skipnc
	incf	(scroll@len+1),f
	movlw	high(01h)
	addwf	(scroll@len+1),f
	goto	l3419
	line	612
	
l868:	
	line	609
	
l3419:	
	movf	(scroll@i),w
	addwf	(scroll@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l3417
u4590:
	goto	l3421
	
l870:	
	line	613
	
l3421:	
;prev04.c: 612: }
;prev04.c: 613: en=len-1;
	movf	(scroll@len),w
	addlw	low(-1)
	movwf	(scroll@en)
	movf	(scroll@len+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(scroll@en)
	line	615
	
l3423:	
;prev04.c: 615: if(len>32)
	movf	(scroll@len+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(021h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4605
	movlw	low(021h)
	subwf	(scroll@len),w
u4605:

	skipc
	goto	u4601
	goto	u4600
u4601:
	goto	l880
u4600:
	line	619
	
l3425:	
;prev04.c: 616: {
;prev04.c: 618: char dest [32] ;
;prev04.c: 619: int startat=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@startat)
	clrf	(scroll@startat+1)
	line	620
	
l3427:	
;prev04.c: 620: int endat=31;
	movlw	low(01Fh)
	movwf	(scroll@endat)
	movlw	high(01Fh)
	movwf	((scroll@endat))+1
	goto	l3429
	line	621
;prev04.c: 621: START:
	
l872:	
	line	622
	
l3429:	
;prev04.c: 622: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	623
;prev04.c: 623: while(i++<32)
	goto	l3435
	
l874:	
	line	626
	
l3431:	
;prev04.c: 624: {
;prev04.c: 626: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	627
	
l3433:	
;prev04.c: 627: cmd(0x1E);
	movlw	low(01Eh)
	movwf	(?_cmd)
	movlw	high(01Eh)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3435
	line	630
	
l873:	
	line	623
	
l3435:	
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
	goto	u4615
	movlw	low(021h)
	subwf	((scroll@i)),w
u4615:

	skipc
	goto	u4611
	goto	u4610
u4611:
	goto	l3431
u4610:
	goto	l3437
	
l875:	
	line	632
	
l3437:	
;prev04.c: 630: }
;prev04.c: 632: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	633
;prev04.c: 633: while(i++<32)
	goto	l3443
	
l877:	
	line	636
	
l3439:	
;prev04.c: 634: {
;prev04.c: 636: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	637
	
l3441:	
;prev04.c: 637: cmd(0x18);
	movlw	low(018h)
	movwf	(?_cmd)
	movlw	high(018h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3443
	line	640
	
l876:	
	line	633
	
l3443:	
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
	goto	u4625
	movlw	low(021h)
	subwf	((scroll@i)),w
u4625:

	skipc
	goto	u4621
	goto	u4620
u4621:
	goto	l3439
u4620:
	goto	l3445
	
l878:	
	line	641
	
l3445:	
;prev04.c: 640: }
;prev04.c: 641: if(loopn++<loops)
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
	goto	u4635
	movf	(scroll@loops),w
	subwf	0+(??_scroll+0)+0,w
u4635:

	skipnc
	goto	u4631
	goto	u4630
u4631:
	goto	l880
u4630:
	goto	l3429
	line	642
	
l3447:	
;prev04.c: 642: goto START;
	goto	l3429
	
l879:	
	goto	l880
	line	643
	
l871:	
	line	648
	
l880:	
	return
	opt stack 0
GLOBAL	__end_of_scroll
	__end_of_scroll:
;; =============== function _scroll ends ============

	signat	_scroll,8312
	global	_startswitch
psect	text534,local,class=CODE,delta=2
global __ptext534
__ptext534:

;; *************** function _startswitch *****************
;; Defined at:
;;		line 129 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_strcpy
;;		_strcmp
;;		_check
;;		_write
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text534
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	129
	global	__size_of_startswitch
	__size_of_startswitch	equ	__end_of_startswitch-_startswitch
	
_startswitch:	
	opt	stack 1
; Regs used in _startswitch: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	132
	
l3327:	
;prev04.c: 132: strcpy(plo,lo);
	movlw	(_lo&0ffh)
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	(_plo)&0ffh
	fcall	_strcpy
	line	133
;prev04.c: 133: strcpy(lo,"0000");;
	movlw	low((STR_1-__stringbase))
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_lo)&0ffh
	fcall	_strcpy
	line	135
	
l3329:	
;prev04.c: 135: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l3333
u4430:
	line	136
	
l3331:	
;prev04.c: 136: lo[0]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(_lo)
	goto	l3333
	
l695:	
	line	137
	
l3333:	
;prev04.c: 137: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l3337
u4440:
	line	138
	
l3335:	
;prev04.c: 138: lo[1]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+01h
	goto	l3337
	
l696:	
	line	139
	
l3337:	
;prev04.c: 139: if(RC6==1)
	btfss	(62/8),(62)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l3341
u4450:
	line	140
	
l3339:	
;prev04.c: 140: lo[2]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+02h
	goto	l3341
	
l697:	
	line	141
	
l3341:	
;prev04.c: 141: if(RC0==1)
	btfss	(56/8),(56)&7
	goto	u4461
	goto	u4460
u4461:
	goto	l3345
u4460:
	line	142
	
l3343:	
;prev04.c: 142: lo[4]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+04h
	goto	l3345
	
l698:	
	line	145
	
l3345:	
;prev04.c: 145: pdev=dev;
	movf	(_dev+1),w
	clrf	(_pdev+1)
	addwf	(_pdev+1)
	movf	(_dev),w
	clrf	(_pdev)
	addwf	(_pdev)

	line	146
	
l3347:	
;prev04.c: 146: dev=0b0000;
	clrf	(_dev)
	clrf	(_dev+1)
	line	148
	
l3349:	
;prev04.c: 148: if(strcmp(lo,plo)!=0&&strcmp(lo,"0000")!=0)
	movlw	(_plo&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	iorwf	(0+(?_strcmp)),w
	skipnz
	goto	u4471
	goto	u4470
u4471:
	goto	l708
u4470:
	
l3351:	
	movlw	low((STR_2-__stringbase))
	movwf	(?_strcmp)
	movlw	80h
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	iorwf	(0+(?_strcmp)),w
	skipnz
	goto	u4481
	goto	u4480
u4481:
	goto	l708
u4480:
	line	154
	
l3353:	
;prev04.c: 149: {
;prev04.c: 154: if(check(lo,logic_d1))
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
	goto	u4491
	goto	u4490
u4491:
	goto	l3357
u4490:
	line	155
	
l3355:	
;prev04.c: 155: dev=dev|0b0001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(01h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3359
	line	156
	
l700:	
	line	157
	
l3357:	
;prev04.c: 156: else
;prev04.c: 157: dev=dev&0b1110;
	movlw	low(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(0Eh)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3359
	
l701:	
	line	159
	
l3359:	
;prev04.c: 159: if(check(lo,logic_d2))
	movlw	(_logic_d2)&0ffh
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(?_check)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4501
	goto	u4500
u4501:
	goto	l3363
u4500:
	line	160
	
l3361:	
;prev04.c: 160: dev=dev|0b0010;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(02h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3365
	line	161
	
l702:	
	line	162
	
l3363:	
;prev04.c: 161: else
;prev04.c: 162: dev=dev&0b1101;
	movlw	low(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(0Dh)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3365
	
l703:	
	line	165
	
l3365:	
;prev04.c: 165: if(check(lo,logic_d3))
	movlw	(_logic_d3)&0ffh
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(?_check)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4511
	goto	u4510
u4511:
	goto	l3369
u4510:
	line	166
	
l3367:	
;prev04.c: 166: dev=dev|0b0100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(04h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3371
	line	167
	
l704:	
	line	168
	
l3369:	
;prev04.c: 167: else
;prev04.c: 168: dev=dev&0b1011;
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(0Bh)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3371
	
l705:	
	line	171
	
l3371:	
;prev04.c: 171: if(check(lo,logic_d4))
	movlw	(_logic_d4)&0ffh
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(?_check)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4521
	goto	u4520
u4521:
	goto	l3375
u4520:
	line	172
	
l3373:	
;prev04.c: 172: dev=dev|0b1000;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(08h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l707
	line	173
	
l706:	
	line	174
	
l3375:	
;prev04.c: 173: else
;prev04.c: 174: dev=dev&0b0111;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(07h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	
l707:	
	line	177
;prev04.c: 177: PORTA=dev;
	movf	(_dev),w
	movwf	(5)	;volatile
	goto	l708
	line	178
	
l699:	
	goto	l708
	line	179
	
l3377:	
;prev04.c: 178: }
;prev04.c: 179: return;
	goto	l708
	line	182
	
l3379:	
;prev04.c: 182: if(strcmp(lo,logic_d1)==0)
	movlw	(_logic_d1&0ffh)
	movwf	(?_strcmp)
	movlw	(0x0/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l3383
u4530:
	line	183
	
l3381:	
;prev04.c: 183: dev=0b0001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dev)
	movlw	high(01h)
	movwf	((_dev))+1
	goto	l3383
	
l709:	
	line	185
	
l3383:	
;prev04.c: 185: if(strcmp(lo,logic_d2)==0)
	movlw	(_logic_d2&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u4541
	goto	u4540
u4541:
	goto	l3387
u4540:
	line	186
	
l3385:	
;prev04.c: 186: dev=dev|0b0010;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(02h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3387
	
l710:	
	line	188
	
l3387:	
;prev04.c: 188: if(strcmp(lo,logic_d3)==0)
	movlw	(_logic_d3&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u4551
	goto	u4550
u4551:
	goto	l3391
u4550:
	line	189
	
l3389:	
;prev04.c: 189: dev=dev|0b0100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(04h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3391
	
l711:	
	line	191
	
l3391:	
;prev04.c: 191: if(strcmp(lo,logic_d4)==0)
	movlw	(_logic_d4&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u4561
	goto	u4560
u4561:
	goto	l3395
u4560:
	line	192
	
l3393:	
;prev04.c: 192: dev=dev|0b1000;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(08h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3395
	
l712:	
	line	193
	
l3395:	
;prev04.c: 193: write(lo,1,1);
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
	line	195
	
l3397:	
;prev04.c: 195: if(pdev!=dev)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dev+1),w
	xorwf	(_pdev+1),w
	skipz
	goto	u4575
	movf	(_dev),w
	xorwf	(_pdev),w
u4575:

	skipnz
	goto	u4571
	goto	u4570
u4571:
	goto	l3403
u4570:
	line	197
	
l3399:	
;prev04.c: 196: {
;prev04.c: 197: write(lo,1,1);
	movlw	(_lo&0ffh)
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
	line	198
	
l3401:	
;prev04.c: 198: PORTA=dev;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dev),w
	movwf	(5)	;volatile
	goto	l3403
	line	199
	
l713:	
	line	201
	
l3403:	
;prev04.c: 199: }
;prev04.c: 201: if(strcmp(lo,"1000")==0)
	movlw	low((STR_3-__stringbase))
	movwf	(?_strcmp)
	movlw	80h
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u4581
	goto	u4580
u4581:
	goto	l3407
u4580:
	line	202
	
l3405:	
;prev04.c: 202: PORTA=0xF;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l708
	line	203
	
l714:	
	line	204
	
l3407:	
;prev04.c: 203: else
;prev04.c: 204: PORTA=0x0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	goto	l708
	
l715:	
	line	206
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_startswitch
	__end_of_startswitch:
;; =============== function _startswitch ends ============

	signat	_startswitch,88
	global	_write
psect	text535,local,class=CODE,delta=2
global __ptext535
__ptext535:

;; *************** function _write *****************
;; Defined at:
;;		line 580 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
;; Parameters:    Size  Location     Type
;;  str             2   34[BANK0 ] PTR unsigned char 
;;		 -> STR_16(5), STR_13(5), STR_10(5), STR_7(5), 
;;		 -> getlogicseq@str(32), STR_4(38), logic_d4(5), logic_d3(5), 
;;		 -> logic_d2(5), logic_d1(5), lo(5), 
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
;;		_startswitch
;;		_getlogicseq
;;		_scroll
;; This function uses a non-reentrant model
;;
psect	text535
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	580
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 1
; Regs used in _write: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	581
	
l3309:	
;prev04.c: 581: if(erase==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@erase),w
	iorwf	(write@erase+1),w
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l3313
u4400:
	line	582
	
l3311:	
;prev04.c: 582: clearlcd();
	fcall	_clearlcd
	goto	l3313
	
l859:	
	line	584
	
l3313:	
;prev04.c: 584: if(line==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@line),w
	iorwf	(write@line+1),w
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l3317
u4410:
	line	585
	
l3315:	
;prev04.c: 585: cmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_cmd)
	movlw	high(0C0h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3319
	line	586
	
l860:	
	line	587
	
l3317:	
;prev04.c: 586: else
;prev04.c: 587: cmd(0x2);
	movlw	low(02h)
	movwf	(?_cmd)
	movlw	high(02h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3319
	
l861:	
	line	589
	
l3319:	
;prev04.c: 589: int i=0;
	clrf	(write@i)
	clrf	(write@i+1)
	line	590
;prev04.c: 590: while(str[i]!='\0')
	goto	l3325
	
l863:	
	line	592
	
l3321:	
;prev04.c: 591: {
;prev04.c: 592: dat(str[i]);
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
	line	593
	
l3323:	
;prev04.c: 593: i++;
	movlw	low(01h)
	addwf	(write@i),f
	skipnc
	incf	(write@i+1),f
	movlw	high(01h)
	addwf	(write@i+1),f
	goto	l3325
	line	594
	
l862:	
	line	590
	
l3325:	
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
	goto	u4421
	goto	u4420
u4421:
	goto	l3321
u4420:
	goto	l865
	
l864:	
	line	597
	
l865:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,12408
	global	_clearlcd
psect	text536,local,class=CODE,delta=2
global __ptext536
__ptext536:

;; *************** function _clearlcd *****************
;; Defined at:
;;		line 523 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text536
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	523
	global	__size_of_clearlcd
	__size_of_clearlcd	equ	__end_of_clearlcd-_clearlcd
	
_clearlcd:	
	opt	stack 1
; Regs used in _clearlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	524
	
l3307:	
;prev04.c: 524: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	525
	
l843:	
	return
	opt stack 0
GLOBAL	__end_of_clearlcd
	__end_of_clearlcd:
;; =============== function _clearlcd ends ============

	signat	_clearlcd,88
	global	_scan
psect	text537,local,class=CODE,delta=2
global __ptext537
__ptext537:

;; *************** function _scan *****************
;; Defined at:
;;		line 662 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text537
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	662
	global	__size_of_scan
	__size_of_scan	equ	__end_of_scan-_scan
	
_scan:	
	opt	stack 4
; Regs used in _scan: [wreg+status,2+status,0+pclath+cstack]
	line	663
	
l3199:	
;prev04.c: 663: actrow(1) ;
	movlw	low(01h)
	movwf	(?_actrow)
	movlw	high(01h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	664
	
l3201:	
;prev04.c: 664: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l886
u4240:
	line	665
	
l3203:	
;prev04.c: 665: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l887
	
l3205:	
	goto	l887
	
l3207:	
	goto	l3225
	line	666
	
l886:	
;prev04.c: 666: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l889
u4250:
	line	667
	
l3209:	
;prev04.c: 667: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l887
	
l3211:	
	goto	l887
	
l3213:	
	goto	l3225
	line	668
	
l889:	
;prev04.c: 668: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l891
u4260:
	line	669
	
l3215:	
;prev04.c: 669: return 2;
	movlw	low(02h)
	movwf	(?_scan)
	movlw	high(02h)
	movwf	((?_scan))+1
	goto	l887
	
l3217:	
	goto	l887
	
l3219:	
	goto	l3225
	line	670
	
l891:	
;prev04.c: 670: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l3225
u4270:
	line	671
	
l3221:	
;prev04.c: 671: return 4;
	movlw	low(04h)
	movwf	(?_scan)
	movlw	high(04h)
	movwf	((?_scan))+1
	goto	l887
	
l3223:	
	goto	l887
	
l893:	
	goto	l3225
	line	673
	
l892:	
	goto	l3225
	
l890:	
	goto	l3225
	
l888:	
	
l3225:	
;prev04.c: 673: actrow(2) ;
	movlw	low(02h)
	movwf	(?_actrow)
	movlw	high(02h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	675
	
l3227:	
;prev04.c: 675: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l894
u4280:
	line	676
	
l3229:	
;prev04.c: 676: return 5;
	movlw	low(05h)
	movwf	(?_scan)
	movlw	high(05h)
	movwf	((?_scan))+1
	goto	l887
	
l3231:	
	goto	l887
	
l3233:	
	goto	l3251
	line	677
	
l894:	
;prev04.c: 677: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l896
u4290:
	line	678
	
l3235:	
;prev04.c: 678: return 6;
	movlw	low(06h)
	movwf	(?_scan)
	movlw	high(06h)
	movwf	((?_scan))+1
	goto	l887
	
l3237:	
	goto	l887
	
l3239:	
	goto	l3251
	line	679
	
l896:	
;prev04.c: 679: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l898
u4300:
	line	680
	
l3241:	
;prev04.c: 680: return 7;
	movlw	low(07h)
	movwf	(?_scan)
	movlw	high(07h)
	movwf	((?_scan))+1
	goto	l887
	
l3243:	
	goto	l887
	
l3245:	
	goto	l3251
	line	681
	
l898:	
;prev04.c: 681: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l3251
u4310:
	line	682
	
l3247:	
;prev04.c: 682: return 8;
	movlw	low(08h)
	movwf	(?_scan)
	movlw	high(08h)
	movwf	((?_scan))+1
	goto	l887
	
l3249:	
	goto	l887
	
l900:	
	goto	l3251
	line	684
	
l899:	
	goto	l3251
	
l897:	
	goto	l3251
	
l895:	
	
l3251:	
;prev04.c: 684: actrow(3) ;
	movlw	low(03h)
	movwf	(?_actrow)
	movlw	high(03h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	686
	
l3253:	
;prev04.c: 686: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4321
	goto	u4320
u4321:
	goto	l901
u4320:
	line	687
	
l3255:	
;prev04.c: 687: return 9;
	movlw	low(09h)
	movwf	(?_scan)
	movlw	high(09h)
	movwf	((?_scan))+1
	goto	l887
	
l3257:	
	goto	l887
	
l3259:	
	goto	l3277
	line	688
	
l901:	
;prev04.c: 688: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l903
u4330:
	line	689
	
l3261:	
;prev04.c: 689: return 10;
	movlw	low(0Ah)
	movwf	(?_scan)
	movlw	high(0Ah)
	movwf	((?_scan))+1
	goto	l887
	
l3263:	
	goto	l887
	
l3265:	
	goto	l3277
	line	690
	
l903:	
;prev04.c: 690: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4341
	goto	u4340
u4341:
	goto	l905
u4340:
	line	691
	
l3267:	
;prev04.c: 691: return 11;
	movlw	low(0Bh)
	movwf	(?_scan)
	movlw	high(0Bh)
	movwf	((?_scan))+1
	goto	l887
	
l3269:	
	goto	l887
	
l3271:	
	goto	l3277
	line	692
	
l905:	
;prev04.c: 692: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4351
	goto	u4350
u4351:
	goto	l3277
u4350:
	line	693
	
l3273:	
;prev04.c: 693: return 12;
	movlw	low(0Ch)
	movwf	(?_scan)
	movlw	high(0Ch)
	movwf	((?_scan))+1
	goto	l887
	
l3275:	
	goto	l887
	
l907:	
	goto	l3277
	line	696
	
l906:	
	goto	l3277
	
l904:	
	goto	l3277
	
l902:	
	
l3277:	
;prev04.c: 696: actrow(4) ;
	movlw	low(04h)
	movwf	(?_actrow)
	movlw	high(04h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	698
	
l3279:	
;prev04.c: 698: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4361
	goto	u4360
u4361:
	goto	l908
u4360:
	line	699
	
l3281:	
;prev04.c: 699: return 13;
	movlw	low(0Dh)
	movwf	(?_scan)
	movlw	high(0Dh)
	movwf	((?_scan))+1
	goto	l887
	
l3283:	
	goto	l887
	
l3285:	
	goto	l3303
	line	700
	
l908:	
;prev04.c: 700: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l910
u4370:
	line	701
	
l3287:	
;prev04.c: 701: return 14;
	movlw	low(0Eh)
	movwf	(?_scan)
	movlw	high(0Eh)
	movwf	((?_scan))+1
	goto	l887
	
l3289:	
	goto	l887
	
l3291:	
	goto	l3303
	line	702
	
l910:	
;prev04.c: 702: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l912
u4380:
	line	703
	
l3293:	
;prev04.c: 703: return 15;
	movlw	low(0Fh)
	movwf	(?_scan)
	movlw	high(0Fh)
	movwf	((?_scan))+1
	goto	l887
	
l3295:	
	goto	l887
	
l3297:	
	goto	l3303
	line	704
	
l912:	
;prev04.c: 704: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l3303
u4390:
	line	705
	
l3299:	
;prev04.c: 705: return 16;
	movlw	low(010h)
	movwf	(?_scan)
	movlw	high(010h)
	movwf	((?_scan))+1
	goto	l887
	
l3301:	
	goto	l887
	
l914:	
	goto	l3303
	line	709
	
l913:	
	goto	l3303
	
l911:	
	goto	l3303
	
l909:	
	
l3303:	
;prev04.c: 709: return 99;
	movlw	low(063h)
	movwf	(?_scan)
	movlw	high(063h)
	movwf	((?_scan))+1
	goto	l887
	
l3305:	
	line	713
	
l887:	
	return
	opt stack 0
GLOBAL	__end_of_scan
	__end_of_scan:
;; =============== function _scan ends ============

	signat	_scan,90
	global	_initlcd
psect	text538,local,class=CODE,delta=2
global __ptext538
__ptext538:

;; *************** function _initlcd *****************
;; Defined at:
;;		line 505 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text538
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	505
	global	__size_of_initlcd
	__size_of_initlcd	equ	__end_of_initlcd-_initlcd
	
_initlcd:	
	opt	stack 4
; Regs used in _initlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	507
	
l3185:	
;prev04.c: 507: TRISC=0b00111111;
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	509
	
l3187:	
;prev04.c: 509: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	511
	
l3189:	
;prev04.c: 511: cmd(0x38);
	movlw	low(038h)
	movwf	(?_cmd)
	movlw	high(038h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	513
	
l3191:	
;prev04.c: 513: cmd(0x0C);
	movlw	low(0Ch)
	movwf	(?_cmd)
	movlw	high(0Ch)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	515
	
l3193:	
;prev04.c: 515: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	517
	
l3195:	
;prev04.c: 517: cmd(0x80);
	movlw	low(080h)
	movwf	(?_cmd)
	movlw	high(080h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	519
	
l3197:	
;prev04.c: 519: cmd(0x0f);
	movlw	low(0Fh)
	movwf	(?_cmd)
	movlw	high(0Fh)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	521
	
l840:	
	return
	opt stack 0
GLOBAL	__end_of_initlcd
	__end_of_initlcd:
;; =============== function _initlcd ends ============

	signat	_initlcd,88
	global	_actrow
psect	text539,local,class=CODE,delta=2
global __ptext539
__ptext539:

;; *************** function _actrow *****************
;; Defined at:
;;		line 721 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text539
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	721
	global	__size_of_actrow
	__size_of_actrow	equ	__end_of_actrow-_actrow
	
_actrow:	
	opt	stack 4
; Regs used in _actrow: [wreg+status,2+status,0+pclath+cstack]
	line	722
	
l3165:	
;prev04.c: 722: resetout();
	fcall	_resetout
	line	724
	
l3167:	
;prev04.c: 724: if(n==1)
	movlw	01h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l3171
u4200:
	line	726
	
l3169:	
;prev04.c: 725: {
;prev04.c: 726: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	727
;prev04.c: 727: }
	goto	l3183
	line	728
	
l920:	
	
l3171:	
;prev04.c: 728: else if(n==2)
	movlw	02h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l3175
u4210:
	line	730
	
l3173:	
;prev04.c: 729: {
;prev04.c: 730: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	731
;prev04.c: 731: }
	goto	l3183
	line	732
	
l922:	
	
l3175:	
;prev04.c: 732: else if(n==3)
	movlw	03h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4221
	goto	u4220
u4221:
	goto	l3179
u4220:
	line	734
	
l3177:	
;prev04.c: 733: {
;prev04.c: 734: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	735
;prev04.c: 735: }
	goto	l3183
	line	736
	
l924:	
	
l3179:	
;prev04.c: 736: else if(n==4)
	movlw	04h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l3183
u4230:
	line	738
	
l3181:	
;prev04.c: 737: {
;prev04.c: 738: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	goto	l3183
	line	739
	
l926:	
	goto	l3183
	line	740
	
l925:	
	goto	l3183
	
l923:	
	goto	l3183
	
l921:	
	
l3183:	
;prev04.c: 739: }
;prev04.c: 740: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	743
	
l927:	
	return
	opt stack 0
GLOBAL	__end_of_actrow
	__end_of_actrow:
;; =============== function _actrow ends ============

	signat	_actrow,4216
	global	_dat
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:

;; *************** function _dat *****************
;; Defined at:
;;		line 538 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text540
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	538
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 2
; Regs used in _dat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	539
	
l3153:	
;prev04.c: 539: setLCD(Command);
	movf	(dat@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(dat@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	541
	
l3155:	
;prev04.c: 541: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	543
	
l3157:	
;prev04.c: 543: RC1=1;
	bsf	(57/8),(57)&7
	line	545
	
l3159:	
;prev04.c: 545: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	547
	
l3161:	
;prev04.c: 547: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	549
	
l3163:	
;prev04.c: 549: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	555
	
l849:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:

;; *************** function _cmd *****************
;; Defined at:
;;		line 527 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text541
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	527
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 2
; Regs used in _cmd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	528
	
l3141:	
;prev04.c: 528: setLCD(Command);
	movf	(cmd@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(cmd@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	529
	
l3143:	
;prev04.c: 529: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	530
	
l3145:	
;prev04.c: 530: RC1=1;
	bsf	(57/8),(57)&7
	line	531
	
l3147:	
;prev04.c: 531: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	532
	
l3149:	
;prev04.c: 532: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	533
	
l3151:	
;prev04.c: 533: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	535
	
l846:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_itoaa
psect	text542,local,class=CODE,delta=2
global __ptext542
__ptext542:

;; *************** function _itoaa *****************
;; Defined at:
;;		line 478 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text542
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	478
	global	__size_of_itoaa
	__size_of_itoaa	equ	__end_of_itoaa-_itoaa
	
_itoaa:	
	opt	stack 5
; Regs used in _itoaa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	479
	
l3093:	
;prev04.c: 479: int count=0,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@count)
	clrf	(itoaa@count+1)
	line	480
	
l3095:	
;prev04.c: 480: if(ptr==(0))
	movf	(itoaa@ptr),f
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l3099
u4130:
	goto	l831
	line	481
	
l3097:	
;prev04.c: 481: return 0;
;	Return value of _itoaa is never used
	goto	l831
	
l830:	
	line	482
	
l3099:	
;prev04.c: 482: if(value==0)
	movf	((itoaa@value+1)),w
	iorwf	((itoaa@value)),w
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l832
u4140:
	line	484
	
l3101:	
;prev04.c: 483: {
;prev04.c: 484: *ptr='0';
	movlw	(030h)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l831
	line	485
	
l3103:	
;prev04.c: 485: return 1;
;	Return value of _itoaa is never used
	goto	l831
	line	486
	
l832:	
	line	488
;prev04.c: 486: }
;prev04.c: 488: if(value<0)
	btfss	(itoaa@value+1),7
	goto	u4151
	goto	u4150
u4151:
	goto	l3113
u4150:
	line	490
	
l3105:	
;prev04.c: 489: {
;prev04.c: 490: value*=(-1);
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

	line	491
	
l3107:	
;prev04.c: 491: *ptr++='-';
	movlw	(02Dh)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3109:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	line	492
	
l3111:	
;prev04.c: 492: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	goto	l3113
	line	493
	
l833:	
	line	494
	
l3113:	
;prev04.c: 493: }
;prev04.c: 494: for(temp=value;temp>0;temp/=10,ptr++);
	movf	(itoaa@value+1),w
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3115:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4165
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4165:

	skipnc
	goto	u4161
	goto	u4160
u4161:
	goto	l3119
u4160:
	goto	l3125
	
l3117:	
	goto	l3125
	
l834:	
	
l3119:	
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

	
l3121:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	
l3123:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4175
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4175:

	skipnc
	goto	u4171
	goto	u4170
u4171:
	goto	l3119
u4170:
	goto	l3125
	
l835:	
	line	495
	
l3125:	
;prev04.c: 495: *ptr='\0';
	movf	(itoaa@ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	496
	
l3127:	
;prev04.c: 496: for(temp=value;temp>0;temp/=10)
	movf	(itoaa@value+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3129:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4185
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4185:

	skipnc
	goto	u4181
	goto	u4180
u4181:
	goto	l3133
u4180:
	goto	l831
	
l3131:	
	goto	l831
	line	497
	
l836:	
	line	498
	
l3133:	
;prev04.c: 497: {
;prev04.c: 498: *--ptr=temp%10+'0';
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
	line	499
	
l3135:	
;prev04.c: 499: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	line	496
	
l3137:	
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

	
l3139:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4195
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4195:

	skipnc
	goto	u4191
	goto	u4190
u4191:
	goto	l3133
u4190:
	goto	l831
	
l837:	
	line	502
;prev04.c: 500: }
;prev04.c: 501: return count;
;	Return value of _itoaa is never used
	
l831:	
	return
	opt stack 0
GLOBAL	__end_of_itoaa
	__end_of_itoaa:
;; =============== function _itoaa ends ============

	signat	_itoaa,8314
	global	___awmod
psect	text543,local,class=CODE,delta=2
global __ptext543
__ptext543:

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
psect	text543
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3059:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u4041
	goto	u4040
u4041:
	goto	l3063
u4040:
	line	10
	
l3061:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3063
	line	12
	
l1167:	
	line	13
	
l3063:	
	btfss	(___awmod@divisor+1),7
	goto	u4051
	goto	u4050
u4051:
	goto	l3067
u4050:
	line	14
	
l3065:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3067
	
l1168:	
	line	15
	
l3067:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4061
	goto	u4060
u4061:
	goto	l3085
u4060:
	line	16
	
l3069:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3075
	
l1171:	
	line	18
	
l3071:	
	movlw	01h
	
u4075:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4075
	line	19
	
l3073:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3075
	line	20
	
l1170:	
	line	17
	
l3075:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l3071
u4080:
	goto	l3077
	
l1172:	
	goto	l3077
	line	21
	
l1173:	
	line	22
	
l3077:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4095
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4095:
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l3081
u4090:
	line	23
	
l3079:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3081
	
l1174:	
	line	24
	
l3081:	
	movlw	01h
	
u4105:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4105
	line	25
	
l3083:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l3077
u4110:
	goto	l3085
	
l1175:	
	goto	l3085
	line	26
	
l1169:	
	line	27
	
l3085:	
	movf	(___awmod@sign),w
	skipz
	goto	u4120
	goto	l3089
u4120:
	line	28
	
l3087:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3089
	
l1176:	
	line	29
	
l3089:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1177
	
l3091:	
	line	30
	
l1177:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text544,local,class=CODE,delta=2
global __ptext544
__ptext544:

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
psect	text544
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3019:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3941
	goto	u3940
u3941:
	goto	l3023
u3940:
	line	11
	
l3021:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3023
	line	13
	
l1099:	
	line	14
	
l3023:	
	btfss	(___awdiv@dividend+1),7
	goto	u3951
	goto	u3950
u3951:
	goto	l3029
u3950:
	line	15
	
l3025:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3027:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3029
	line	17
	
l1100:	
	line	18
	
l3029:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3031:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3961
	goto	u3960
u3961:
	goto	l3051
u3960:
	line	20
	
l3033:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3039
	
l1103:	
	line	22
	
l3035:	
	movlw	01h
	
u3975:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3975
	line	23
	
l3037:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3039
	line	24
	
l1102:	
	line	21
	
l3039:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l3035
u3980:
	goto	l3041
	
l1104:	
	goto	l3041
	line	25
	
l1105:	
	line	26
	
l3041:	
	movlw	01h
	
u3995:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3995
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4005
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4005:
	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l3047
u4000:
	line	28
	
l3043:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3045:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3047
	line	30
	
l1106:	
	line	31
	
l3047:	
	movlw	01h
	
u4015:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u4015
	line	32
	
l3049:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l3041
u4020:
	goto	l3051
	
l1107:	
	goto	l3051
	line	33
	
l1101:	
	line	34
	
l3051:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4030
	goto	l3055
u4030:
	line	35
	
l3053:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3055
	
l1108:	
	line	36
	
l3055:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1109
	
l3057:	
	line	37
	
l1109:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text545,local,class=CODE,delta=2
global __ptext545
__ptext545:

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
psect	text545
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3007:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3009
	line	6
	
l959:	
	line	7
	
l3009:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l960
u3900:
	line	8
	
l3011:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l960:	
	line	9
	movlw	01h
	
u3915:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3915
	line	10
	
l3013:	
	movlw	01h
	
u3925:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3925
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l3009
u3930:
	goto	l3015
	
l961:	
	line	12
	
l3015:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l962
	
l3017:	
	line	13
	
l962:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_resetout
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:

;; *************** function _resetout *****************
;; Defined at:
;;		line 717 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text546
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	717
	global	__size_of_resetout
	__size_of_resetout	equ	__end_of_resetout-_resetout
	
_resetout:	
	opt	stack 4
; Regs used in _resetout: []
	line	718
	
l3005:	
;prev04.c: 718: RC2=0;RC3=0;RB6=0;RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(54/8),(54)&7
	bcf	(55/8),(55)&7
	line	719
	
l917:	
	return
	opt stack 0
GLOBAL	__end_of_resetout
	__end_of_resetout:
;; =============== function _resetout ends ============

	signat	_resetout,88
	global	_setLCD
psect	text547,local,class=CODE,delta=2
global __ptext547
__ptext547:

;; *************** function _setLCD *****************
;; Defined at:
;;		line 557 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text547
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	557
	global	__size_of_setLCD
	__size_of_setLCD	equ	__end_of_setLCD-_setLCD
	
_setLCD:	
	opt	stack 2
; Regs used in _setLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	562
	
l2991:	
;prev04.c: 558: const int size=8*sizeof(int);
;prev04.c: 559: int vbool[8*sizeof(int)];
;prev04.c: 560: int i;;
;prev04.c: 562: for (i = 0; i <size; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLCD@i)
	clrf	(setLCD@i+1)
	
l2993:	
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
	goto	u3715
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3715:

	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l2997
u3710:
	goto	l3003
	
l2995:	
	goto	l3003
	line	563
	
l854:	
	line	564
	
l2997:	
;prev04.c: 563: {
;prev04.c: 564: vbool[i] = number<<i < 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(setLCD@i),w
	movwf	(??_setLCD+0)+0
	movf	(setLCD@number+1),w
	movwf	(??_setLCD+1)+0+1
	movf	(setLCD@number),w
	movwf	(??_setLCD+1)+0
	goto	u3724
u3725:
	clrc
	rlf	(??_setLCD+1)+0,f
	rlf	(??_setLCD+1)+1,f
u3724:
	decfsz	(??_setLCD+0)+0,f
	goto	u3725
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
	line	562
	
l2999:	
	movlw	low(01h)
	addwf	(setLCD@i),f
	skipnc
	incf	(setLCD@i+1),f
	movlw	high(01h)
	addwf	(setLCD@i+1),f
	
l3001:	
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
	goto	u3735
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3735:

	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l2997
u3730:
	goto	l3003
	
l855:	
	line	567
	
l3003:	
;prev04.c: 565: }
;prev04.c: 567: RD0=vbool[size-1];
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
	goto	u3741
	goto	u3740
	
u3741:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u3754
u3740:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u3754:
	line	568
;prev04.c: 568: RD1=vbool[size-2];
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
	goto	u3761
	goto	u3760
	
u3761:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u3774
u3760:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u3774:
	line	569
;prev04.c: 569: RD2=vbool[size-3];
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
	goto	u3781
	goto	u3780
	
u3781:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	goto	u3794
u3780:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
u3794:
	line	570
;prev04.c: 570: RD3=vbool[size-4];
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
	goto	u3801
	goto	u3800
	
u3801:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	goto	u3814
u3800:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
u3814:
	line	571
;prev04.c: 571: RD4=vbool[size-5];
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
	goto	u3821
	goto	u3820
	
u3821:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3834
u3820:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3834:
	line	572
;prev04.c: 572: RD5=vbool[size-6];
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
	goto	u3841
	goto	u3840
	
u3841:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3854
u3840:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3854:
	line	573
;prev04.c: 573: RD6=vbool[size-7];
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
	goto	u3861
	goto	u3860
	
u3861:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3874
u3860:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3874:
	line	574
;prev04.c: 574: RD7=vbool[size-8];
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
	goto	u3881
	goto	u3880
	
u3881:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3894
u3880:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3894:
	line	578
	
l856:	
	return
	opt stack 0
GLOBAL	__end_of_setLCD
	__end_of_setLCD:
;; =============== function _setLCD ends ============

	signat	_setLCD,4216
	global	_delay
psect	text548,local,class=CODE,delta=2
global __ptext548
__ptext548:

;; *************** function _delay *****************
;; Defined at:
;;		line 472 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
psect	text548
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	472
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 3
; Regs used in _delay: [wreg]
	line	473
	
l2987:	
;prev04.c: 473: while(x-->0);
	goto	l2989
	
l825:	
	goto	l2989
	
l824:	
	
l2989:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u3705
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u3705:

	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l2989
u3700:
	goto	l827
	
l826:	
	line	474
	
l827:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_strcat
psect	text549,local,class=CODE,delta=2
global __ptext549
__ptext549:

;; *************** function _strcat *****************
;; Defined at:
;;		line 10 in file "../../common/strcat.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> logic_d4(5), logic_d3(5), logic_d2(5), logic_d1(5), 
;;  from            1    0[COMMON] PTR const unsigned char 
;;		 -> getlogicseq@snum(16), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[COMMON] PTR unsigned char 
;;		 -> logic_d4(5), logic_d3(5), logic_d2(5), logic_d1(5), 
;;  cp              1    3[COMMON] PTR unsigned char 
;;		 -> logic_d4(5), logic_d3(5), logic_d2(5), logic_d1(5), 
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
psect	text549
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
	
l2911:	
	movf	(strcat@to),w
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	movwf	(strcat@cp)
	line	19
	goto	l2915
	
l931:	
	line	20
	
l2913:	
	movlw	(01h)
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	addwf	(strcat@cp),f
	goto	l2915
	
l930:	
	line	19
	
l2915:	
	movf	(strcat@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l2913
u3520:
	goto	l2917
	
l932:	
	line	21
	goto	l2917
	
l934:	
	line	22
	goto	l2917
	
l933:	
	line	21
	
l2917:	
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
	goto	u3531
	goto	u3530
u3531:
	goto	l2917
u3530:
	goto	l936
	
l935:	
	line	24
;	Return value of _strcat is never used
	
l936:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
;; =============== function _strcat ends ============

	signat	_strcat,8313
	global	_check
psect	text550,local,class=CODE,delta=2
global __ptext550
__ptext550:

;; *************** function _check *****************
;; Defined at:
;;		line 404 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
;; Parameters:    Size  Location     Type
;;  input           1    wreg     PTR unsigned char 
;;		 -> lo(5), 
;;  logic           1    0[COMMON] PTR unsigned char 
;;		 -> logic_d4(5), logic_d3(5), logic_d2(5), logic_d1(5), 
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
psect	text550
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	404
	global	__size_of_check
	__size_of_check	equ	__end_of_check-_check
	
_check:	
	opt	stack 5
; Regs used in _check: [wreg-fsr0h+status,2+status,0+btemp+1]
;check@input stored from wreg
	line	406
	movwf	(check@input)
	
l2889:	
;prev04.c: 406: int i=0;
	clrf	(check@i)
	clrf	(check@i+1)
	line	408
;prev04.c: 408: for(i=0;i<4;i++)
	clrf	(check@i)
	clrf	(check@i+1)
	
l2891:	
	movf	(check@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3485
	movlw	low(04h)
	subwf	(check@i),w
u3485:

	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l2895
u3480:
	goto	l2907
	
l2893:	
	goto	l2907
	line	409
	
l784:	
	line	410
	
l2895:	
;prev04.c: 409: {
;prev04.c: 410: if(input[i]=='0'&&logic[i]=='1')
	movf	(check@i),w
	addwf	(check@input),w
	movwf	(??_check+0)+0
	movf	0+(??_check+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	030h
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l2903
u3490:
	
l2897:	
	movf	(check@i),w
	addwf	(check@logic),w
	movwf	(??_check+0)+0
	movf	0+(??_check+0)+0,w
	movwf	fsr0
	movf	indf,w
	xorlw	031h
	skipz
	goto	u3501
	goto	u3500
u3501:
	goto	l2903
u3500:
	line	411
	
l2899:	
;prev04.c: 411: return 0;
	clrf	(?_check)
	clrf	(?_check+1)
	goto	l787
	
l2901:	
	goto	l787
	
l786:	
	line	408
	
l2903:	
	movlw	low(01h)
	addwf	(check@i),f
	skipnc
	incf	(check@i+1),f
	movlw	high(01h)
	addwf	(check@i+1),f
	
l2905:	
	movf	(check@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3515
	movlw	low(04h)
	subwf	(check@i),w
u3515:

	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l2895
u3510:
	goto	l2907
	
l785:	
	line	413
	
l2907:	
;prev04.c: 412: }
;prev04.c: 413: return 1;
	movlw	low(01h)
	movwf	(?_check)
	movlw	high(01h)
	movwf	((?_check))+1
	goto	l787
	
l2909:	
	line	414
	
l787:	
	return
	opt stack 0
GLOBAL	__end_of_check
	__end_of_check:
;; =============== function _check ends ============

	signat	_check,8314
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
;;		 -> STR_32(5), STR_31(5), STR_30(5), STR_29(5), 
;;		 -> STR_28(5), STR_27(5), STR_26(5), STR_25(5), 
;;		 -> STR_24(5), STR_23(5), STR_22(5), STR_21(5), 
;;		 -> STR_20(5), STR_19(5), STR_18(5), STR_17(5), 
;;		 -> STR_3(5), logic_d4(5), logic_d3(5), logic_d2(5), 
;;		 -> logic_d1(5), STR_2(5), plo(5), 
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
	
l2879:	
	goto	l2881
	
l940:	
	line	38
	goto	l2881
	
l939:	
	line	37
	
l2881:	
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
	goto	u3461
	goto	u3460
u3461:
	goto	l2885
u3460:
	
l2883:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3471
	goto	u3470
u3471:
	goto	l2881
u3470:
	goto	l2885
	
l942:	
	goto	l2885
	
l943:	
	line	39
	
l2885:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l944
	
l2887:	
	line	40
	
l944:	
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
;;		 -> getlogicseq@str(32), logic_d4(5), logic_d3(5), logic_d2(5), 
;;		 -> logic_d1(5), lo(5), plo(5), 
;;  from            2    0[COMMON] PTR const unsigned char 
;;		 -> STR_15(1), STR_14(20), STR_12(1), STR_11(20), 
;;		 -> STR_9(1), STR_8(20), STR_6(1), STR_5(20), 
;;		 -> STR_1(5), lo(5), 
;; Auto vars:     Size  Location     Type
;;  to              1    5[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d4(5), logic_d3(5), logic_d2(5), 
;;		 -> logic_d1(5), lo(5), plo(5), 
;;  cp              1    6[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d4(5), logic_d3(5), logic_d2(5), 
;;		 -> logic_d1(5), lo(5), plo(5), 
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
	opt	stack 4
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
;strcpy@to stored from wreg
	line	18
	movwf	(strcpy@to)
	
l2875:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l2877
	
l948:	
	line	20
	goto	l2877
	
l947:	
	line	19
	
l2877:	
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
	goto	u3451
	goto	u3450
u3451:
	goto	l2877
u3450:
	goto	l950
	
l949:	
	line	22
;	Return value of _strcpy is never used
	
l950:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_init_fun
psect	text553,local,class=CODE,delta=2
global __ptext553
__ptext553:

;; *************** function _init_fun *****************
;; Defined at:
;;		line 391 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
psect	text553
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	391
	global	__size_of_init_fun
	__size_of_init_fun	equ	__end_of_init_fun-_init_fun
	
_init_fun:	
	opt	stack 7
; Regs used in _init_fun: [wreg+status,2+status,0]
	line	392
	
l2863:	
;prev04.c: 392: if(done_init==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_done_init+1)),w
	iorwf	((_done_init)),w
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l781
u3440:
	line	395
	
l2865:	
;prev04.c: 393: {
;prev04.c: 395: TRISA=0b110000;
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	396
	
l2867:	
;prev04.c: 396: PORTA=0x0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	397
	
l2869:	
;prev04.c: 397: RCEN=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1163/8)^080h,(1163)&7
	line	398
	
l2871:	
;prev04.c: 398: TXEN=0;
	bcf	(1221/8)^080h,(1221)&7
	line	399
	
l2873:	
;prev04.c: 399: done_init=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_done_init)
	movlw	high(01h)
	movwf	((_done_init))+1
	goto	l781
	line	400
	
l780:	
	line	401
	
l781:	
	return
	opt stack 0
GLOBAL	__end_of_init_fun
	__end_of_init_fun:
;; =============== function _init_fun ends ============

	signat	_init_fun,88
	global	_initkeypad
psect	text554,local,class=CODE,delta=2
global __ptext554
__ptext554:

;; *************** function _initkeypad *****************
;; Defined at:
;;		line 655 in file "C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
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
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev0\prev04.c"
	line	655
	global	__size_of_initkeypad
	__size_of_initkeypad	equ	__end_of_initkeypad-_initkeypad
	
_initkeypad:	
	opt	stack 7
; Regs used in _initkeypad: [wreg+status,2]
	line	656
	
l1379:	
;prev04.c: 656: PORTB = 0x0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	657
	
l1381:	
;prev04.c: 657: TRISB = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	659
	
l883:	
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
