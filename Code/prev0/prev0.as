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
	FNROOT	_main
	global	getlogicseq@F1246
	global	getlogicseq@F1248
	global	getlogicseq@F1250
	global	getlogicseq@F1252
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	106

;initializer for getlogicseq@F1246
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	031h
	retlw	0
	line	107

;initializer for getlogicseq@F1248
	retlw	031h
	retlw	030h
	retlw	031h
	retlw	031h
	retlw	0
	line	108

;initializer for getlogicseq@F1250
	retlw	031h
	retlw	031h
	retlw	031h
	retlw	031h
	retlw	0
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	line	109

;initializer for getlogicseq@F1252
	retlw	031h
	retlw	030h
	retlw	031h
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
	line	377
setLCD@size:
	retlw	010h
	retlw	0

	global	setLCD@size
	global	getlogicseq@F1255
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
	line	106
getlogicseq@F1246:
       ds      5

psect	dataBANK0
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	107
getlogicseq@F1248:
       ds      5

psect	dataBANK0
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	108
getlogicseq@F1250:
       ds      5

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
getlogicseq@F1255:
       ds      16

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	109
getlogicseq@F1252:
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
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+15)
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
	global	getlogicseq@logic_d1
getlogicseq@logic_d1:	; 5 bytes @ 0x32
	ds	5
	global	getlogicseq@logic_d2
getlogicseq@logic_d2:	; 5 bytes @ 0x37
	ds	5
	global	getlogicseq@logic_d3
getlogicseq@logic_d3:	; 5 bytes @ 0x3C
	ds	5
	global	getlogicseq@logic_d4
getlogicseq@logic_d4:	; 5 bytes @ 0x41
	ds	5
	global	getlogicseq@nf
getlogicseq@nf:	; 2 bytes @ 0x46
	ds	2
	global	getlogicseq@wf
getlogicseq@wf:	; 2 bytes @ 0x48
	ds	2
	global	getlogicseq@ccount
getlogicseq@ccount:	; 2 bytes @ 0x4A
	ds	2
	global	getlogicseq@num
getlogicseq@num:	; 2 bytes @ 0x4C
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
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
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
;;Data sizes: Strings 123, constant 2, data 20, bss 16, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     64      79
;; BANK1           80     78      78
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
;;		 -> getlogicseq@logic_d4(BANK1[5]), getlogicseq@logic_d3(BANK1[5]), getlogicseq@logic_d2(BANK1[5]), getlogicseq@logic_d1(BANK1[5]), 
;;
;; ?_itoaa	int  size(1) Largest target is 0
;;
;; ?_strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), getlogicseq@logic_d4(BANK1[5]), getlogicseq@logic_d3(BANK1[5]), getlogicseq@logic_d2(BANK1[5]), 
;;		 -> getlogicseq@logic_d1(BANK1[5]), 
;;
;; strcpy@from	PTR const unsigned char  size(1) Largest target is 20
;;		 -> STR_12(CODE[1]), STR_11(CODE[20]), STR_9(CODE[1]), STR_8(CODE[20]), 
;;		 -> STR_6(CODE[1]), STR_5(CODE[20]), STR_3(CODE[1]), STR_2(CODE[20]), 
;;
;; strcpy@to	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), getlogicseq@logic_d4(BANK1[5]), getlogicseq@logic_d3(BANK1[5]), getlogicseq@logic_d2(BANK1[5]), 
;;		 -> getlogicseq@logic_d1(BANK1[5]), 
;;
;; strcpy@cp	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), getlogicseq@logic_d4(BANK1[5]), getlogicseq@logic_d3(BANK1[5]), getlogicseq@logic_d2(BANK1[5]), 
;;		 -> getlogicseq@logic_d1(BANK1[5]), 
;;
;; strcat@from	PTR const unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; strcat@to	PTR unsigned char  size(1) Largest target is 5
;;		 -> getlogicseq@logic_d4(BANK1[5]), getlogicseq@logic_d3(BANK1[5]), getlogicseq@logic_d2(BANK1[5]), getlogicseq@logic_d1(BANK1[5]), 
;;
;; strcat@cp	PTR unsigned char  size(1) Largest target is 5
;;		 -> getlogicseq@logic_d4(BANK1[5]), getlogicseq@logic_d3(BANK1[5]), getlogicseq@logic_d2(BANK1[5]), getlogicseq@logic_d1(BANK1[5]), 
;;
;; scroll@str	PTR unsigned char  size(1) Largest target is 38
;;		 -> STR_1(CODE[38]), 
;;
;; write@str	PTR unsigned char  size(2) Largest target is 38
;;		 -> STR_13(CODE[5]), STR_10(CODE[5]), STR_7(CODE[5]), STR_4(CODE[5]), 
;;		 -> getlogicseq@str(BANK1[32]), STR_1(CODE[38]), getlogicseq@logic_d4(BANK1[5]), getlogicseq@logic_d3(BANK1[5]), 
;;		 -> getlogicseq@logic_d2(BANK1[5]), getlogicseq@logic_d1(BANK1[5]), 
;;
;; itoaa@ptr	PTR unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; sp__strcat	PTR unsigned char  size(1) Largest target is 5
;;		 -> getlogicseq@logic_d4(BANK1[5]), getlogicseq@logic_d3(BANK1[5]), getlogicseq@logic_d2(BANK1[5]), getlogicseq@logic_d1(BANK1[5]), 
;;
;; sp__strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), getlogicseq@logic_d4(BANK1[5]), getlogicseq@logic_d3(BANK1[5]), getlogicseq@logic_d2(BANK1[5]), 
;;		 -> getlogicseq@logic_d1(BANK1[5]), 
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
;; (0) _main                                                 0     0      0    6345
;;                            _initlcd
;;                         _initkeypad
;;                        _getlogicseq
;; ---------------------------------------------------------------------------------
;; (1) _getlogicseq                                         82    82      0    5981
;;                                             60 BANK0      4     4      0
;;                                              0 BANK1     78    78      0
;;                             _scroll
;;                             _strcpy
;;                              _write
;;                               _scan
;;                              _itoaa
;;                             _strcat
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
;;BANK1               50     4E      4E       7       97.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      C7      12        0.0%
;;ABS                  0      0      C0       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50     40      4F       5       98.8%
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
;;		line 79 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  664[COMMON] int 
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
	line	79
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	84
	
l3178:	
;lcd1.c: 84: initlcd();
	fcall	_initlcd
	line	85
	
l3180:	
;lcd1.c: 85: initkeypad();
	fcall	_initkeypad
	goto	l3182
	line	89
;lcd1.c: 89: while(1){
	
l665:	
	line	90
	
l3182:	
;lcd1.c: 90: getlogicseq();
	fcall	_getlogicseq
	goto	l3182
	line	91
	
l666:	
	line	89
	goto	l3182
	
l667:	
	line	97
	
l668:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_getlogicseq
psect	text440,local,class=CODE,delta=2
global __ptext440
__ptext440:

;; *************** function _getlogicseq *****************
;; Defined at:
;;		line 105 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  str            32    0[BANK1 ] unsigned char [32]
;;  snum           16   34[BANK1 ] unsigned char [16]
;;  logic_d4        5   65[BANK1 ] unsigned char [5]
;;  logic_d3        5   60[BANK1 ] unsigned char [5]
;;  logic_d2        5   55[BANK1 ] unsigned char [5]
;;  logic_d1        5   50[BANK1 ] unsigned char [5]
;;  num             2   76[BANK1 ] int 
;;  ccount          2   74[BANK1 ] int 
;;  wf              2   72[BANK1 ] int 
;;  nf              2   70[BANK1 ] int 
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
;;      Locals:         0       0      78       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4      78       0       0
;;Total ram usage:       82 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_scroll
;;		_strcpy
;;		_write
;;		_scan
;;		_itoaa
;;		_strcat
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text440
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	105
	global	__size_of_getlogicseq
	__size_of_getlogicseq	equ	__end_of_getlogicseq-_getlogicseq
	
_getlogicseq:	
	opt	stack 1
; Regs used in _getlogicseq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	106
	
l2978:	
;lcd1.c: 106: char logic_d1[5]="1001";
	movlw	(getlogicseq@logic_d1)&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getlogicseq@F1246),w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1246)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1246)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1246)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1246)+4,w
	movwf	indf
	line	107
