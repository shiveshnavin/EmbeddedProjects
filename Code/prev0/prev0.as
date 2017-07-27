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
	FNCALL	_getlogicseq,_strcpy
	FNCALL	_getlogicseq,_write
	FNCALL	_getlogicseq,_scan
	FNCALL	_getlogicseq,_itoaa
	FNCALL	_getlogicseq,_strcat
	FNCALL	_getlogicseq,_startswitch
	FNCALL	_scroll,_write
	FNCALL	_scroll,_delay
	FNCALL	_scroll,_cmd
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
	FNCALL	_startswitch,_strcmp
	FNROOT	_main
	global	_lo
	global	_logic_d1
	global	_logic_d2
	global	_logic_d3
	global	_logic_d4
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	114

;initializer for _lo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	110

;initializer for _logic_d1
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	031h
	retlw	0
	line	111

;initializer for _logic_d2
	retlw	031h
	retlw	030h
	retlw	031h
	retlw	031h
	retlw	0
	line	112

;initializer for _logic_d3
	retlw	031h
	retlw	031h
	retlw	031h
	retlw	031h
	retlw	0
	line	113

;initializer for _logic_d4
	retlw	031h
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
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	477
setLCD@size:
	retlw	010h
	retlw	0

	global	setLCD@size
	global	getlogicseq@F1256
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_RA5
_RA5	set	45
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
	global	_RC7
_RC7	set	63
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
	
STR_1:	
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
	
STR_2:	
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
	retlw	50	;'2'
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
	retlw	51	;'3'
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
	retlw	52	;'4'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_14:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_22:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_18:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_26:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_16:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_24:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_20:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_28:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_15:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_23:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_19:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_27:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_17:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_25:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_21:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_29:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	strings
STR_7	equ	STR_4+0
STR_10	equ	STR_4+0
STR_13	equ	STR_4+0
STR_3	equ	STR_2+19
STR_6	equ	STR_2+19
STR_9	equ	STR_2+19
STR_12	equ	STR_2+19
	file	"prev0.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	114
_lo:
       ds      5

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	110
_logic_d1:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	111
_logic_d2:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	112
_logic_d3:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	113
_logic_d4:
       ds      5

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
getlogicseq@F1256:
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
	movlw low(__pdataBANK0+5)
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
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	strcat@from
strcat@from:	; 1 bytes @ 0x0
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	setLCD@number
setLCD@number:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_strcpy
??_strcpy:	; 0 bytes @ 0x1
	global	??_strcat
??_strcat:	; 0 bytes @ 0x1
	ds	1
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	??_setLCD
??_setLCD:	; 0 bytes @ 0x2
	global	?_actrow
?_actrow:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	strcat@to
strcat@to:	; 1 bytes @ 0x2
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x2
	global	actrow@n
actrow@n:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	strcat@cp
strcat@cp:	; 1 bytes @ 0x3
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x3
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
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_scan
??_scan:	; 0 bytes @ 0x6
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x6
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
	global	??_startswitch
??_startswitch:	; 0 bytes @ 0x8
	global	?_dat
?_dat:	; 0 bytes @ 0x8
	global	cmd@Command
cmd@Command:	; 2 bytes @ 0x8
	global	dat@Command
dat@Command:	; 2 bytes @ 0x8
	ds	1
	global	?_itoaa
?_itoaa:	; 2 bytes @ 0x9
	global	startswitch@dev
startswitch@dev:	; 2 bytes @ 0x9
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
;;Data sizes: Strings 203, constant 2, data 25, bss 16, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     64      69
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
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; ?_itoaa	int  size(1) Largest target is 0
;;
;; ?_strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK1[5]), 
;;
;; ?_strcmp	int  size(1) Largest target is 0
;;
;; strcpy@from	PTR const unsigned char  size(1) Largest target is 20
;;		 -> STR_12(CODE[1]), STR_11(CODE[20]), STR_9(CODE[1]), STR_8(CODE[20]), 
;;		 -> STR_6(CODE[1]), STR_5(CODE[20]), STR_3(CODE[1]), STR_2(CODE[20]), 
;;
;; strcpy@to	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK1[5]), 
;;
;; strcpy@cp	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK1[5]), 
;;
;; strcmp@s2	PTR const unsigned char  size(2) Largest target is 5
;;		 -> STR_29(CODE[5]), STR_28(CODE[5]), STR_27(CODE[5]), STR_26(CODE[5]), 
;;		 -> STR_25(CODE[5]), STR_24(CODE[5]), STR_23(CODE[5]), STR_22(CODE[5]), 
;;		 -> STR_21(CODE[5]), STR_20(CODE[5]), STR_19(CODE[5]), STR_18(CODE[5]), 
;;		 -> STR_17(CODE[5]), STR_16(CODE[5]), STR_15(CODE[5]), STR_14(CODE[5]), 
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 5
;;		 -> lo(BANK0[5]), 
;;
;; strcat@from	PTR const unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; strcat@to	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; strcat@cp	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; scroll@str	PTR unsigned char  size(1) Largest target is 38
;;		 -> STR_1(CODE[38]), 
;;
;; write@str	PTR unsigned char  size(2) Largest target is 38
;;		 -> STR_13(CODE[5]), STR_10(CODE[5]), STR_7(CODE[5]), STR_4(CODE[5]), 
;;		 -> getlogicseq@str(BANK1[32]), STR_1(CODE[38]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), 
;;		 -> logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; itoaa@ptr	PTR unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; sp__strcat	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; sp__strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK1[5]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _getlogicseq->_write
;;   _scroll->_write
;;   _write->_cmd
;;   _write->_dat
;;   _clearlcd->_cmd
;;   _scan->_actrow
;;   _initlcd->_cmd
;;   _actrow->_delay
;;   _dat->_setLCD
;;   _cmd->_setLCD
;;   _itoaa->___awdiv
;;   _startswitch->_strcmp
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_getlogicseq
;;   _getlogicseq->_scroll
;;   _scroll->_write
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
;; (0) _main                                                 0     0      0    6165
;;                            _initlcd
;;                         _initkeypad
;;                        _getlogicseq
;; ---------------------------------------------------------------------------------
;; (1) _getlogicseq                                         62    62      0    5801
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
;; (2) _write                                               10     4      6    1226
;;                                             10 COMMON     4     4      0
;;                                             34 BANK0      6     0      6
;;                           _clearlcd
;;                                _cmd
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (3) _clearlcd                                             0     0      0     364
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
;; (3) _dat                                                  2     0      2     364
;;                                              8 COMMON     2     0      2
;;                             _setLCD
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _cmd                                                  2     0      2     364
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
;; (2) _startswitch                                          3     3      0     204
;;                                              8 COMMON     3     3      0
;;                             _strcmp
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
;; (5) _setLCD                                              42    40      2     320
;;                                              0 COMMON     8     6      2
;;                                              0 BANK0     34    34      0
;; ---------------------------------------------------------------------------------
;; (4) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (2) _strcat                                               4     3      1      96
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (3) _strcpy                                               4     3      1      73
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (4) _strcmp                                               8     6      2      89
;;                                              0 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (1) _initkeypad                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
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
;;       _strcmp
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
;;DATA                 0      0      B8      12        0.0%
;;ABS                  0      0      B1       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50     40      45       5       86.3%
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
;;		line 82 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  676[COMMON] int 
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
;;		_getlogicseq
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	87
	
l3470:	
;lcd1.c: 87: initlcd();
	fcall	_initlcd
	line	88
	
l3472:	
;lcd1.c: 88: initkeypad();
	fcall	_initkeypad
	goto	l3474
	line	92