;lcd1.c: 107: char logic_d2[5]="1011";
	movlw	(getlogicseq@logic_d2)&0ffh
	movwf	fsr0
	movf	(getlogicseq@F1248),w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1248)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1248)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1248)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1248)+4,w
	movwf	indf
	line	108
;lcd1.c: 108: char logic_d3[5]="1111";
	movlw	(getlogicseq@logic_d3)&0ffh
	movwf	fsr0
	movf	(getlogicseq@F1250),w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1250)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1250)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1250)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1250)+4,w
	movwf	indf
	line	109
;lcd1.c: 109: char logic_d4[5]="1010";
	movlw	(getlogicseq@logic_d4)&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(getlogicseq@F1252)^0180h,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1252)^0180h+1,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1252)^0180h+2,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1252)^0180h+3,w
	movwf	indf
	incf	fsr0,f
	movf	(getlogicseq@F1252)^0180h+4,w
	movwf	indf
	line	112
	
l2980:	
;lcd1.c: 112: scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scroll)
	movlw	high(0)
	movwf	((?_scroll))+1
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_scroll
	line	117
	
l2982:	
;lcd1.c: 116: int num ;
;lcd1.c: 117: char snum[16]="";
	movlw	(getlogicseq@snum)&0ffh
	movwf	fsr0
	movlw	low(getlogicseq@F1255)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	fsr0,w
	movwf	((??_getlogicseq+0)+0+1)
	movlw	16
	movwf	((??_getlogicseq+0)+0+2)
u3860:
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
	goto	u3860
	line	118
	
l2984:	
;lcd1.c: 118: int wf=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	line	119
	
l2986:	
;lcd1.c: 119: int nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	line	120
	
l2988:	
;lcd1.c: 120: int bf=0;
	clrf	(getlogicseq@bf)^080h
	clrf	(getlogicseq@bf+1)^080h
	line	121
	
l2990:	
;lcd1.c: 121: int ccount=0;
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	goto	l2992
	line	123
;lcd1.c: 122: char str[32];
;lcd1.c: 123: START_SEQ:
	
l681:	
	line	125
	
l2992:	
;lcd1.c: 125: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	
l2994:	
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	126
	