;lcd1.c: 92: while(1){
	
l677:	
	line	94
	
l3474:	
;lcd1.c: 94: getlogicseq();
	fcall	_getlogicseq
	goto	l3474
	line	95
	
l678:	
	line	92
	goto	l3474
	
l679:	
	line	101
	
l680:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_getlogicseq
psect	text490,local,class=CODE,delta=2
global __ptext490
__ptext490:

;; *************** function _getlogicseq *****************
;; Defined at:
;;		line 154 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text490
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	154
	global	__size_of_getlogicseq
	__size_of_getlogicseq	equ	__end_of_getlogicseq-_getlogicseq
	
_getlogicseq:	
	opt	stack 1
; Regs used in _getlogicseq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	157
	
l3270:	
;lcd1.c: 157: scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scroll)
	movlw	high(0)
	movwf	((?_scroll))+1
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_scroll
	line	162
	
l3272:	
;lcd1.c: 161: int num ;
;lcd1.c: 162: char snum[16]="";
	movlw	(getlogicseq@snum)&0ffh
	movwf	fsr0
	movlw	low(getlogicseq@F1256)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	fsr0,w
	movwf	((??_getlogicseq+0)+0+1)
	movlw	16
	movwf	((??_getlogicseq+0)+0+2)
u4380:
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
	goto	u4380
	line	163
	
l3274:	
;lcd1.c: 163: int wf=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	line	164
	
l3276:	
;lcd1.c: 164: int nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	line	165
	
l3278:	
;lcd1.c: 165: int bf=0;
	clrf	(getlogicseq@bf)^080h
	clrf	(getlogicseq@bf+1)^080h
	line	166
	
l3280:	
;lcd1.c: 166: int ccount=0;
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	goto	l3282
	line	168
;lcd1.c: 167: char str[32];
;lcd1.c: 168: START_SEQ:
	
l699:	
	line	170
	
l3282:	
;lcd1.c: 170: wf=0;ccount=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	
l3284:	
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	171
	
l3286:	
;lcd1.c: 171: strcpy(str,"Enter Logic DEV1:  ");
	movlw	((STR_2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	172
	
l3288:	
;lcd1.c: 172: write(str,1,1);
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
	line	173
	
l3290:	
;lcd1.c: 173: write(logic_d1,2,0);
	movlw	(_logic_d1&0ffh)
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
	goto	l3292
	line	175
;lcd1.c: 175: while(1)
	
l700:	
	line	177
	
l3292:	
;lcd1.c: 176: {
;lcd1.c: 177: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	178
	
l3294:	
;lcd1.c: 178: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4391
	goto	u4390
u4391:
	goto	l3298
u4390:
	
l3296:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l3314
u4400:
	goto	l3298
	
l703:	
	line	179
	
l3298:	
;lcd1.c: 179: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l3316
u4410:
	line	181
	
l3300:	
;lcd1.c: 180: {
;lcd1.c: 181: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l3304
u4420:
	line	182
	
l3302:	
;lcd1.c: 182: strcpy(logic_d1,"");
	movlw	((STR_3-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(_logic_d1)&0ffh
	fcall	_strcpy
	goto	l3304
	
l705:	
	line	183
	
l3304:	
;lcd1.c: 183: write("----",2,0);
	movlw	low((STR_4-__stringbase))
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
	line	184
	
l3306:	
;lcd1.c: 184: itoaa(num, snum);
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
	line	185
;lcd1.c: 185: strcat(logic_d1,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d1)&0ffh
	fcall	_strcat
	line	186
	
l3308:	
;lcd1.c: 186: write( logic_d1,2,0); ;
	movlw	(_logic_d1&0ffh)
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
	line	187
	
l3310:	
;lcd1.c: 187: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	188
	
l3312:	
;lcd1.c: 188: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3316
	line	189
	
l704:	
	line	190
;lcd1.c: 189: }
;lcd1.c: 190: }
	goto	l3316
	line	191
	
l701:	
	line	192
	
l3314:	
;lcd1.c: 191: else{
;lcd1.c: 192: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3316
	line	193
	
l706:	
	line	194
	
l3316:	
;lcd1.c: 193: }
;lcd1.c: 194: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4435
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4435:

	skipc
	goto	u4431
	goto	u4430
u4431:
	goto	l3320
u4430:
	goto	l3330
	line	195
	
l3318:	
;lcd1.c: 195: break;
	goto	l3330
	
l707:	
	line	198
	
l3320:	
;lcd1.c: 198: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4441
	goto	u4440
u4441:
	goto	l3326
u4440:
	line	200
	
l3322:	
;lcd1.c: 199: {
;lcd1.c: 200: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4451
	goto	u4450
u4451:
	goto	l3292
u4450:
	line	201
	
l3324:	
;lcd1.c: 201: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	202
;lcd1.c: 202: break;
	goto	l3330
	line	203
	
l710:	
	line	204
;lcd1.c: 203: }
;lcd1.c: 204: }
	goto	l3292
	line	205
	
l709:	
	
l3326:	
;lcd1.c: 205: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l3292
u4460:
	line	206
	
l3328:	
;lcd1.c: 206: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3292
	line	207
	
l712:	
	goto	l3292
	line	208
	
l711:	
	goto	l3292
	
l713:	
	line	175
	goto	l3292
	
l708:	
	line	211
	
l3330:	
;lcd1.c: 207: }
;lcd1.c: 208: }
;lcd1.c: 211: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	212
	
l3332:	
;lcd1.c: 212: strcpy(str,"Enter Logic DEV2:  ");
	movlw	((STR_5-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	213
	
l3334:	
;lcd1.c: 213: write(str,1,1);
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
	line	214
	
l3336:	
;lcd1.c: 214: write(logic_d2,2,0);
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
	goto	l3338
	line	216
;lcd1.c: 216: while(1)
	
l714:	
	line	218
	
l3338:	
;lcd1.c: 217: {
;lcd1.c: 218: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	219
	
l3340:	
;lcd1.c: 219: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4471
	goto	u4470
u4471:
	goto	l3344
u4470:
	
l3342:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4481
	goto	u4480
u4481:
	goto	l3360
u4480:
	goto	l3344
	
l717:	
	line	220
	
l3344:	
;lcd1.c: 220: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4491
	goto	u4490
u4491:
	goto	l3362
u4490:
	line	221
	
l3346:	
;lcd1.c: 221: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4501
	goto	u4500
u4501:
	goto	l3350
u4500:
	line	222
	
l3348:	
;lcd1.c: 222: strcpy(logic_d2,"");
	movlw	((STR_6-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(_logic_d2)&0ffh
	fcall	_strcpy
	goto	l3350
	
l719:	
	line	223
	
l3350:	
;lcd1.c: 223: write("----",2,0);
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
	line	224
	
l3352:	
;lcd1.c: 224: itoaa(num, snum);
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
	line	225
;lcd1.c: 225: strcat(logic_d2,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d2)&0ffh
	fcall	_strcat
	line	226
	
l3354:	
;lcd1.c: 226: write( logic_d2,2,0); ;
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
	line	227
	
l3356:	
;lcd1.c: 227: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	228
	
l3358:	
;lcd1.c: 228: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3362
	line	229
	
l718:	
	line	230
;lcd1.c: 229: }
;lcd1.c: 230: }
	goto	l3362
	line	231
	
l715:	
	line	232
	
l3360:	
;lcd1.c: 231: else{
;lcd1.c: 232: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3362
	line	233
	
l720:	
	line	234
	
l3362:	
;lcd1.c: 233: }
;lcd1.c: 234: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4515
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4515:

	skipc
	goto	u4511
	goto	u4510
u4511:
	goto	l3366
u4510:
	goto	l3376
	line	235
	
l3364:	
;lcd1.c: 235: break;
	goto	l3376
	
l721:	
	line	237
	
l3366:	
;lcd1.c: 237: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4521
	goto	u4520
u4521:
	goto	l3372
u4520:
	line	239
	
l3368:	
;lcd1.c: 238: {
;lcd1.c: 239: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l3338
u4530:
	line	240
	
l3370:	
;lcd1.c: 240: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	241
;lcd1.c: 241: break;
	goto	l3376
	line	242
	
l724:	
	line	243
;lcd1.c: 242: }
;lcd1.c: 243: }
	goto	l3338
	line	244
	
l723:	
	
l3372:	
;lcd1.c: 244: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4541
	goto	u4540
u4541:
	goto	l3338
u4540:
	line	245
	
l3374:	
;lcd1.c: 245: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3338
	line	246
	
l726:	
	goto	l3338
	line	247
	
l725:	
	goto	l3338
	
l727:	
	line	216
	goto	l3338
	
l722:	
	line	250
	
l3376:	
;lcd1.c: 246: }
;lcd1.c: 247: }
;lcd1.c: 250: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	251
	
l3378:	
;lcd1.c: 251: strcpy(str,"Enter Logic DEV3:  ");
	movlw	((STR_8-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	252
	
l3380:	
;lcd1.c: 252: write(str,1,1);
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
	line	253
	
l3382:	
;lcd1.c: 253: write(logic_d3,2,0);
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
	goto	l3384
	line	255
;lcd1.c: 255: while(1)
	
l728:	
	line	257
	
l3384:	
;lcd1.c: 256: {
;lcd1.c: 257: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	258
	
l3386:	
;lcd1.c: 258: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4551
	goto	u4550
u4551:
	goto	l3390
u4550:
	
l3388:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4561
	goto	u4560
u4561:
	goto	l3406
u4560:
	goto	l3390
	
l731:	
	line	259
	
l3390:	
;lcd1.c: 259: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4571
	goto	u4570
u4571:
	goto	l3408
u4570:
	line	260
	
l3392:	
;lcd1.c: 260: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4581
	goto	u4580
u4581:
	goto	l3396
u4580:
	line	261
	
l3394:	
;lcd1.c: 261: strcpy(logic_d3,"");
	movlw	((STR_9-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(_logic_d3)&0ffh
	fcall	_strcpy
	goto	l3396
	
l733:	
	line	262
	
l3396:	
;lcd1.c: 262: write("----",2,0);
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
	line	263
	
l3398:	
;lcd1.c: 263: itoaa(num, snum);
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
	line	264
;lcd1.c: 264: strcat(logic_d3,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d3)&0ffh
	fcall	_strcat
	line	265
	
l3400:	
;lcd1.c: 265: write( logic_d3,2,0); ;
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
	line	266
	
l3402:	
;lcd1.c: 266: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	267
	
l3404:	
;lcd1.c: 267: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3408
	line	268
	
l732:	
	line	269
;lcd1.c: 268: }
;lcd1.c: 269: }
	goto	l3408
	line	270
	
l729:	
	line	271
	
l3406:	
;lcd1.c: 270: else{
;lcd1.c: 271: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3408
	line	272
	
l734:	
	line	273
	
l3408:	
;lcd1.c: 272: }
;lcd1.c: 273: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4595
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4595:

	skipc
	goto	u4591
	goto	u4590
u4591:
	goto	l3412
u4590:
	goto	l3422
	line	274
	
l3410:	
;lcd1.c: 274: break;
	goto	l3422
	
l735:	
	line	276
	
l3412:	
;lcd1.c: 276: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4601
	goto	u4600
u4601:
	goto	l3418
u4600:
	line	278
	
l3414:	
;lcd1.c: 277: {
;lcd1.c: 278: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4611
	goto	u4610
u4611:
	goto	l3384
u4610:
	line	279
	
l3416:	
;lcd1.c: 279: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	280
;lcd1.c: 280: break;
	goto	l3422
	line	281
	
l738:	
	line	282
;lcd1.c: 281: }
;lcd1.c: 282: }
	goto	l3384
	line	283
	
l737:	
	
l3418:	
;lcd1.c: 283: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4621
	goto	u4620
u4621:
	goto	l3384
u4620:
	line	284
	
l3420:	
;lcd1.c: 284: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3384
	line	285
	
l740:	
	goto	l3384
	line	286
	
l739:	
	goto	l3384
	
l741:	
	line	255
	goto	l3384
	
l736:	
	line	290
	
l3422:	
;lcd1.c: 285: }
;lcd1.c: 286: }
;lcd1.c: 290: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	291
	
l3424:	
;lcd1.c: 291: strcpy(str,"Enter Logic DEV4:  ");
	movlw	((STR_11-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	292
	
l3426:	
;lcd1.c: 292: write(str,1,1);
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
	line	293
	
l3428:	
;lcd1.c: 293: write(logic_d4,2,0);
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
	goto	l3430
	line	295
;lcd1.c: 295: while(1)
	
l742:	
	line	297
	
l3430:	
;lcd1.c: 296: {
;lcd1.c: 297: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	298
	
l3432:	
;lcd1.c: 298: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4631
	goto	u4630
u4631:
	goto	l3436
u4630:
	
l3434:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l3452
u4640:
	goto	l3436
	
l745:	
	line	299
	
l3436:	
;lcd1.c: 299: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4651
	goto	u4650
u4651:
	goto	l3454
u4650:
	line	301
	
l3438:	
;lcd1.c: 300: {
;lcd1.c: 301: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4661
	goto	u4660
u4661:
	goto	l3442
u4660:
	line	302
	
l3440:	
;lcd1.c: 302: strcpy(logic_d4,"");
	movlw	((STR_12-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(_logic_d4)&0ffh
	fcall	_strcpy
	goto	l3442
	
l747:	
	line	303
	
l3442:	
;lcd1.c: 303: write("----",2,0);
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
	line	304
	
l3444:	
;lcd1.c: 304: itoaa(num, snum);
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
	line	305
;lcd1.c: 305: strcat(logic_d4,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d4)&0ffh
	fcall	_strcat
	line	306
	
l3446:	
;lcd1.c: 306: write( logic_d4,2,0); ;
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
	line	307
	
l3448:	
;lcd1.c: 307: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	308
	
l3450:	
;lcd1.c: 308: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3454
	line	309
	
l746:	
	line	310
;lcd1.c: 309: }
;lcd1.c: 310: }
	goto	l3454
	line	311
	
l743:	
	line	312
	
l3452:	
;lcd1.c: 311: else{
;lcd1.c: 312: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3454
	line	313
	
l748:	
	line	314
	
l3454:	
;lcd1.c: 313: }
;lcd1.c: 314: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4675
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4675:

	skipc
	goto	u4671
	goto	u4670
u4671:
	goto	l3458
u4670:
	goto	l3468
	line	315
	
l3456:	
;lcd1.c: 315: break;
	goto	l3468
	
l749:	
	line	317
	
l3458:	
;lcd1.c: 317: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l3464
u4680:
	line	319
	
l3460:	
;lcd1.c: 318: {
;lcd1.c: 319: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l3430
u4690:
	line	320
	
l3462:	
;lcd1.c: 320: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	321
;lcd1.c: 321: break;
	goto	l3468
	line	322
	
l752:	
	line	323
;lcd1.c: 322: }
;lcd1.c: 323: }
	goto	l3430
	line	324
	
l751:	
	
l3464:	
;lcd1.c: 324: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l3430
u4700:
	line	325
	
l3466:	
;lcd1.c: 325: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3430
	line	326
	
l754:	
	goto	l3430
	line	327
	
l753:	
	goto	l3430
	
l755:	
	line	295
	goto	l3430
	
l750:	
	line	328
	
l3468:	
;lcd1.c: 326: }
;lcd1.c: 327: }
;lcd1.c: 328: startswitch();;
	fcall	_startswitch
	line	331
	
l756:	
	return
	opt stack 0
GLOBAL	__end_of_getlogicseq
	__end_of_getlogicseq:
;; =============== function _getlogicseq ends ============

	signat	_getlogicseq,88
	global	_scroll
psect	text491,local,class=CODE,delta=2
global __ptext491
__ptext491:

;; *************** function _scroll *****************
;; Defined at:
;;		line 520 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> STR_1(38), 
;;  loops           2   40[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  str             1   55[BANK0 ] PTR unsigned char 
;;		 -> STR_1(38), 
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
psect	text491
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	520
	global	__size_of_scroll
	__size_of_scroll	equ	__end_of_scroll-_scroll
	
_scroll:	
	opt	stack 1
; Regs used in _scroll: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;scroll@str stored from wreg
	line	522
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scroll@str)
	
l3230:	
;lcd1.c: 522: write(str,1,0); ;
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
	line	523
	
l3232:	
;lcd1.c: 523: int loopn=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@loopn)
	clrf	(scroll@loopn+1)
	line	525
	
l3234:	
;lcd1.c: 524: int i;
;lcd1.c: 525: int len=0;;
	clrf	(scroll@len)
	clrf	(scroll@len+1)
	line	526
	
l3236:	
;lcd1.c: 526: int st=0;
	clrf	(scroll@st)
	clrf	(scroll@st+1)
	line	528
;lcd1.c: 527: int en;
;lcd1.c: 528: while(str[i]!='\0')
	goto	l3240
	
l838:	
	line	529
	
l3238:	
;lcd1.c: 529: { i++;
	movlw	low(01h)
	addwf	(scroll@i),f
	skipnc
	incf	(scroll@i+1),f
	movlw	high(01h)
	addwf	(scroll@i+1),f
	line	530
;lcd1.c: 530: len++;
	movlw	low(01h)
	addwf	(scroll@len),f
	skipnc
	incf	(scroll@len+1),f
	movlw	high(01h)
	addwf	(scroll@len+1),f
	goto	l3240
	line	531
	
l837:	
	line	528
	
l3240:	
	movf	(scroll@i),w
	addwf	(scroll@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u4331
	goto	u4330
u4331:
	goto	l3238
u4330:
	goto	l3242
	
l839:	
	line	532
	
l3242:	
;lcd1.c: 531: }
;lcd1.c: 532: en=len-1;
	movf	(scroll@len),w
	addlw	low(-1)
	movwf	(scroll@en)
	movf	(scroll@len+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(scroll@en)
	line	534
	
l3244:	
;lcd1.c: 534: if(len>32)
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
	goto	l849
u4340:
	line	538
	
l3246:	
;lcd1.c: 535: {
;lcd1.c: 537: char dest [32] ;
;lcd1.c: 538: int startat=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@startat)
	clrf	(scroll@startat+1)
	line	539
	
l3248:	
;lcd1.c: 539: int endat=31;
	movlw	low(01Fh)
	movwf	(scroll@endat)
	movlw	high(01Fh)
	movwf	((scroll@endat))+1
	goto	l3250
	line	540
;lcd1.c: 540: START:
	
l841:	
	line	541
	
l3250:	
;lcd1.c: 541: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	542
;lcd1.c: 542: while(i++<32)
	goto	l3256
	
l843:	
	line	545
	
l3252:	
;lcd1.c: 543: {
;lcd1.c: 545: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	546
	
l3254:	
;lcd1.c: 546: cmd(0x1E);
	movlw	low(01Eh)
	movwf	(?_cmd)
	movlw	high(01Eh)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3256
	line	549
	
l842:	
	line	542
	
l3256:	
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
	goto	l3252
u4350:
	goto	l3258
	
l844:	
	line	551
	
l3258:	
;lcd1.c: 549: }
;lcd1.c: 551: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	552
;lcd1.c: 552: while(i++<32)
	goto	l3264
	
l846:	
	line	555
	
l3260:	
;lcd1.c: 553: {
;lcd1.c: 555: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	556
	
l3262:	
;lcd1.c: 556: cmd(0x18);
	movlw	low(018h)
	movwf	(?_cmd)
	movlw	high(018h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3264
	line	559
	
l845:	
	line	552
	
l3264:	
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
	goto	l3260
u4360:
	goto	l3266
	
l847:	
	line	560
	
l3266:	
;lcd1.c: 559: }
;lcd1.c: 560: if(loopn++<loops)
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
	goto	l849
u4370:
	goto	l3250
	line	561
	
l3268:	
;lcd1.c: 561: goto START;
	goto	l3250
	
l848:	
	goto	l849
	line	562
	
l840:	
	line	567
	
l849:	
	return
	opt stack 0
GLOBAL	__end_of_scroll
	__end_of_scroll:
;; =============== function _scroll ends ============

	signat	_scroll,8312
	global	_write
psect	text492,local,class=CODE,delta=2
global __ptext492
__ptext492:

;; *************** function _write *****************
;; Defined at:
;;		line 499 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
;; Parameters:    Size  Location     Type
;;  str             2   34[BANK0 ] PTR unsigned char 
;;		 -> STR_13(5), STR_10(5), STR_7(5), STR_4(5), 
;;		 -> getlogicseq@str(32), STR_1(38), logic_d4(5), logic_d3(5), 
;;		 -> logic_d2(5), logic_d1(5), 
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
;;		_getlogicseq
;;		_scroll
;; This function uses a non-reentrant model
;;
psect	text492
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	499
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 2
; Regs used in _write: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	500
	
l3212:	
;lcd1.c: 500: if(erase==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@erase),w
	iorwf	(write@erase+1),w
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l3216
u4300:
	line	501
	
l3214:	
;lcd1.c: 501: clearlcd();
	fcall	_clearlcd
	goto	l3216
	
l828:	
	line	503
	
l3216:	
;lcd1.c: 503: if(line==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@line),w
	iorwf	(write@line+1),w
	skipz
	goto	u4311
	goto	u4310
u4311:
	goto	l3220
u4310:
	line	504
	
l3218:	
;lcd1.c: 504: cmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_cmd)
	movlw	high(0C0h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3222
	line	505
	
l829:	
	line	506
	
l3220:	
;lcd1.c: 505: else
;lcd1.c: 506: cmd(0x2);
	movlw	low(02h)
	movwf	(?_cmd)
	movlw	high(02h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3222
	
l830:	
	line	508
	
l3222:	
;lcd1.c: 508: int i=0;
	clrf	(write@i)
	clrf	(write@i+1)
	line	509
;lcd1.c: 509: while(str[i]!='\0')
	goto	l3228
	
l832:	
	line	511
	
l3224:	
;lcd1.c: 510: {
;lcd1.c: 511: dat(str[i]);
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
	line	512
	
l3226:	
;lcd1.c: 512: i++;
	movlw	low(01h)
	addwf	(write@i),f
	skipnc
	incf	(write@i+1),f
	movlw	high(01h)
	addwf	(write@i+1),f
	goto	l3228
	line	513
	
l831:	
	line	509
	
l3228:	
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
	goto	u4321
	goto	u4320
u4321:
	goto	l3224
u4320:
	goto	l834
	
l833:	
	line	516
	
l834:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,12408
	global	_clearlcd
psect	text493,local,class=CODE,delta=2
global __ptext493
__ptext493:

;; *************** function _clearlcd *****************
;; Defined at:
;;		line 442 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text493
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	442
	global	__size_of_clearlcd
	__size_of_clearlcd	equ	__end_of_clearlcd-_clearlcd
	
_clearlcd:	
	opt	stack 2
; Regs used in _clearlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	443
	
l3210:	
;lcd1.c: 443: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	444
	
l812:	
	return
	opt stack 0
GLOBAL	__end_of_clearlcd
	__end_of_clearlcd:
;; =============== function _clearlcd ends ============

	signat	_clearlcd,88
	global	_scan
psect	text494,local,class=CODE,delta=2
global __ptext494
__ptext494:

;; *************** function _scan *****************
;; Defined at:
;;		line 581 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text494
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	581
	global	__size_of_scan
	__size_of_scan	equ	__end_of_scan-_scan
	
_scan:	
	opt	stack 4
; Regs used in _scan: [wreg+status,2+status,0+pclath+cstack]
	line	582
	
l3102:	
;lcd1.c: 582: actrow(1) ;
	movlw	low(01h)
	movwf	(?_actrow)
	movlw	high(01h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	583
	
l3104:	
;lcd1.c: 583: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l855
u4140:
	line	584
	
l3106:	
;lcd1.c: 584: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l856
	
l3108:	
	goto	l856
	
l3110:	
	goto	l3128
	line	585
	
l855:	
;lcd1.c: 585: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l858
u4150:
	line	586
	
l3112:	
;lcd1.c: 586: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l856
	
l3114:	
	goto	l856
	
l3116:	
	goto	l3128
	line	587
	
l858:	
;lcd1.c: 587: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l860
u4160:
	line	588
	
l3118:	
;lcd1.c: 588: return 2;
	movlw	low(02h)
	movwf	(?_scan)
	movlw	high(02h)
	movwf	((?_scan))+1
	goto	l856
	
l3120:	
	goto	l856
	
l3122:	
	goto	l3128
	line	589
	
l860:	
;lcd1.c: 589: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l3128
u4170:
	line	590
	
l3124:	
;lcd1.c: 590: return 4;
	movlw	low(04h)
	movwf	(?_scan)
	movlw	high(04h)
	movwf	((?_scan))+1
	goto	l856
	
l3126:	
	goto	l856
	
l862:	
	goto	l3128
	line	592
	
l861:	
	goto	l3128
	
l859:	
	goto	l3128
	
l857:	
	
l3128:	
;lcd1.c: 592: actrow(2) ;
	movlw	low(02h)
	movwf	(?_actrow)
	movlw	high(02h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	594
	
l3130:	
;lcd1.c: 594: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l863
u4180:
	line	595
	
l3132:	
;lcd1.c: 595: return 5;
	movlw	low(05h)
	movwf	(?_scan)
	movlw	high(05h)
	movwf	((?_scan))+1
	goto	l856
	
l3134:	
	goto	l856
	
l3136:	
	goto	l3154
	line	596
	
l863:	
;lcd1.c: 596: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l865
u4190:
	line	597
	
l3138:	
;lcd1.c: 597: return 6;
	movlw	low(06h)
	movwf	(?_scan)
	movlw	high(06h)
	movwf	((?_scan))+1
	goto	l856
	
l3140:	
	goto	l856
	
l3142:	
	goto	l3154
	line	598
	
l865:	
;lcd1.c: 598: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4201
	goto	u4200
u4201:
	goto	l867
u4200:
	line	599
	
l3144:	
;lcd1.c: 599: return 7;
	movlw	low(07h)
	movwf	(?_scan)
	movlw	high(07h)
	movwf	((?_scan))+1
	goto	l856
	
l3146:	
	goto	l856
	
l3148:	
	goto	l3154
	line	600
	
l867:	
;lcd1.c: 600: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l3154
u4210:
	line	601
	
l3150:	
;lcd1.c: 601: return 8;
	movlw	low(08h)
	movwf	(?_scan)
	movlw	high(08h)
	movwf	((?_scan))+1
	goto	l856
	
l3152:	
	goto	l856
	
l869:	
	goto	l3154
	line	603
	
l868:	
	goto	l3154
	
l866:	
	goto	l3154
	
l864:	
	
l3154:	
;lcd1.c: 603: actrow(3) ;
	movlw	low(03h)
	movwf	(?_actrow)
	movlw	high(03h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	605
	
l3156:	
;lcd1.c: 605: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l870
u4220:
	line	606
	
l3158:	
;lcd1.c: 606: return 9;
	movlw	low(09h)
	movwf	(?_scan)
	movlw	high(09h)
	movwf	((?_scan))+1
	goto	l856
	
l3160:	
	goto	l856
	
l3162:	
	goto	l3180
	line	607
	
l870:	
;lcd1.c: 607: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4231
	goto	u4230
u4231:
	goto	l872
u4230:
	line	608
	
l3164:	
;lcd1.c: 608: return 10;
	movlw	low(0Ah)
	movwf	(?_scan)
	movlw	high(0Ah)
	movwf	((?_scan))+1
	goto	l856
	
l3166:	
	goto	l856
	
l3168:	
	goto	l3180
	line	609
	
l872:	
;lcd1.c: 609: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l874
u4240:
	line	610
	
l3170:	
;lcd1.c: 610: return 11;
	movlw	low(0Bh)
	movwf	(?_scan)
	movlw	high(0Bh)
	movwf	((?_scan))+1
	goto	l856
	
l3172:	
	goto	l856
	
l3174:	
	goto	l3180
	line	611
	
l874:	
;lcd1.c: 611: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l3180
u4250:
	line	612
	
l3176:	
;lcd1.c: 612: return 12;
	movlw	low(0Ch)
	movwf	(?_scan)
	movlw	high(0Ch)
	movwf	((?_scan))+1
	goto	l856
	
l3178:	
	goto	l856
	
l876:	
	goto	l3180
	line	615
	
l875:	
	goto	l3180
	
l873:	
	goto	l3180
	
l871:	
	
l3180:	
;lcd1.c: 615: actrow(4) ;
	movlw	low(04h)
	movwf	(?_actrow)
	movlw	high(04h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	617
	
l3182:	
;lcd1.c: 617: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l877
u4260:
	line	618
	
l3184:	
;lcd1.c: 618: return 13;
	movlw	low(0Dh)
	movwf	(?_scan)
	movlw	high(0Dh)
	movwf	((?_scan))+1
	goto	l856
	
l3186:	
	goto	l856
	
l3188:	
	goto	l3206
	line	619
	
l877:	
;lcd1.c: 619: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l879
u4270:
	line	620
	
l3190:	
;lcd1.c: 620: return 14;
	movlw	low(0Eh)
	movwf	(?_scan)
	movlw	high(0Eh)
	movwf	((?_scan))+1
	goto	l856
	
l3192:	
	goto	l856
	
l3194:	
	goto	l3206
	line	621
	
l879:	
;lcd1.c: 621: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l881
u4280:
	line	622
	
l3196:	
;lcd1.c: 622: return 15;
	movlw	low(0Fh)
	movwf	(?_scan)
	movlw	high(0Fh)
	movwf	((?_scan))+1
	goto	l856
	
l3198:	
	goto	l856
	
l3200:	
	goto	l3206
	line	623
	
l881:	
;lcd1.c: 623: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l3206
u4290:
	line	624
	
l3202:	
;lcd1.c: 624: return 16;
	movlw	low(010h)
	movwf	(?_scan)
	movlw	high(010h)
	movwf	((?_scan))+1
	goto	l856
	
l3204:	
	goto	l856
	
l883:	
	goto	l3206
	line	628
	
l882:	
	goto	l3206
	
l880:	
	goto	l3206
	
l878:	
	
l3206:	
;lcd1.c: 628: return 99;
	movlw	low(063h)
	movwf	(?_scan)
	movlw	high(063h)
	movwf	((?_scan))+1
	goto	l856
	
l3208:	
	line	632
	
l856:	
	return
	opt stack 0
GLOBAL	__end_of_scan
	__end_of_scan:
;; =============== function _scan ends ============

	signat	_scan,90
	global	_initlcd
psect	text495,local,class=CODE,delta=2
global __ptext495
__ptext495:

;; *************** function _initlcd *****************
;; Defined at:
;;		line 424 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text495
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	424
	global	__size_of_initlcd
	__size_of_initlcd	equ	__end_of_initlcd-_initlcd
	
_initlcd:	
	opt	stack 4
; Regs used in _initlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	426
	
l3088:	
;lcd1.c: 426: TRISC=0b11111100;
	movlw	(0FCh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	428
	
l3090:	
;lcd1.c: 428: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	430
	
l3092:	
;lcd1.c: 430: cmd(0x38);
	movlw	low(038h)
	movwf	(?_cmd)
	movlw	high(038h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	432
	
l3094:	
;lcd1.c: 432: cmd(0x0C);
	movlw	low(0Ch)
	movwf	(?_cmd)
	movlw	high(0Ch)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	434
	
l3096:	
;lcd1.c: 434: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	436
	
l3098:	
;lcd1.c: 436: cmd(0x80);
	movlw	low(080h)
	movwf	(?_cmd)
	movlw	high(080h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	438
	
l3100:	
;lcd1.c: 438: cmd(0x0f);
	movlw	low(0Fh)
	movwf	(?_cmd)
	movlw	high(0Fh)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	440
	
l809:	
	return
	opt stack 0
GLOBAL	__end_of_initlcd
	__end_of_initlcd:
;; =============== function _initlcd ends ============

	signat	_initlcd,88
	global	_actrow
psect	text496,local,class=CODE,delta=2
global __ptext496
__ptext496:

;; *************** function _actrow *****************
;; Defined at:
;;		line 640 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text496
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	640
	global	__size_of_actrow
	__size_of_actrow	equ	__end_of_actrow-_actrow
	
_actrow:	
	opt	stack 4
; Regs used in _actrow: [wreg+status,2+status,0+pclath+cstack]
	line	641
	
l3068:	
;lcd1.c: 641: resetout();
	fcall	_resetout
	line	643
	
l3070:	
;lcd1.c: 643: if(n==1)
	movlw	01h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l3074
u4100:
	line	645
	
l3072:	
;lcd1.c: 644: {
;lcd1.c: 645: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	646
;lcd1.c: 646: }
	goto	l3086
	line	647
	
l889:	
	
l3074:	
;lcd1.c: 647: else if(n==2)
	movlw	02h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l3078
u4110:
	line	649
	
l3076:	
;lcd1.c: 648: {
;lcd1.c: 649: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	650
;lcd1.c: 650: }
	goto	l3086
	line	651
	
l891:	
	
l3078:	
;lcd1.c: 651: else if(n==3)
	movlw	03h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l3082
u4120:
	line	653
	
l3080:	
;lcd1.c: 652: {
;lcd1.c: 653: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	654
;lcd1.c: 654: }
	goto	l3086
	line	655
	
l893:	
	
l3082:	
;lcd1.c: 655: else if(n==4)
	movlw	04h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l3086
u4130:
	line	657
	
l3084:	
;lcd1.c: 656: {
;lcd1.c: 657: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	goto	l3086
	line	658
	
l895:	
	goto	l3086
	line	659
	
l894:	
	goto	l3086
	
l892:	
	goto	l3086
	
l890:	
	
l3086:	
;lcd1.c: 658: }
;lcd1.c: 659: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	662
	
l896:	
	return
	opt stack 0
GLOBAL	__end_of_actrow
	__end_of_actrow:
;; =============== function _actrow ends ============

	signat	_actrow,4216
	global	_dat
psect	text497,local,class=CODE,delta=2
global __ptext497
__ptext497:

;; *************** function _dat *****************
;; Defined at:
;;		line 457 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text497
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	457
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 3
; Regs used in _dat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	458
	
l3056:	
;lcd1.c: 458: setLCD(Command);
	movf	(dat@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(dat@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	460
	
l3058:	
;lcd1.c: 460: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	462
	
l3060:	
;lcd1.c: 462: RC1=1;
	bsf	(57/8),(57)&7
	line	464
	
l3062:	
;lcd1.c: 464: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	466
	
l3064:	
;lcd1.c: 466: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	468
	
l3066:	
;lcd1.c: 468: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	474
	
l818:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text498,local,class=CODE,delta=2
global __ptext498
__ptext498:

;; *************** function _cmd *****************
;; Defined at:
;;		line 446 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text498
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	446
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 3
; Regs used in _cmd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	447
	
l3044:	
;lcd1.c: 447: setLCD(Command);
	movf	(cmd@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(cmd@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	448
	
l3046:	
;lcd1.c: 448: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	449
	
l3048:	
;lcd1.c: 449: RC1=1;
	bsf	(57/8),(57)&7
	line	450
	
l3050:	
;lcd1.c: 450: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	451
	
l3052:	
;lcd1.c: 451: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	452
	
l3054:	
;lcd1.c: 452: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	454
	
l815:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_itoaa
psect	text499,local,class=CODE,delta=2
global __ptext499
__ptext499:

;; *************** function _itoaa *****************
;; Defined at:
;;		line 397 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text499
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	397
	global	__size_of_itoaa
	__size_of_itoaa	equ	__end_of_itoaa-_itoaa
	
_itoaa:	
	opt	stack 5
; Regs used in _itoaa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	398
	
l2996:	
;lcd1.c: 398: int count=0,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@count)
	clrf	(itoaa@count+1)
	line	399
	
l2998:	
;lcd1.c: 399: if(ptr==(0))
	movf	(itoaa@ptr),f
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l3002
u4030:
	goto	l800
	line	400
	
l3000:	
;lcd1.c: 400: return 0;
;	Return value of _itoaa is never used
	goto	l800
	
l799:	
	line	401
	
l3002:	
;lcd1.c: 401: if(value==0)
	movf	((itoaa@value+1)),w
	iorwf	((itoaa@value)),w
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l801
u4040:
	line	403
	
l3004:	
;lcd1.c: 402: {
;lcd1.c: 403: *ptr='0';
	movlw	(030h)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l800
	line	404
	
l3006:	
;lcd1.c: 404: return 1;
;	Return value of _itoaa is never used
	goto	l800
	line	405
	
l801:	
	line	407
;lcd1.c: 405: }
;lcd1.c: 407: if(value<0)
	btfss	(itoaa@value+1),7
	goto	u4051
	goto	u4050
u4051:
	goto	l3016
u4050:
	line	409
	
l3008:	
;lcd1.c: 408: {
;lcd1.c: 409: value*=(-1);
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

	line	410
	
l3010:	
;lcd1.c: 410: *ptr++='-';
	movlw	(02Dh)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3012:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	line	411
	
l3014:	
;lcd1.c: 411: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	goto	l3016
	line	412
	
l802:	
	line	413
	
l3016:	
;lcd1.c: 412: }
;lcd1.c: 413: for(temp=value;temp>0;temp/=10,ptr++);
	movf	(itoaa@value+1),w
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3018:	
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
	goto	l3022
u4060:
	goto	l3028
	
l3020:	
	goto	l3028
	
l803:	
	
l3022:	
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

	
l3024:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	
l3026:	
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
	goto	l3022
u4070:
	goto	l3028
	
l804:	
	line	414
	
l3028:	
;lcd1.c: 414: *ptr='\0';
	movf	(itoaa@ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	415
	
l3030:	
;lcd1.c: 415: for(temp=value;temp>0;temp/=10)
	movf	(itoaa@value+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3032:	
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
	goto	l3036
u4080:
	goto	l800
	
l3034:	
	goto	l800
	line	416
	
l805:	
	line	417
	
l3036:	
;lcd1.c: 416: {
;lcd1.c: 417: *--ptr=temp%10+'0';
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
	line	418
	
l3038:	
;lcd1.c: 418: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	line	415
	
l3040:	
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

	
l3042:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4095
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4095:

	skipnc
	goto	u4091
	goto	u4090
u4091:
	goto	l3036
u4090:
	goto	l800
	
l806:	
	line	421
;lcd1.c: 419: }
;lcd1.c: 420: return count;
;	Return value of _itoaa is never used
	
l800:	
	return
	opt stack 0
GLOBAL	__end_of_itoaa
	__end_of_itoaa:
;; =============== function _itoaa ends ============

	signat	_itoaa,8314
	global	_startswitch
psect	text500,local,class=CODE,delta=2
global __ptext500
__ptext500:

;; *************** function _startswitch *****************
;; Defined at:
;;		line 116 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dev             2    9[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_strcmp
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text500
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	116
	global	__size_of_startswitch
	__size_of_startswitch	equ	__end_of_startswitch-_startswitch
	
_startswitch:	
	opt	stack 4
; Regs used in _startswitch: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	118
	
l2958:	
;lcd1.c: 118: TRISA=0b110000;
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	119
	
l2960:	
;lcd1.c: 119: PORTA=0x0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	123
	
l2962:	
;lcd1.c: 123: if(RC4==1)
	btfss	(60/8),(60)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l2966
u3950:
	line	124
	
l2964:	
;lcd1.c: 124: lo[0]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(_lo)
	goto	l2966
	
l683:	
	line	125
	
l2966:	
;lcd1.c: 125: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l2970
u3960:
	line	126
	
l2968:	
;lcd1.c: 126: lo[1]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+01h
	goto	l2970
	
l684:	
	line	127
	
l2970:	
;lcd1.c: 127: if(RA5==1)
	btfss	(45/8),(45)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l2974
u3970:
	line	128
	
l2972:	
;lcd1.c: 128: lo[2]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+02h
	goto	l2974
	
l685:	
	line	129
	
l2974:	
;lcd1.c: 129: if(RC7==1)
	btfss	(63/8),(63)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l2978
u3980:
	line	130
	
l2976:	
;lcd1.c: 130: lo[4]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+04h
	goto	l2978
	
l686:	
	line	132
	
l2978:	
;lcd1.c: 132: int dev=0b0000;
	clrf	(startswitch@dev)
	clrf	(startswitch@dev+1)
	line	133
	
l2980:	
;lcd1.c: 133: if(strcmp(lo,logic_d1)==0)
	movlw	(_logic_d1&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u3991
	goto	u3990
u3991:
	goto	l2984
u3990:
	line	134
	
l2982:	
;lcd1.c: 134: dev=dev|0b0001;
	movlw	low(01h)
	iorwf	(startswitch@dev),w
	movwf	(startswitch@dev)
	movlw	high(01h)
	iorwf	(startswitch@dev+1),w
	movwf	1+(startswitch@dev)
	goto	l2984
	
l687:	
	line	136
	
l2984:	
;lcd1.c: 136: if(strcmp(lo,logic_d2)==0)
	movlw	(_logic_d2&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l2988
u4000:
	line	137
	
l2986:	
;lcd1.c: 137: dev=dev|0b0010;
	movlw	low(02h)
	iorwf	(startswitch@dev),w
	movwf	(startswitch@dev)
	movlw	high(02h)
	iorwf	(startswitch@dev+1),w
	movwf	1+(startswitch@dev)
	goto	l2988
	
l688:	
	line	139
	
l2988:	
;lcd1.c: 139: if(strcmp(lo,logic_d3)==0)
	movlw	(_logic_d3&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u4011
	goto	u4010
u4011:
	goto	l2992
u4010:
	line	140
	
l2990:	
;lcd1.c: 140: dev=dev|0b0100;
	movlw	low(04h)
	iorwf	(startswitch@dev),w
	movwf	(startswitch@dev)
	movlw	high(04h)
	iorwf	(startswitch@dev+1),w
	movwf	1+(startswitch@dev)
	goto	l2992
	
l689:	
	line	142
	
l2992:	
;lcd1.c: 142: if(strcmp(lo,logic_d4)==0)
	movlw	(_logic_d4&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l690
u4020:
	line	143
	
l2994:	
;lcd1.c: 143: dev=dev|0b1000;
	movlw	low(08h)
	iorwf	(startswitch@dev),w
	movwf	(startswitch@dev)
	movlw	high(08h)
	iorwf	(startswitch@dev+1),w
	movwf	1+(startswitch@dev)
	
l690:	
	line	145
;lcd1.c: 145: PORTA=dev;
	movf	(startswitch@dev),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l692
	line	147
;lcd1.c: 147: while(1);
	
l691:	
	
l692:	
	goto	l692
	
l693:	
	line	150
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_startswitch
	__end_of_startswitch:
;; =============== function _startswitch ends ============

	signat	_startswitch,88
	global	___awmod
psect	text501,local,class=CODE,delta=2
global __ptext501
__ptext501:

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
psect	text501
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2924:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3861
	goto	u3860
u3861:
	goto	l2928
u3860:
	line	10
	
l2926:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2928
	line	12
	
l1136:	
	line	13
	
l2928:	
	btfss	(___awmod@divisor+1),7
	goto	u3871
	goto	u3870
u3871:
	goto	l2932
u3870:
	line	14
	
l2930:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2932
	
l1137:	
	line	15
	
l2932:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3881
	goto	u3880
u3881:
	goto	l2950
u3880:
	line	16
	
l2934:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2940
	
l1140:	
	line	18
	
l2936:	
	movlw	01h
	
u3895:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3895
	line	19
	
l2938:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2940
	line	20
	
l1139:	
	line	17
	
l2940:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l2936
u3900:
	goto	l2942
	
l1141:	
	goto	l2942
	line	21
	
l1142:	
	line	22
	
l2942:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3915
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3915:
	skipc
	goto	u3911
	goto	u3910
u3911:
	goto	l2946
u3910:
	line	23
	
l2944:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2946
	
l1143:	
	line	24
	
l2946:	
	movlw	01h
	
u3925:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3925
	line	25
	
l2948:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l2942
u3930:
	goto	l2950
	
l1144:	
	goto	l2950
	line	26
	
l1138:	
	line	27
	
l2950:	
	movf	(___awmod@sign),w
	skipz
	goto	u3940
	goto	l2954
u3940:
	line	28
	
l2952:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2954
	
l1145:	
	line	29
	
l2954:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1146
	
l2956:	
	line	30
	
l1146:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text502,local,class=CODE,delta=2
global __ptext502
__ptext502:

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
psect	text502
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2884:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3761
	goto	u3760
u3761:
	goto	l2888
u3760:
	line	11
	
l2886:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2888
	line	13
	
l1068:	
	line	14
	
l2888:	
	btfss	(___awdiv@dividend+1),7
	goto	u3771
	goto	u3770
u3771:
	goto	l2894
u3770:
	line	15
	
l2890:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2892:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2894
	line	17
	
l1069:	
	line	18
	
l2894:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2896:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3781
	goto	u3780
u3781:
	goto	l2916
u3780:
	line	20
	
l2898:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2904
	
l1072:	
	line	22
	
l2900:	
	movlw	01h
	
u3795:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3795
	line	23
	
l2902:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2904
	line	24
	
l1071:	
	line	21
	
l2904:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l2900
u3800:
	goto	l2906
	
l1073:	
	goto	l2906
	line	25
	
l1074:	
	line	26
	
l2906:	
	movlw	01h
	
u3815:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3815
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3825
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3825:
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l2912
u3820:
	line	28
	
l2908:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2910:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2912
	line	30
	
l1075:	
	line	31
	
l2912:	
	movlw	01h
	
u3835:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3835
	line	32
	
l2914:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l2906
u3840:
	goto	l2916
	
l1076:	
	goto	l2916
	line	33
	
l1070:	
	line	34
	
l2916:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3850
	goto	l2920
u3850:
	line	35
	
l2918:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2920
	
l1077:	
	line	36
	
l2920:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1078
	
l2922:	
	line	37
	
l1078:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text503,local,class=CODE,delta=2
global __ptext503
__ptext503:

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
psect	text503
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2872:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2874
	line	6
	
l928:	
	line	7
	
l2874:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l929
u3720:
	line	8
	
l2876:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l929:	
	line	9
	movlw	01h
	
u3735:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3735
	line	10
	
l2878:	
	movlw	01h
	
u3745:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3745
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l2874
u3750:
	goto	l2880
	
l930:	
	line	12
	
l2880:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l931
	
l2882:	
	line	13
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_resetout
psect	text504,local,class=CODE,delta=2
global __ptext504
__ptext504:

;; *************** function _resetout *****************
;; Defined at:
;;		line 636 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text504
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	636
	global	__size_of_resetout
	__size_of_resetout	equ	__end_of_resetout-_resetout
	
_resetout:	
	opt	stack 4
; Regs used in _resetout: []
	line	637
	
l2870:	
;lcd1.c: 637: RC2=0;RC3=0;RB6=0;RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(54/8),(54)&7
	bcf	(55/8),(55)&7
	line	638
	
l886:	
	return
	opt stack 0
GLOBAL	__end_of_resetout
	__end_of_resetout:
;; =============== function _resetout ends ============

	signat	_resetout,88
	global	_setLCD
psect	text505,local,class=CODE,delta=2
global __ptext505
__ptext505:

;; *************** function _setLCD *****************
;; Defined at:
;;		line 476 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text505
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	476
	global	__size_of_setLCD
	__size_of_setLCD	equ	__end_of_setLCD-_setLCD
	
_setLCD:	
	opt	stack 3
; Regs used in _setLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	481
	
l2856:	
;lcd1.c: 477: const int size=8*sizeof(int);
;lcd1.c: 478: int vbool[8*sizeof(int)];
;lcd1.c: 479: int i;;
;lcd1.c: 481: for (i = 0; i <size; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLCD@i)
	clrf	(setLCD@i+1)
	
l2858:	
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
	goto	u3535
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3535:

	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l2862
u3530:
	goto	l2868
	
l2860:	
	goto	l2868
	line	482
	
l823:	
	line	483
	
l2862:	
;lcd1.c: 482: {
;lcd1.c: 483: vbool[i] = number<<i < 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(setLCD@i),w
	movwf	(??_setLCD+0)+0
	movf	(setLCD@number+1),w
	movwf	(??_setLCD+1)+0+1
	movf	(setLCD@number),w
	movwf	(??_setLCD+1)+0
	goto	u3544
u3545:
	clrc
	rlf	(??_setLCD+1)+0,f
	rlf	(??_setLCD+1)+1,f
u3544:
	decfsz	(??_setLCD+0)+0,f
	goto	u3545
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
	line	481
	
l2864:	
	movlw	low(01h)
	addwf	(setLCD@i),f
	skipnc
	incf	(setLCD@i+1),f
	movlw	high(01h)
	addwf	(setLCD@i+1),f
	
l2866:	
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
	goto	u3555
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3555:

	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l2862
u3550:
	goto	l2868
	
l824:	
	line	486
	
l2868:	
;lcd1.c: 484: }
;lcd1.c: 486: RD0=vbool[size-1];
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
	goto	u3561
	goto	u3560
	
u3561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u3574
u3560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u3574:
	line	487
;lcd1.c: 487: RD1=vbool[size-2];
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
	goto	u3581
	goto	u3580
	
u3581:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u3594
u3580:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u3594:
	line	488
;lcd1.c: 488: RD2=vbool[size-3];
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
	goto	u3601
	goto	u3600
	
u3601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	goto	u3614
u3600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
u3614:
	line	489
;lcd1.c: 489: RD3=vbool[size-4];
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
	goto	u3621
	goto	u3620
	
u3621:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	goto	u3634
u3620:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
u3634:
	line	490
;lcd1.c: 490: RD4=vbool[size-5];
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
	goto	u3641
	goto	u3640
	
u3641:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3654
u3640:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3654:
	line	491
;lcd1.c: 491: RD5=vbool[size-6];
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
	goto	u3661
	goto	u3660
	
u3661:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3674
u3660:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3674:
	line	492
;lcd1.c: 492: RD6=vbool[size-7];
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
	goto	u3681
	goto	u3680
	
u3681:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3694
u3680:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3694:
	line	493
;lcd1.c: 493: RD7=vbool[size-8];
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
	goto	u3701
	goto	u3700
	
u3701:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3714
u3700:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3714:
	line	497
	
l825:	
	return
	opt stack 0
GLOBAL	__end_of_setLCD
	__end_of_setLCD:
;; =============== function _setLCD ends ============

	signat	_setLCD,4216
	global	_delay
psect	text506,local,class=CODE,delta=2
global __ptext506
__ptext506:

;; *************** function _delay *****************
;; Defined at:
;;		line 391 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text506
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	391
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 4
; Regs used in _delay: [wreg]
	line	392
	
l2852:	
;lcd1.c: 392: while(x-->0);
	goto	l2854
	
l794:	
	goto	l2854
	
l793:	
	
l2854:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u3525
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u3525:

	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l2854
u3520:
	goto	l796
	
l795:	
	line	393
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_strcat
psect	text507,local,class=CODE,delta=2
global __ptext507
__ptext507:

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
psect	text507
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
	
l2776:	
	movf	(strcat@to),w
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	movwf	(strcat@cp)
	line	19
	goto	l2780
	
l900:	
	line	20
	
l2778:	
	movlw	(01h)
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	addwf	(strcat@cp),f
	goto	l2780
	
l899:	
	line	19
	
l2780:	
	movf	(strcat@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l2778
u3340:
	goto	l2782
	
l901:	
	line	21
	goto	l2782
	
l903:	
	line	22
	goto	l2782
	
l902:	
	line	21
	
l2782:	
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
	goto	u3351
	goto	u3350
u3351:
	goto	l2782
u3350:
	goto	l905
	
l904:	
	line	24
;	Return value of _strcat is never used
	
l905:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
;; =============== function _strcat ends ============

	signat	_strcat,8313
	global	_strcpy
psect	text508,local,class=CODE,delta=2
global __ptext508
__ptext508:

;; *************** function _strcpy *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d4(5), logic_d3(5), logic_d2(5), 
;;		 -> logic_d1(5), 
;;  from            1    0[COMMON] PTR const unsigned char 
;;		 -> STR_12(1), STR_11(20), STR_9(1), STR_8(20), 
;;		 -> STR_6(1), STR_5(20), STR_3(1), STR_2(20), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d4(5), logic_d3(5), logic_d2(5), 
;;		 -> logic_d1(5), 
;;  cp              1    3[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d4(5), logic_d3(5), logic_d2(5), 
;;		 -> logic_d1(5), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
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
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text508
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
	line	10
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
	opt	stack 5
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+pclath]
;strcpy@to stored from wreg
	line	18
	movwf	(strcpy@to)
	
l2772:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l2774
	
l917:	
	line	20
	goto	l2774
	
l916:	
	line	19
	
l2774:	
	movlw	01h
	addwf	(strcpy@from),f
	movlw	-01h
	addwf	(strcpy@from),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_strcpy+0)+0
	movf	(strcpy@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strcpy@cp),f
	movf	(??_strcpy+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	(indf),f
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l2774
u3330:
	goto	l919
	
l918:	
	line	22
;	Return value of _strcpy is never used
	
l919:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_strcmp
psect	text509,local,class=CODE,delta=2
global __ptext509
__ptext509:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> lo(5), 
;;  s2              2    0[COMMON] PTR const unsigned char 
;;		 -> STR_29(5), STR_28(5), STR_27(5), STR_26(5), 
;;		 -> STR_25(5), STR_24(5), STR_23(5), STR_22(5), 
;;		 -> STR_21(5), STR_20(5), STR_19(5), STR_18(5), 
;;		 -> STR_17(5), STR_16(5), STR_15(5), STR_14(5), 
;;		 -> logic_d4(5), logic_d3(5), logic_d2(5), logic_d1(5), 
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
psect	text509
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
	
l2762:	
	goto	l2764
	
l909:	
	line	38
	goto	l2764
	
l908:	
	line	37
	
l2764:	
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
	goto	u3311
	goto	u3310
u3311:
	goto	l2768
u3310:
	
l2766:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l2764
u3320:
	goto	l2768
	
l911:	
	goto	l2768
	
l912:	
	line	39
	
l2768:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l913
	
l2770:	
	line	40
	
l913:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_initkeypad
psect	text510,local,class=CODE,delta=2
global __ptext510
__ptext510:

;; *************** function _initkeypad *****************
;; Defined at:
;;		line 574 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text510
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	574
	global	__size_of_initkeypad
	__size_of_initkeypad	equ	__end_of_initkeypad-_initkeypad
	
_initkeypad:	
	opt	stack 7
; Regs used in _initkeypad: [wreg+status,2]
	line	575
	
l1348:	
;lcd1.c: 575: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	576
	
l1350:	
;lcd1.c: 576: TRISB = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	578
	
l852:	
	return
	opt stack 0
GLOBAL	__end_of_initkeypad
	__end_of_initkeypad:
;; =============== function _initkeypad ends ============

	signat	_initkeypad,88
psect	text511,local,class=CODE,delta=2
global __ptext511
__ptext511:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