l2996:	
;lcd1.c: 126: strcpy(str,"Enter Logic DEV1:  ");
	movlw	((STR_2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	127
	
l2998:	
;lcd1.c: 127: write(str,1,1);
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
	line	128
	
l3000:	
;lcd1.c: 128: write(logic_d1,2,0);
	movlw	(getlogicseq@logic_d1&0ffh)
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
	goto	l3002
	line	130
;lcd1.c: 130: while(1)
	
l682:	
	line	132
	
l3002:	
;lcd1.c: 131: {
;lcd1.c: 132: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	133
	
l3004:	
;lcd1.c: 133: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u3871
	goto	u3870
u3871:
	goto	l3008
u3870:
	
l3006:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l3024
u3880:
	goto	l3008
	
l685:	
	line	134
	
l3008:	
;lcd1.c: 134: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l3026
u3890:
	line	136
	
l3010:	
;lcd1.c: 135: {
;lcd1.c: 136: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u3901
	goto	u3900
u3901:
	goto	l3014
u3900:
	line	137
	
l3012:	
;lcd1.c: 137: strcpy(logic_d1,"");
	movlw	((STR_3-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@logic_d1)&0ffh
	fcall	_strcpy
	goto	l3014
	
l687:	
	line	138
	
l3014:	
;lcd1.c: 138: write("----",2,0);
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
	line	139
	
l3016:	
;lcd1.c: 139: itoaa(num, snum);
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
	line	140
;lcd1.c: 140: strcat(logic_d1,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(getlogicseq@logic_d1)&0ffh
	fcall	_strcat
	line	141
	
l3018:	
;lcd1.c: 141: write( logic_d1,2,0); ;
	movlw	(getlogicseq@logic_d1&0ffh)
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
	line	142
	
l3020:	
;lcd1.c: 142: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	143
	
l3022:	
;lcd1.c: 143: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3026
	line	144
	
l686:	
	line	145
;lcd1.c: 144: }
;lcd1.c: 145: }
	goto	l3026
	line	146
	
l683:	
	line	147
	
l3024:	
;lcd1.c: 146: else{
;lcd1.c: 147: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3026
	line	148
	
l688:	
	line	149
	
l3026:	
;lcd1.c: 148: }
;lcd1.c: 149: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3915
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u3915:

	skipc
	goto	u3911
	goto	u3910
u3911:
	goto	l3030
u3910:
	goto	l3040
	line	150
	
l3028:	
;lcd1.c: 150: break;
	goto	l3040
	
l689:	
	line	153
	
l3030:	
;lcd1.c: 153: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l3036
u3920:
	line	155
	
l3032:	
;lcd1.c: 154: {
;lcd1.c: 155: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l3002
u3930:
	line	156
	
l3034:	
;lcd1.c: 156: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	157
;lcd1.c: 157: break;
	goto	l3040
	line	158
	
l692:	
	line	159
;lcd1.c: 158: }
;lcd1.c: 159: }
	goto	l3002
	line	160
	
l691:	
	
l3036:	
;lcd1.c: 160: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l3002
u3940:
	line	161
	
l3038:	
;lcd1.c: 161: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3002
	line	162
	
l694:	
	goto	l3002
	line	163
	
l693:	
	goto	l3002
	
l695:	
	line	130
	goto	l3002
	
l690:	
	line	166
	
l3040:	
;lcd1.c: 162: }
;lcd1.c: 163: }
;lcd1.c: 166: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	167
	
l3042:	
;lcd1.c: 167: strcpy(str,"Enter Logic DEV2:  ");
	movlw	((STR_5-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	168
	
l3044:	
;lcd1.c: 168: write(str,1,1);
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
	line	169
	
l3046:	
;lcd1.c: 169: write(logic_d2,2,0);
	movlw	(getlogicseq@logic_d2&0ffh)
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
	goto	l3048
	line	171
;lcd1.c: 171: while(1)
	
l696:	
	line	173
	
l3048:	
;lcd1.c: 172: {
;lcd1.c: 173: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	174
	
l3050:	
;lcd1.c: 174: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u3951
	goto	u3950
u3951:
	goto	l3054
u3950:
	
l3052:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l3070
u3960:
	goto	l3054
	
l699:	
	line	175
	
l3054:	
;lcd1.c: 175: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u3971
	goto	u3970
u3971:
	goto	l3072
u3970:
	line	176
	
l3056:	
;lcd1.c: 176: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u3981
	goto	u3980
u3981:
	goto	l3060
u3980:
	line	177
	
l3058:	
;lcd1.c: 177: strcpy(logic_d2,"");
	movlw	((STR_6-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@logic_d2)&0ffh
	fcall	_strcpy
	goto	l3060
	
l701:	
	line	178
	
l3060:	
;lcd1.c: 178: write("----",2,0);
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
	line	179
	
l3062:	
;lcd1.c: 179: itoaa(num, snum);
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
	line	180
;lcd1.c: 180: strcat(logic_d2,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(getlogicseq@logic_d2)&0ffh
	fcall	_strcat
	line	181
	
l3064:	
;lcd1.c: 181: write( logic_d2,2,0); ;
	movlw	(getlogicseq@logic_d2&0ffh)
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
	line	182
	
l3066:	
;lcd1.c: 182: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	183
	
l3068:	
;lcd1.c: 183: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3072
	line	184
	
l700:	
	line	185
;lcd1.c: 184: }
;lcd1.c: 185: }
	goto	l3072
	line	186
	
l697:	
	line	187
	
l3070:	
;lcd1.c: 186: else{
;lcd1.c: 187: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3072
	line	188
	
l702:	
	line	189
	
l3072:	
;lcd1.c: 188: }
;lcd1.c: 189: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3995
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u3995:

	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l3076
u3990:
	goto	l3086
	line	190
	
l3074:	
;lcd1.c: 190: break;
	goto	l3086
	
l703:	
	line	192
	
l3076:	
;lcd1.c: 192: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l3082
u4000:
	line	194
	
l3078:	
;lcd1.c: 193: {
;lcd1.c: 194: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4011
	goto	u4010
u4011:
	goto	l3048
u4010:
	line	195
	
l3080:	
;lcd1.c: 195: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	196
;lcd1.c: 196: break;
	goto	l3086
	line	197
	
l706:	
	line	198
;lcd1.c: 197: }
;lcd1.c: 198: }
	goto	l3048
	line	199
	
l705:	
	
l3082:	
;lcd1.c: 199: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l3048
u4020:
	line	200
	
l3084:	
;lcd1.c: 200: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3048
	line	201
	
l708:	
	goto	l3048
	line	202
	
l707:	
	goto	l3048
	
l709:	
	line	171
	goto	l3048
	
l704:	
	line	205
	
l3086:	
;lcd1.c: 201: }
;lcd1.c: 202: }
;lcd1.c: 205: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	206
	
l3088:	
;lcd1.c: 206: strcpy(str,"Enter Logic DEV3:  ");
	movlw	((STR_8-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	207
	
l3090:	
;lcd1.c: 207: write(str,1,1);
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
	line	208
	
l3092:	
;lcd1.c: 208: write(logic_d3,2,0);
	movlw	(getlogicseq@logic_d3&0ffh)
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
	goto	l3094
	line	210
;lcd1.c: 210: while(1)
	
l710:	
	line	212
	
l3094:	
;lcd1.c: 211: {
;lcd1.c: 212: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	213
	
l3096:	
;lcd1.c: 213: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4031
	goto	u4030
u4031:
	goto	l3100
u4030:
	
l3098:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l3116
u4040:
	goto	l3100
	
l713:	
	line	214
	
l3100:	
;lcd1.c: 214: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l3118
u4050:
	line	215
	
l3102:	
;lcd1.c: 215: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l3106
u4060:
	line	216
	
l3104:	
;lcd1.c: 216: strcpy(logic_d3,"");
	movlw	((STR_9-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@logic_d3)&0ffh
	fcall	_strcpy
	goto	l3106
	
l715:	
	line	217
	
l3106:	
;lcd1.c: 217: write("----",2,0);
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
	line	218
	
l3108:	
;lcd1.c: 218: itoaa(num, snum);
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
	line	219
;lcd1.c: 219: strcat(logic_d3,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(getlogicseq@logic_d3)&0ffh
	fcall	_strcat
	line	220
	
l3110:	
;lcd1.c: 220: write( logic_d3,2,0); ;
	movlw	(getlogicseq@logic_d3&0ffh)
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
	line	221
	
l3112:	
;lcd1.c: 221: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	222
	
l3114:	
;lcd1.c: 222: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3118
	line	223
	
l714:	
	line	224
;lcd1.c: 223: }
;lcd1.c: 224: }
	goto	l3118
	line	225
	
l711:	
	line	226
	
l3116:	
;lcd1.c: 225: else{
;lcd1.c: 226: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3118
	line	227
	
l716:	
	line	228
	
l3118:	
;lcd1.c: 227: }
;lcd1.c: 228: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4075
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4075:

	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l3122
u4070:
	goto	l3132
	line	229
	
l3120:	
;lcd1.c: 229: break;
	goto	l3132
	
l717:	
	line	231
	
l3122:	
;lcd1.c: 231: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4081
	goto	u4080
u4081:
	goto	l3128
u4080:
	line	233
	
l3124:	
;lcd1.c: 232: {
;lcd1.c: 233: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4091
	goto	u4090
u4091:
	goto	l3094
u4090:
	line	234
	
l3126:	
;lcd1.c: 234: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	235
;lcd1.c: 235: break;
	goto	l3132
	line	236
	
l720:	
	line	237
;lcd1.c: 236: }
;lcd1.c: 237: }
	goto	l3094
	line	238
	
l719:	
	
l3128:	
;lcd1.c: 238: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l3094
u4100:
	line	239
	
l3130:	
;lcd1.c: 239: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3094
	line	240
	
l722:	
	goto	l3094
	line	241
	
l721:	
	goto	l3094
	
l723:	
	line	210
	goto	l3094
	
l718:	
	line	245
	
l3132:	
;lcd1.c: 240: }
;lcd1.c: 241: }
;lcd1.c: 245: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	246
	
l3134:	
;lcd1.c: 246: strcpy(str,"Enter Logic DEV4:  ");
	movlw	((STR_11-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	247
	
l3136:	
;lcd1.c: 247: write(str,1,1);
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
	line	248
	
l3138:	
;lcd1.c: 248: write(logic_d4,2,0);
	movlw	(getlogicseq@logic_d4&0ffh)
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
	goto	l3140
	line	250
;lcd1.c: 250: while(1)
	
l724:	
	line	252
	
l3140:	
;lcd1.c: 251: {
;lcd1.c: 252: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	253
	
l3142:	
;lcd1.c: 253: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4111
	goto	u4110
u4111:
	goto	l3146
u4110:
	
l3144:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l3162
u4120:
	goto	l3146
	
l727:	
	line	254
	
l3146:	
;lcd1.c: 254: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l3164
u4130:
	line	256
	
l3148:	
;lcd1.c: 255: {
;lcd1.c: 256: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l3152
u4140:
	line	257
	
l3150:	
;lcd1.c: 257: strcpy(logic_d4,"");
	movlw	((STR_12-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcpy)
	movlw	(getlogicseq@logic_d4)&0ffh
	fcall	_strcpy
	goto	l3152
	
l729:	
	line	258
	
l3152:	
;lcd1.c: 258: write("----",2,0);
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
	line	259
	
l3154:	
;lcd1.c: 259: itoaa(num, snum);
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
	line	260
;lcd1.c: 260: strcat(logic_d4,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(getlogicseq@logic_d4)&0ffh
	fcall	_strcat
	line	261
	
l3156:	
;lcd1.c: 261: write( logic_d4,2,0); ;
	movlw	(getlogicseq@logic_d4&0ffh)
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
	line	262
	
l3158:	
;lcd1.c: 262: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	263
	
l3160:	
;lcd1.c: 263: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3164
	line	264
	
l728:	
	line	265
;lcd1.c: 264: }
;lcd1.c: 265: }
	goto	l3164
	line	266
	
l725:	
	line	267
	
l3162:	
;lcd1.c: 266: else{
;lcd1.c: 267: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3164
	line	268
	
l730:	
	line	269
	
l3164:	
;lcd1.c: 268: }
;lcd1.c: 269: if(ccount>3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4155
	movlw	low(04h)
	subwf	(getlogicseq@ccount)^080h,w
u4155:

	skipc
	goto	u4151
	goto	u4150
u4151:
	goto	l3168
u4150:
	goto	l2992
	line	270
	
l3166:	
;lcd1.c: 270: break;
	goto	l2992
	
l731:	
	line	272
	
l3168:	
;lcd1.c: 272: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4161
	goto	u4160
u4161:
	goto	l3174
u4160:
	line	274
	
l3170:	
;lcd1.c: 273: {
;lcd1.c: 274: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4171
	goto	u4170
u4171:
	goto	l3140
u4170:
	line	275
	
l3172:	
;lcd1.c: 275: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	276
;lcd1.c: 276: break;
	goto	l2992
	line	277
	
l734:	
	line	278
;lcd1.c: 277: }
;lcd1.c: 278: }
	goto	l3140
	line	279
	
l733:	
	
l3174:	
;lcd1.c: 279: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l3140
u4180:
	line	280
	
l3176:	
;lcd1.c: 280: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3140
	line	281
	
l736:	
	goto	l3140
	line	282
	
l735:	
	goto	l3140
	
l737:	
	line	250
	goto	l3140
	
l732:	
	line	284
;lcd1.c: 281: }
;lcd1.c: 282: }
;lcd1.c: 284: goto START_SEQ;
	goto	l2992
	line	286
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of_getlogicseq
	__end_of_getlogicseq:
;; =============== function _getlogicseq ends ============

	signat	_getlogicseq,88
	global	_scroll
psect	text441,local,class=CODE,delta=2
global __ptext441
__ptext441:

;; *************** function _scroll *****************
;; Defined at:
;;		line 420 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text441
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	420
	global	__size_of_scroll
	__size_of_scroll	equ	__end_of_scroll-_scroll
	
_scroll:	
	opt	stack 1
; Regs used in _scroll: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;scroll@str stored from wreg
	line	422
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scroll@str)
	
l2938:	
;lcd1.c: 422: write(str,1,0); ;
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
	line	423
	
l2940:	
;lcd1.c: 423: int loopn=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@loopn)
	clrf	(scroll@loopn+1)
	line	425
	
l2942:	
;lcd1.c: 424: int i;
;lcd1.c: 425: int len=0;;
	clrf	(scroll@len)
	clrf	(scroll@len+1)
	line	426
	
l2944:	
;lcd1.c: 426: int st=0;
	clrf	(scroll@st)
	clrf	(scroll@st+1)
	line	428
;lcd1.c: 427: int en;
;lcd1.c: 428: while(str[i]!='\0')
	goto	l2948
	
l786:	
	line	429
	
l2946:	
;lcd1.c: 429: { i++;
	movlw	low(01h)
	addwf	(scroll@i),f
	skipnc
	incf	(scroll@i+1),f
	movlw	high(01h)
	addwf	(scroll@i+1),f
	line	430
;lcd1.c: 430: len++;
	movlw	low(01h)
	addwf	(scroll@len),f
	skipnc
	incf	(scroll@len+1),f
	movlw	high(01h)
	addwf	(scroll@len+1),f
	goto	l2948
	line	431
	
l785:	
	line	428
	
l2948:	
	movf	(scroll@i),w
	addwf	(scroll@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l2946
u3810:
	goto	l2950
	
l787:	
	line	432
	
l2950:	
;lcd1.c: 431: }
;lcd1.c: 432: en=len-1;
	movf	(scroll@len),w
	addlw	low(-1)
	movwf	(scroll@en)
	movf	(scroll@len+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(scroll@en)
	line	434
	
l2952:	
;lcd1.c: 434: if(len>32)
	movf	(scroll@len+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(021h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3825
	movlw	low(021h)
	subwf	(scroll@len),w
u3825:

	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l797
u3820:
	line	438
	
l2954:	
;lcd1.c: 435: {
;lcd1.c: 437: char dest [32] ;
;lcd1.c: 438: int startat=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@startat)
	clrf	(scroll@startat+1)
	line	439
	
l2956:	
;lcd1.c: 439: int endat=31;
	movlw	low(01Fh)
	movwf	(scroll@endat)
	movlw	high(01Fh)
	movwf	((scroll@endat))+1
	goto	l2958
	line	440
;lcd1.c: 440: START:
	
l789:	
	line	441
	
l2958:	
;lcd1.c: 441: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	442
;lcd1.c: 442: while(i++<32)
	goto	l2964
	
l791:	
	line	445
	
l2960:	
;lcd1.c: 443: {
;lcd1.c: 445: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	446
	
l2962:	
;lcd1.c: 446: cmd(0x1E);
	movlw	low(01Eh)
	movwf	(?_cmd)
	movlw	high(01Eh)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l2964
	line	449
	
l790:	
	line	442
	
l2964:	
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
	goto	u3835
	movlw	low(021h)
	subwf	((scroll@i)),w
u3835:

	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l2960
u3830:
	goto	l2966
	
l792:	
	line	451
	
l2966:	
;lcd1.c: 449: }
;lcd1.c: 451: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	452
;lcd1.c: 452: while(i++<32)
	goto	l2972
	
l794:	
	line	455
	
l2968:	
;lcd1.c: 453: {
;lcd1.c: 455: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	456
	
l2970:	
;lcd1.c: 456: cmd(0x18);
	movlw	low(018h)
	movwf	(?_cmd)
	movlw	high(018h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l2972
	line	459
	
l793:	
	line	452
	
l2972:	
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
	goto	u3845
	movlw	low(021h)
	subwf	((scroll@i)),w
u3845:

	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l2968
u3840:
	goto	l2974
	
l795:	
	line	460
	
l2974:	
;lcd1.c: 459: }
;lcd1.c: 460: if(loopn++<loops)
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
	goto	u3855
	movf	(scroll@loops),w
	subwf	0+(??_scroll+0)+0,w
u3855:

	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l797
u3850:
	goto	l2958
	line	461
	
l2976:	
;lcd1.c: 461: goto START;
	goto	l2958
	
l796:	
	goto	l797
	line	462
	
l788:	
	line	467
	
l797:	
	return
	opt stack 0
GLOBAL	__end_of_scroll
	__end_of_scroll:
;; =============== function _scroll ends ============

	signat	_scroll,8312
	global	_write
psect	text442,local,class=CODE,delta=2
global __ptext442
__ptext442:

;; *************** function _write *****************
;; Defined at:
;;		line 399 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
;; Parameters:    Size  Location     Type
;;  str             2   34[BANK0 ] PTR unsigned char 
;;		 -> STR_13(5), STR_10(5), STR_7(5), STR_4(5), 
;;		 -> getlogicseq@str(32), STR_1(38), getlogicseq@logic_d4(5), getlogicseq@logic_d3(5), 
;;		 -> getlogicseq@logic_d2(5), getlogicseq@logic_d1(5), 
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
psect	text442
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	399
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 2
; Regs used in _write: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	400
	
l2920:	
;lcd1.c: 400: if(erase==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@erase),w
	iorwf	(write@erase+1),w
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l2924
u3780:
	line	401
	
l2922:	
;lcd1.c: 401: clearlcd();
	fcall	_clearlcd
	goto	l2924
	
l776:	
	line	403
	
l2924:	
;lcd1.c: 403: if(line==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@line),w
	iorwf	(write@line+1),w
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l2928
u3790:
	line	404
	
l2926:	
;lcd1.c: 404: cmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_cmd)
	movlw	high(0C0h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l2930
	line	405
	
l777:	
	line	406
	
l2928:	
;lcd1.c: 405: else
;lcd1.c: 406: cmd(0x2);
	movlw	low(02h)
	movwf	(?_cmd)
	movlw	high(02h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l2930
	
l778:	
	line	408
	
l2930:	
;lcd1.c: 408: int i=0;
	clrf	(write@i)
	clrf	(write@i+1)
	line	409
;lcd1.c: 409: while(str[i]!='\0')
	goto	l2936
	
l780:	
	line	411
	
l2932:	
;lcd1.c: 410: {
;lcd1.c: 411: dat(str[i]);
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
	line	412
	
l2934:	
;lcd1.c: 412: i++;
	movlw	low(01h)
	addwf	(write@i),f
	skipnc
	incf	(write@i+1),f
	movlw	high(01h)
	addwf	(write@i+1),f
	goto	l2936
	line	413
	
l779:	
	line	409
	
l2936:	
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
	goto	u3801
	goto	u3800
u3801:
	goto	l2932
u3800:
	goto	l782
	
l781:	
	line	416
	
l782:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,12408
	global	_clearlcd
psect	text443,local,class=CODE,delta=2
global __ptext443
__ptext443:

;; *************** function _clearlcd *****************
;; Defined at:
;;		line 342 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text443
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	342
	global	__size_of_clearlcd
	__size_of_clearlcd	equ	__end_of_clearlcd-_clearlcd
	
_clearlcd:	
	opt	stack 2
; Regs used in _clearlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	343
	
l2918:	
;lcd1.c: 343: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	344
	
l760:	
	return
	opt stack 0
GLOBAL	__end_of_clearlcd
	__end_of_clearlcd:
;; =============== function _clearlcd ends ============

	signat	_clearlcd,88
	global	_scan
psect	text444,local,class=CODE,delta=2
global __ptext444
__ptext444:

;; *************** function _scan *****************
;; Defined at:
;;		line 481 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text444
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	481
	global	__size_of_scan
	__size_of_scan	equ	__end_of_scan-_scan
	
_scan:	
	opt	stack 4
; Regs used in _scan: [wreg+status,2+status,0+pclath+cstack]
	line	482
	
l2810:	
;lcd1.c: 482: actrow(1) ;
	movlw	low(01h)
	movwf	(?_actrow)
	movlw	high(01h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	483
	
l2812:	
;lcd1.c: 483: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l803
u3620:
	line	484
	
l2814:	
;lcd1.c: 484: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l804
	
l2816:	
	goto	l804
	
l2818:	
	goto	l2836
	line	485
	
l803:	
;lcd1.c: 485: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l806
u3630:
	line	486
	
l2820:	
;lcd1.c: 486: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l804
	
l2822:	
	goto	l804
	
l2824:	
	goto	l2836
	line	487
	
l806:	
;lcd1.c: 487: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l808
u3640:
	line	488
	
l2826:	
;lcd1.c: 488: return 3;
	movlw	low(03h)
	movwf	(?_scan)
	movlw	high(03h)
	movwf	((?_scan))+1
	goto	l804
	
l2828:	
	goto	l804
	
l2830:	
	goto	l2836
	line	489
	
l808:	
;lcd1.c: 489: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l2836
u3650:
	line	490
	
l2832:	
;lcd1.c: 490: return 4;
	movlw	low(04h)
	movwf	(?_scan)
	movlw	high(04h)
	movwf	((?_scan))+1
	goto	l804
	
l2834:	
	goto	l804
	
l810:	
	goto	l2836
	line	492
	
l809:	
	goto	l2836
	
l807:	
	goto	l2836
	
l805:	
	
l2836:	
;lcd1.c: 492: actrow(2) ;
	movlw	low(02h)
	movwf	(?_actrow)
	movlw	high(02h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	494
	
l2838:	
;lcd1.c: 494: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l811
u3660:
	line	495
	
l2840:	
;lcd1.c: 495: return 5;
	movlw	low(05h)
	movwf	(?_scan)
	movlw	high(05h)
	movwf	((?_scan))+1
	goto	l804
	
l2842:	
	goto	l804
	
l2844:	
	goto	l2862
	line	496
	
l811:	
;lcd1.c: 496: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l813
u3670:
	line	497
	
l2846:	
;lcd1.c: 497: return 6;
	movlw	low(06h)
	movwf	(?_scan)
	movlw	high(06h)
	movwf	((?_scan))+1
	goto	l804
	
l2848:	
	goto	l804
	
l2850:	
	goto	l2862
	line	498
	
l813:	
;lcd1.c: 498: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l815
u3680:
	line	499
	
l2852:	
;lcd1.c: 499: return 7;
	movlw	low(07h)
	movwf	(?_scan)
	movlw	high(07h)
	movwf	((?_scan))+1
	goto	l804
	
l2854:	
	goto	l804
	
l2856:	
	goto	l2862
	line	500
	
l815:	
;lcd1.c: 500: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l2862
u3690:
	line	501
	
l2858:	
;lcd1.c: 501: return 8;
	movlw	low(08h)
	movwf	(?_scan)
	movlw	high(08h)
	movwf	((?_scan))+1
	goto	l804
	
l2860:	
	goto	l804
	
l817:	
	goto	l2862
	line	503
	
l816:	
	goto	l2862
	
l814:	
	goto	l2862
	
l812:	
	
l2862:	
;lcd1.c: 503: actrow(3) ;
	movlw	low(03h)
	movwf	(?_actrow)
	movlw	high(03h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	505
	
l2864:	
;lcd1.c: 505: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l818
u3700:
	line	506
	
l2866:	
;lcd1.c: 506: return 9;
	movlw	low(09h)
	movwf	(?_scan)
	movlw	high(09h)
	movwf	((?_scan))+1
	goto	l804
	
l2868:	
	goto	l804
	
l2870:	
	goto	l2888
	line	507
	
l818:	
;lcd1.c: 507: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u3711
	goto	u3710
u3711:
	goto	l820
u3710:
	line	508
	
l2872:	
;lcd1.c: 508: return 10;
	movlw	low(0Ah)
	movwf	(?_scan)
	movlw	high(0Ah)
	movwf	((?_scan))+1
	goto	l804
	
l2874:	
	goto	l804
	
l2876:	
	goto	l2888
	line	509
	
l820:	
;lcd1.c: 509: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l822
u3720:
	line	510
	
l2878:	
;lcd1.c: 510: return 11;
	movlw	low(0Bh)
	movwf	(?_scan)
	movlw	high(0Bh)
	movwf	((?_scan))+1
	goto	l804
	
l2880:	
	goto	l804
	
l2882:	
	goto	l2888
	line	511
	
l822:	
;lcd1.c: 511: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l2888
u3730:
	line	512
	
l2884:	
;lcd1.c: 512: return 12;
	movlw	low(0Ch)
	movwf	(?_scan)
	movlw	high(0Ch)
	movwf	((?_scan))+1
	goto	l804
	
l2886:	
	goto	l804
	
l824:	
	goto	l2888
	line	515
	
l823:	
	goto	l2888
	
l821:	
	goto	l2888
	
l819:	
	
l2888:	
;lcd1.c: 515: actrow(4) ;
	movlw	low(04h)
	movwf	(?_actrow)
	movlw	high(04h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	517
	
l2890:	
;lcd1.c: 517: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u3741
	goto	u3740
u3741:
	goto	l825
u3740:
	line	518
	
l2892:	
;lcd1.c: 518: return 13;
	movlw	low(0Dh)
	movwf	(?_scan)
	movlw	high(0Dh)
	movwf	((?_scan))+1
	goto	l804
	
l2894:	
	goto	l804
	
l2896:	
	goto	l2914
	line	519
	
l825:	
;lcd1.c: 519: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l827
u3750:
	line	520
	
l2898:	
;lcd1.c: 520: return 14;
	movlw	low(0Eh)
	movwf	(?_scan)
	movlw	high(0Eh)
	movwf	((?_scan))+1
	goto	l804
	
l2900:	
	goto	l804
	
l2902:	
	goto	l2914
	line	521
	
l827:	
;lcd1.c: 521: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l829
u3760:
	line	522
	
l2904:	
;lcd1.c: 522: return 15;
	movlw	low(0Fh)
	movwf	(?_scan)
	movlw	high(0Fh)
	movwf	((?_scan))+1
	goto	l804
	
l2906:	
	goto	l804
	
l2908:	
	goto	l2914
	line	523
	
l829:	
;lcd1.c: 523: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l2914
u3770:
	line	524
	
l2910:	
;lcd1.c: 524: return 16;
	movlw	low(010h)
	movwf	(?_scan)
	movlw	high(010h)
	movwf	((?_scan))+1
	goto	l804
	
l2912:	
	goto	l804
	
l831:	
	goto	l2914
	line	528
	
l830:	
	goto	l2914
	
l828:	
	goto	l2914
	
l826:	
	
l2914:	
;lcd1.c: 528: return 99;
	movlw	low(063h)
	movwf	(?_scan)
	movlw	high(063h)
	movwf	((?_scan))+1
	goto	l804
	
l2916:	
	line	532
	
l804:	
	return
	opt stack 0
GLOBAL	__end_of_scan
	__end_of_scan:
;; =============== function _scan ends ============

	signat	_scan,90
	global	_initlcd
psect	text445,local,class=CODE,delta=2
global __ptext445
__ptext445:

;; *************** function _initlcd *****************
;; Defined at:
;;		line 324 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text445
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	324
	global	__size_of_initlcd
	__size_of_initlcd	equ	__end_of_initlcd-_initlcd
	
_initlcd:	
	opt	stack 4
; Regs used in _initlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	326
	
l2796:	
;lcd1.c: 326: TRISC=0b00001100;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	328
	
l2798:	
;lcd1.c: 328: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	330
	
l2800:	
;lcd1.c: 330: cmd(0x38);
	movlw	low(038h)
	movwf	(?_cmd)
	movlw	high(038h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	332
	
l2802:	
;lcd1.c: 332: cmd(0x0C);
	movlw	low(0Ch)
	movwf	(?_cmd)
	movlw	high(0Ch)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	334
	
l2804:	
;lcd1.c: 334: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	336
	
l2806:	
;lcd1.c: 336: cmd(0x80);
	movlw	low(080h)
	movwf	(?_cmd)
	movlw	high(080h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	338
	
l2808:	
;lcd1.c: 338: cmd(0x0f);
	movlw	low(0Fh)
	movwf	(?_cmd)
	movlw	high(0Fh)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	340
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_initlcd
	__end_of_initlcd:
;; =============== function _initlcd ends ============

	signat	_initlcd,88
	global	_actrow
psect	text446,local,class=CODE,delta=2
global __ptext446
__ptext446:

;; *************** function _actrow *****************
;; Defined at:
;;		line 540 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text446
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	540
	global	__size_of_actrow
	__size_of_actrow	equ	__end_of_actrow-_actrow
	
_actrow:	
	opt	stack 4
; Regs used in _actrow: [wreg+status,2+status,0+pclath+cstack]
	line	541
	
l2776:	
;lcd1.c: 541: resetout();
	fcall	_resetout
	line	543
	
l2778:	
;lcd1.c: 543: if(n==1)
	movlw	01h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l2782
u3580:
	line	545
	
l2780:	
;lcd1.c: 544: {
;lcd1.c: 545: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	546
;lcd1.c: 546: }
	goto	l2794
	line	547
	
l837:	
	
l2782:	
;lcd1.c: 547: else if(n==2)
	movlw	02h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l2786
u3590:
	line	549
	
l2784:	
;lcd1.c: 548: {
;lcd1.c: 549: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	550
;lcd1.c: 550: }
	goto	l2794
	line	551
	
l839:	
	
l2786:	
;lcd1.c: 551: else if(n==3)
	movlw	03h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l2790
u3600:
	line	553
	
l2788:	
;lcd1.c: 552: {
;lcd1.c: 553: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	554
;lcd1.c: 554: }
	goto	l2794
	line	555
	
l841:	
	
l2790:	
;lcd1.c: 555: else if(n==4)
	movlw	04h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l2794
u3610:
	line	557
	
l2792:	
;lcd1.c: 556: {
;lcd1.c: 557: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	goto	l2794
	line	558
	
l843:	
	goto	l2794
	line	559
	
l842:	
	goto	l2794
	
l840:	
	goto	l2794
	
l838:	
	
l2794:	
;lcd1.c: 558: }
;lcd1.c: 559: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	562
	
l844:	
	return
	opt stack 0
GLOBAL	__end_of_actrow
	__end_of_actrow:
;; =============== function _actrow ends ============

	signat	_actrow,4216
	global	_dat
psect	text447,local,class=CODE,delta=2
global __ptext447
__ptext447:

;; *************** function _dat *****************
;; Defined at:
;;		line 357 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text447
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	357
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 3
; Regs used in _dat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	358
	
l2764:	
;lcd1.c: 358: setLCD(Command);
	movf	(dat@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(dat@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	360
	
l2766:	
;lcd1.c: 360: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	362
	
l2768:	
;lcd1.c: 362: RC1=1;
	bsf	(57/8),(57)&7
	line	364
	
l2770:	
;lcd1.c: 364: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	366
	
l2772:	
;lcd1.c: 366: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	368
	
l2774:	
;lcd1.c: 368: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	374
	
l766:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text448,local,class=CODE,delta=2
global __ptext448
__ptext448:

;; *************** function _cmd *****************
;; Defined at:
;;		line 346 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text448
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	346
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 3
; Regs used in _cmd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	347
	
l2752:	
;lcd1.c: 347: setLCD(Command);
	movf	(cmd@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(cmd@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	348
	
l2754:	
;lcd1.c: 348: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	349
	
l2756:	
;lcd1.c: 349: RC1=1;
	bsf	(57/8),(57)&7
	line	350
	
l2758:	
;lcd1.c: 350: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	351
	
l2760:	
;lcd1.c: 351: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	352
	
l2762:	
;lcd1.c: 352: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	354
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_itoaa
psect	text449,local,class=CODE,delta=2
global __ptext449
__ptext449:

;; *************** function _itoaa *****************
;; Defined at:
;;		line 297 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text449
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	297
	global	__size_of_itoaa
	__size_of_itoaa	equ	__end_of_itoaa-_itoaa
	
_itoaa:	
	opt	stack 5
; Regs used in _itoaa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	298
	
l2704:	
;lcd1.c: 298: int count=0,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@count)
	clrf	(itoaa@count+1)
	line	299
	
l2706:	
;lcd1.c: 299: if(ptr==(0))
	movf	(itoaa@ptr),f
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l2710
u3510:
	goto	l748
	line	300
	
l2708:	
;lcd1.c: 300: return 0;
;	Return value of _itoaa is never used
	goto	l748
	
l747:	
	line	301
	
l2710:	
;lcd1.c: 301: if(value==0)
	movf	((itoaa@value+1)),w
	iorwf	((itoaa@value)),w
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l749
u3520:
	line	303
	
l2712:	
;lcd1.c: 302: {
;lcd1.c: 303: *ptr='0';
	movlw	(030h)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l748
	line	304
	
l2714:	
;lcd1.c: 304: return 1;
;	Return value of _itoaa is never used
	goto	l748
	line	305
	
l749:	
	line	307
;lcd1.c: 305: }
;lcd1.c: 307: if(value<0)
	btfss	(itoaa@value+1),7
	goto	u3531
	goto	u3530
u3531:
	goto	l2724
u3530:
	line	309
	
l2716:	
;lcd1.c: 308: {
;lcd1.c: 309: value*=(-1);
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

	line	310
	
l2718:	
;lcd1.c: 310: *ptr++='-';
	movlw	(02Dh)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2720:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	line	311
	
l2722:	
;lcd1.c: 311: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	goto	l2724
	line	312
	
l750:	
	line	313
	
l2724:	
;lcd1.c: 312: }
;lcd1.c: 313: for(temp=value;temp>0;temp/=10,ptr++);
	movf	(itoaa@value+1),w
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l2726:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3545
	movlw	low(01h)
	subwf	(itoaa@temp),w
u3545:

	skipnc
	goto	u3541
	goto	u3540
u3541:
	goto	l2730
u3540:
	goto	l2736
	
l2728:	
	goto	l2736
	
l751:	
	
l2730:	
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

	
l2732:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	
l2734:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3555
	movlw	low(01h)
	subwf	(itoaa@temp),w
u3555:

	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l2730
u3550:
	goto	l2736
	
l752:	
	line	314
	
l2736:	
;lcd1.c: 314: *ptr='\0';
	movf	(itoaa@ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	315
	
l2738:	
;lcd1.c: 315: for(temp=value;temp>0;temp/=10)
	movf	(itoaa@value+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l2740:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3565
	movlw	low(01h)
	subwf	(itoaa@temp),w
u3565:

	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l2744
u3560:
	goto	l748
	
l2742:	
	goto	l748
	line	316
	
l753:	
	line	317
	
l2744:	
;lcd1.c: 316: {
;lcd1.c: 317: *--ptr=temp%10+'0';
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
	line	318
	
l2746:	
;lcd1.c: 318: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	line	315
	
l2748:	
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

	
l2750:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3575
	movlw	low(01h)
	subwf	(itoaa@temp),w
u3575:

	skipnc
	goto	u3571
	goto	u3570
u3571:
	goto	l2744
u3570:
	goto	l748
	
l754:	
	line	321
;lcd1.c: 319: }
;lcd1.c: 320: return count;
;	Return value of _itoaa is never used
	
l748:	
	return
	opt stack 0
GLOBAL	__end_of_itoaa
	__end_of_itoaa:
;; =============== function _itoaa ends ============

	signat	_itoaa,8314
	global	___awmod
psect	text450,local,class=CODE,delta=2
global __ptext450
__ptext450:

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
psect	text450
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2670:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3421
	goto	u3420
u3421:
	goto	l2674
u3420:
	line	10
	
l2672:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2674
	line	12
	
l1076:	
	line	13
	
l2674:	
	btfss	(___awmod@divisor+1),7
	goto	u3431
	goto	u3430
u3431:
	goto	l2678
u3430:
	line	14
	
l2676:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2678
	
l1077:	
	line	15
	
l2678:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3441
	goto	u3440
u3441:
	goto	l2696
u3440:
	line	16
	
l2680:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2686
	
l1080:	
	line	18
	
l2682:	
	movlw	01h
	
u3455:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3455
	line	19
	
l2684:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2686
	line	20
	
l1079:	
	line	17
	
l2686:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l2682
u3460:
	goto	l2688
	
l1081:	
	goto	l2688
	line	21
	
l1082:	
	line	22
	
l2688:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3475
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3475:
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l2692
u3470:
	line	23
	
l2690:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2692
	
l1083:	
	line	24
	
l2692:	
	movlw	01h
	
u3485:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3485
	line	25
	
l2694:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l2688
u3490:
	goto	l2696
	
l1084:	
	goto	l2696
	line	26
	
l1078:	
	line	27
	
l2696:	
	movf	(___awmod@sign),w
	skipz
	goto	u3500
	goto	l2700
u3500:
	line	28
	
l2698:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2700
	
l1085:	
	line	29
	
l2700:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1086
	
l2702:	
	line	30
	
l1086:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text451,local,class=CODE,delta=2
global __ptext451
__ptext451:

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
psect	text451
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2630:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3321
	goto	u3320
u3321:
	goto	l2634
u3320:
	line	11
	
l2632:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2634
	line	13
	
l1008:	
	line	14
	
l2634:	
	btfss	(___awdiv@dividend+1),7
	goto	u3331
	goto	u3330
u3331:
	goto	l2640
u3330:
	line	15
	
l2636:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2638:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2640
	line	17
	
l1009:	
	line	18
	
l2640:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2642:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3341
	goto	u3340
u3341:
	goto	l2662
u3340:
	line	20
	
l2644:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2650
	
l1012:	
	line	22
	
l2646:	
	movlw	01h
	
u3355:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3355
	line	23
	
l2648:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2650
	line	24
	
l1011:	
	line	21
	
l2650:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l2646
u3360:
	goto	l2652
	
l1013:	
	goto	l2652
	line	25
	
l1014:	
	line	26
	
l2652:	
	movlw	01h
	
u3375:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3375
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3385
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3385:
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l2658
u3380:
	line	28
	
l2654:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2656:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2658
	line	30
	
l1015:	
	line	31
	
l2658:	
	movlw	01h
	
u3395:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3395
	line	32
	
l2660:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l2652
u3400:
	goto	l2662
	
l1016:	
	goto	l2662
	line	33
	
l1010:	
	line	34
	
l2662:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3410
	goto	l2666
u3410:
	line	35
	
l2664:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2666
	
l1017:	
	line	36
	
l2666:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1018
	
l2668:	
	line	37
	
l1018:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text452,local,class=CODE,delta=2
global __ptext452
__ptext452:

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
psect	text452
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2618:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2620
	line	6
	
l868:	
	line	7
	
l2620:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l869
u3280:
	line	8
	
l2622:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l869:	
	line	9
	movlw	01h
	
u3295:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3295
	line	10
	
l2624:	
	movlw	01h
	
u3305:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3305
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l2620
u3310:
	goto	l2626
	
l870:	
	line	12
	
l2626:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l871
	
l2628:	
	line	13
	
l871:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_resetout
psect	text453,local,class=CODE,delta=2
global __ptext453
__ptext453:

;; *************** function _resetout *****************
;; Defined at:
;;		line 536 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text453
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	536
	global	__size_of_resetout
	__size_of_resetout	equ	__end_of_resetout-_resetout
	
_resetout:	
	opt	stack 4
; Regs used in _resetout: []
	line	537
	
l2616:	
;lcd1.c: 537: RC2=0;RC3=0;RB6=0;RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(54/8),(54)&7
	bcf	(55/8),(55)&7
	line	538
	
l834:	
	return
	opt stack 0
GLOBAL	__end_of_resetout
	__end_of_resetout:
;; =============== function _resetout ends ============

	signat	_resetout,88
	global	_setLCD
psect	text454,local,class=CODE,delta=2
global __ptext454
__ptext454:

;; *************** function _setLCD *****************
;; Defined at:
;;		line 376 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text454
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	376
	global	__size_of_setLCD
	__size_of_setLCD	equ	__end_of_setLCD-_setLCD
	
_setLCD:	
	opt	stack 3
; Regs used in _setLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	381
	
l2602:	
;lcd1.c: 377: const int size=8*sizeof(int);
;lcd1.c: 378: int vbool[8*sizeof(int)];
;lcd1.c: 379: int i;;
;lcd1.c: 381: for (i = 0; i <size; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLCD@i)
	clrf	(setLCD@i+1)
	
l2604:	
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
	goto	u3095
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3095:

	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l2608
u3090:
	goto	l2614
	
l2606:	
	goto	l2614
	line	382
	
l771:	
	line	383
	
l2608:	
;lcd1.c: 382: {
;lcd1.c: 383: vbool[i] = number<<i < 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(setLCD@i),w
	movwf	(??_setLCD+0)+0
	movf	(setLCD@number+1),w
	movwf	(??_setLCD+1)+0+1
	movf	(setLCD@number),w
	movwf	(??_setLCD+1)+0
	goto	u3104
u3105:
	clrc
	rlf	(??_setLCD+1)+0,f
	rlf	(??_setLCD+1)+1,f
u3104:
	decfsz	(??_setLCD+0)+0,f
	goto	u3105
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
	line	381
	
l2610:	
	movlw	low(01h)
	addwf	(setLCD@i),f
	skipnc
	incf	(setLCD@i+1),f
	movlw	high(01h)
	addwf	(setLCD@i+1),f
	
l2612:	
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
	goto	u3115
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3115:

	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l2608
u3110:
	goto	l2614
	
l772:	
	line	386
	
l2614:	
;lcd1.c: 384: }
;lcd1.c: 386: RD0=vbool[size-1];
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
	goto	u3121
	goto	u3120
	
u3121:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u3134
u3120:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u3134:
	line	387
;lcd1.c: 387: RD1=vbool[size-2];
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
	goto	u3141
	goto	u3140
	
u3141:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u3154
u3140:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u3154:
	line	388
;lcd1.c: 388: RD2=vbool[size-3];
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
	goto	u3161
	goto	u3160
	
u3161:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	goto	u3174
u3160:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
u3174:
	line	389
;lcd1.c: 389: RD3=vbool[size-4];
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
	goto	u3181
	goto	u3180
	
u3181:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	goto	u3194
u3180:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
u3194:
	line	390
;lcd1.c: 390: RD4=vbool[size-5];
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
	goto	u3201
	goto	u3200
	
u3201:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3214
u3200:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3214:
	line	391
;lcd1.c: 391: RD5=vbool[size-6];
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
	goto	u3221
	goto	u3220
	
u3221:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3234
u3220:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3234:
	line	392
;lcd1.c: 392: RD6=vbool[size-7];
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
	goto	u3241
	goto	u3240
	
u3241:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3254
u3240:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3254:
	line	393
;lcd1.c: 393: RD7=vbool[size-8];
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
	goto	u3261
	goto	u3260
	
u3261:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3274
u3260:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3274:
	line	397
	
l773:	
	return
	opt stack 0
GLOBAL	__end_of_setLCD
	__end_of_setLCD:
;; =============== function _setLCD ends ============

	signat	_setLCD,4216
	global	_delay
psect	text455,local,class=CODE,delta=2
global __ptext455
__ptext455:

;; *************** function _delay *****************
;; Defined at:
;;		line 291 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text455
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	291
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 4
; Regs used in _delay: [wreg]
	line	292
	
l2598:	
;lcd1.c: 292: while(x-->0);
	goto	l2600
	
l742:	
	goto	l2600
	
l741:	
	
l2600:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u3085
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u3085:

	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l2600
u3080:
	goto	l744
	
l743:	
	line	293
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_strcat
psect	text456,local,class=CODE,delta=2
global __ptext456
__ptext456:

;; *************** function _strcat *****************
;; Defined at:
;;		line 10 in file "../../common/strcat.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> getlogicseq@logic_d4(5), getlogicseq@logic_d3(5), getlogicseq@logic_d2(5), getlogicseq@logic_d1(5), 
;;  from            1    0[COMMON] PTR const unsigned char 
;;		 -> getlogicseq@snum(16), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[COMMON] PTR unsigned char 
;;		 -> getlogicseq@logic_d4(5), getlogicseq@logic_d3(5), getlogicseq@logic_d2(5), getlogicseq@logic_d1(5), 
;;  cp              1    3[COMMON] PTR unsigned char 
;;		 -> getlogicseq@logic_d4(5), getlogicseq@logic_d3(5), getlogicseq@logic_d2(5), getlogicseq@logic_d1(5), 
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
psect	text456
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
	
l2590:	
	movf	(strcat@to),w
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	movwf	(strcat@cp)
	line	19
	goto	l2594
	
l848:	
	line	20
	
l2592:	
	movlw	(01h)
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	addwf	(strcat@cp),f
	goto	l2594
	
l847:	
	line	19
	
l2594:	
	movf	(strcat@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l2592
u3060:
	goto	l2596
	
l849:	
	line	21
	goto	l2596
	
l851:	
	line	22
	goto	l2596
	
l850:	
	line	21
	
l2596:	
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
	goto	u3071
	goto	u3070
u3071:
	goto	l2596
u3070:
	goto	l853
	
l852:	
	line	24
;	Return value of _strcat is never used
	
l853:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
;; =============== function _strcat ends ============

	signat	_strcat,8313
	global	_strcpy
psect	text457,local,class=CODE,delta=2
global __ptext457
__ptext457:

;; *************** function _strcpy *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> getlogicseq@str(32), getlogicseq@logic_d4(5), getlogicseq@logic_d3(5), getlogicseq@logic_d2(5), 
;;		 -> getlogicseq@logic_d1(5), 
;;  from            1    0[COMMON] PTR const unsigned char 
;;		 -> STR_12(1), STR_11(20), STR_9(1), STR_8(20), 
;;		 -> STR_6(1), STR_5(20), STR_3(1), STR_2(20), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), getlogicseq@logic_d4(5), getlogicseq@logic_d3(5), getlogicseq@logic_d2(5), 
;;		 -> getlogicseq@logic_d1(5), 
;;  cp              1    3[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), getlogicseq@logic_d4(5), getlogicseq@logic_d3(5), getlogicseq@logic_d2(5), 
;;		 -> getlogicseq@logic_d1(5), 
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
psect	text457
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
	
l2586:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l2588
	
l857:	
	line	20
	goto	l2588
	
l856:	
	line	19
	
l2588:	
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
	goto	u3051
	goto	u3050
u3051:
	goto	l2588
u3050:
	goto	l859
	
l858:	
	line	22
;	Return value of _strcpy is never used
	
l859:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_initkeypad
psect	text458,local,class=CODE,delta=2
global __ptext458
__ptext458:

;; *************** function _initkeypad *****************
;; Defined at:
;;		line 474 in file "C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
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
psect	text458
	file	"C:\PIC\PROJECTS\Training_Project\Code\LCD\lcd1.c"
	line	474
	global	__size_of_initkeypad
	__size_of_initkeypad	equ	__end_of_initkeypad-_initkeypad
	
_initkeypad:	
	opt	stack 7
; Regs used in _initkeypad: [wreg+status,2]
	line	475
	
l1288:	
;lcd1.c: 475: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	476
	
l1290:	
;lcd1.c: 476: TRISB = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	478
	
l800:	
	return
	opt stack 0
GLOBAL	__end_of_initkeypad
	__end_of_initkeypad:
;; =============== function _initkeypad ends ============

	signat	_initkeypad,88
psect	text459,local,class=CODE,delta=2
global __ptext459
__ptext459:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
