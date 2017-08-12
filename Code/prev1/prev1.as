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
	FNCALL	_main,_initlcd
	FNCALL	_main,_initkeypad
	FNCALL	_main,_getlogicseq
	FNCALL	_getlogicseq,_scroll
	FNCALL	_getlogicseq,_write
	FNCALL	_getlogicseq,_scan
	FNCALL	_getlogicseq,_buzz
	FNCALL	_getlogicseq,_startswitch
	FNCALL	_getlogicseq,_delay
	FNCALL	_getlogicseq,_strcpy
	FNCALL	_getlogicseq,_itoaa
	FNCALL	_getlogicseq,_strcat
	FNCALL	_startswitch,_init_fun
	FNCALL	_startswitch,_strcpy
	FNCALL	_startswitch,_write
	FNCALL	_startswitch,_strcmp
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
	global	_logic_d3
	global	_plo
	global	_logic_d1
	global	_logic_d2
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	138

;initializer for _logic_d4
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	line	139

;initializer for _lo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
psect	idataBANK3
	line	137

;initializer for _logic_d3
	retlw	030h
	retlw	031h
	retlw	030h
	retlw	0
	retlw	0
	line	140

;initializer for _plo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	135

;initializer for _logic_d1
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	line	136

;initializer for _logic_d2
	retlw	030h
	retlw	031h
	retlw	030h
	retlw	0
	retlw	0
	global	_adr
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
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
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	15
_adr:
	retlw	0
	retlw	04h
	retlw	08h
	retlw	0Ch
	retlw	0Fh
	global	setLCD@size
psect	stringtext
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	599
setLCD@size:
	retlw	010h
	retlw	0

	global	_adr
	global	setLCD@size
	global	_dev
	global	_done_init
	global	_pdev
	global	read_log@F1911
	global	getlogicseq@F1868
	global	_f1
	global	_f2
	global	_f3
	global	_retm
	global	_PORTB
_PORTB	set	6
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB5
_RB5	set	53
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
	global	_EEADR
_EEADR	set	269
	global	_EEDAT
_EEDAT	set	268
	global	_ANSEL
_ANSEL	set	392
	global	_EECON2
_EECON2	set	397
	global	_EEPGD
_EEPGD	set	3175
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	global	_WRERR
_WRERR	set	3171
	
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
psect	stringtext
	
STR_7:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	107	;'k'
	retlw	105	;'i'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	0
psect	stringtext
	
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
	retlw	49	;'1'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
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
	retlw	50	;'2'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
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
	retlw	51	;'3'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	71	;'G'
	retlw	0
psect	stringtext
	
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
psect	stringtext
	
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
psect	stringtext
	
STR_6:	
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_29:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_27:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_31:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_26:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_30:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_28:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_24:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_32:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	0
psect	stringtext
STR_2	equ	STR_17+1
STR_13	equ	STR_10+0
STR_16	equ	STR_10+0
STR_9	equ	STR_8+19
STR_12	equ	STR_8+19
STR_15	equ	STR_8+19
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

read_log@F1911:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	139
_lo:
       ds      5

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_f1:
       ds      2

_f2:
       ds      2

_f3:
       ds      2

_retm:
       ds      2

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	135
_logic_d1:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	136
_logic_d2:
       ds      5

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
getlogicseq@F1868:
       ds      16

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	138
_logic_d4:
       ds      5

psect	dataBANK3
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	137
_logic_d3:
       ds      5

psect	dataBANK3
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	140
_plo:
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
	clrf	((__pbssBANK0)+6)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+08h)
	fcall	clear_ram
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
	movlw low(__pdataBANK3+15)
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
	movlw low(__pdataBANK1+10)
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
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_setLCD
?_setLCD:	; 0 bytes @ 0x0
	global	?_buzz
?_buzz:	; 0 bytes @ 0x0
	global	?_init_fun
?_init_fun:	; 0 bytes @ 0x0
	global	?_startswitch
?_startswitch:	; 0 bytes @ 0x0
	global	?_clearlcd
?_clearlcd:	; 0 bytes @ 0x0
	global	?_resetout
?_resetout:	; 0 bytes @ 0x0
	global	??_resetout
??_resetout:	; 0 bytes @ 0x0
	global	?_strcpy
?_strcpy:	; 2 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	?_strcat
?_strcat:	; 2 bytes @ 0x0
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
	global	buzz@val
buzz@val:	; 2 bytes @ 0x0
	global	check@logic
check@logic:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	setLCD@number
setLCD@number:	; 2 bytes @ 0x0
	global	strcat@to
strcat@to:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 2 bytes @ 0x0
	global	strcpy@to
strcpy@to:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_setLCD
??_setLCD:	; 0 bytes @ 0x2
	global	?_actrow
?_actrow:	; 0 bytes @ 0x2
	global	??_buzz
??_buzz:	; 0 bytes @ 0x2
	global	??_check
??_check:	; 0 bytes @ 0x2
	global	strcat@from
strcat@from:	; 1 bytes @ 0x2
	global	actrow@n
actrow@n:	; 2 bytes @ 0x2
	global	strcpy@from
strcpy@from:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_strcat
??_strcat:	; 0 bytes @ 0x3
	ds	1
	global	??_strcpy
??_strcpy:	; 0 bytes @ 0x4
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
	global	check@input
check@input:	; 1 bytes @ 0x5
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
	global	check@i
check@i:	; 2 bytes @ 0x6
	global	strcat@cp
strcat@cp:	; 2 bytes @ 0x6
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
	global	strcpy@cp
strcpy@cp:	; 2 bytes @ 0x9
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
	global	scroll@str
scroll@str:	; 2 bytes @ 0x28
	ds	2
	global	scroll@loops
scroll@loops:	; 2 bytes @ 0x2A
	ds	2
	global	??_scroll
??_scroll:	; 0 bytes @ 0x2C
	ds	3
	global	scroll@st
scroll@st:	; 2 bytes @ 0x2F
	ds	2
	global	scroll@en
scroll@en:	; 2 bytes @ 0x31
	ds	2
	global	scroll@startat
scroll@startat:	; 2 bytes @ 0x33
	ds	2
	global	scroll@endat
scroll@endat:	; 2 bytes @ 0x35
	ds	2
	global	scroll@loopn
scroll@loopn:	; 2 bytes @ 0x37
	ds	2
	global	scroll@len
scroll@len:	; 2 bytes @ 0x39
	ds	2
	global	scroll@i
scroll@i:	; 2 bytes @ 0x3B
	ds	2
	global	??_getlogicseq
??_getlogicseq:	; 0 bytes @ 0x3D
	ds	4
;;Data sizes: Strings 260, constant 7, data 30, bss 31, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     65      77
;; BANK1           80     58      76
;; BANK3           96      0      31
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_strcat	PTR unsigned char  size(2) Largest target is 5
;;		 -> logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; ?_itoaa	int  size(1) Largest target is 0
;;
;; ?_strcmp	int  size(1) Largest target is 0
;;
;; ?_strcpy	PTR unsigned char  size(2) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;		 -> lo(BANK0[5]), plo(BANK3[5]), 
;;
;; strcpy@from	PTR const unsigned char  size(2) Largest target is 20
;;		 -> STR_15(CODE[1]), STR_14(CODE[20]), STR_12(CODE[1]), STR_11(CODE[20]), 
;;		 -> STR_9(CODE[1]), STR_8(CODE[20]), STR_2(CODE[4]), lo(BANK0[5]), 
;;
;; strcpy@to	PTR unsigned char  size(2) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;		 -> lo(BANK0[5]), plo(BANK3[5]), 
;;
;; strcpy@cp	PTR unsigned char  size(2) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;		 -> lo(BANK0[5]), plo(BANK3[5]), 
;;
;; strcmp@s2	PTR const unsigned char  size(2) Largest target is 5
;;		 -> STR_32(CODE[5]), STR_31(CODE[5]), STR_30(CODE[5]), STR_29(CODE[5]), 
;;		 -> STR_28(CODE[5]), STR_27(CODE[5]), STR_26(CODE[5]), STR_25(CODE[5]), 
;;		 -> STR_24(CODE[5]), STR_23(CODE[5]), STR_22(CODE[5]), STR_21(CODE[5]), 
;;		 -> STR_20(CODE[5]), STR_19(CODE[5]), STR_18(CODE[5]), STR_17(CODE[5]), 
;;		 -> plo(BANK3[5]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 5
;;		 -> lo(BANK0[5]), 
;;
;; strcat@from	PTR const unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; strcat@to	PTR unsigned char  size(2) Largest target is 5
;;		 -> logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; strcat@cp	PTR unsigned char  size(2) Largest target is 5
;;		 -> logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; sp__read_log	PTR unsigned char  size(1) Largest target is 1
;;		 -> read_log@logic(COMMON[1]), 
;;
;; scroll@str	PTR unsigned char  size(2) Largest target is 38
;;		 -> STR_4(CODE[38]), 
;;
;; write@str	PTR unsigned char  size(2) Largest target is 38
;;		 -> STR_16(CODE[4]), STR_13(CODE[4]), STR_10(CODE[4]), getlogicseq@str(BANK1[32]), 
;;		 -> STR_7(CODE[27]), STR_6(CODE[8]), STR_5(CODE[15]), STR_4(CODE[38]), 
;;		 -> logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), STR_3(CODE[17]), 
;;		 -> lo(BANK0[5]), STR_1(CODE[11]), 
;;
;; itoaa@ptr	PTR unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK1[16]), 
;;
;; sp__strcat	PTR unsigned char  size(2) Largest target is 5
;;		 -> logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; sp__strcpy	PTR unsigned char  size(2) Largest target is 32
;;		 -> getlogicseq@str(BANK1[32]), logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;		 -> lo(BANK0[5]), plo(BANK3[5]), 
;;
;; check@logic	PTR unsigned char  size(2) Largest target is 5
;;		 -> logic_d3(BANK3[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
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
;; (0) _main                                                 0     0      0    8549
;;                            _initlcd
;;                         _initkeypad
;;                        _getlogicseq
;; ---------------------------------------------------------------------------------
;; (1) _getlogicseq                                         62    62      0    8185
;;                                             61 BANK0      4     4      0
;;                                              0 BANK1     58    58      0
;;                             _scroll
;;                              _write
;;                               _scan
;;                               _buzz
;;                        _startswitch
;;                              _delay
;;                             _strcpy
;;                              _itoaa
;;                             _strcat
;; ---------------------------------------------------------------------------------
;; (2) _startswitch                                          2     2      0    2749
;;                                             40 BANK0      2     2      0
;;                           _init_fun
;;                             _strcpy
;;                              _write
;;                             _strcmp
;;                              _check
;; ---------------------------------------------------------------------------------
;; (2) _scroll                                              53    49      4    1820
;;                                             40 BANK0     21    17      4
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
;; (2) _strcat                                               8     5      3      96
;;                                              0 COMMON     8     5      3
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (4) _strcmp                                               8     6      2      89
;;                                              0 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (3) _strcpy                                              11     7      4      73
;;                                              0 COMMON    11     7      4
;; ---------------------------------------------------------------------------------
;; (3) _check                                                8     6      2     135
;;                                              0 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (1) _initkeypad                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _buzz                                                 2     0      2      22
;;                                              0 COMMON     2     0      2
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
;;     _buzz
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
;;       _strcmp
;;       _check
;;     _delay
;;     _strcpy
;;     _itoaa
;;       ___wmul
;;       ___awdiv
;;       ___awmod
;;     _strcat
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      1F       9       32.3%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50     3A      4C       7       95.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      CE      12        0.0%
;;ABS                  0      0      C6       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       8       2        0.0%
;;BANK0               50     41      4D       5       96.3%
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
;;		line 99 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  1085[COMMON] int 
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
	line	99
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	103
	
l4021:	
;prev11.c: 103: TRISB = 0b00001111;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	105
	
l4023:	
;prev11.c: 105: initlcd();
	fcall	_initlcd
	line	106
	
l4025:	
;prev11.c: 106: initkeypad();
	fcall	_initkeypad
	goto	l4027
	line	117
;prev11.c: 117: while(1){
	
l1086:	
	line	119
	
l4027:	
;prev11.c: 119: getlogicseq();
	fcall	_getlogicseq
	goto	l4027
	line	120
	
l1087:	
	line	117
	goto	l4027
	
l1088:	
	line	126
	
l1089:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_getlogicseq
psect	text570,local,class=CODE,delta=2
global __ptext570
__ptext570:

;; *************** function _getlogicseq *****************
;; Defined at:
;;		line 224 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_scroll
;;		_write
;;		_scan
;;		_buzz
;;		_startswitch
;;		_delay
;;		_strcpy
;;		_itoaa
;;		_strcat
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text570
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	224
	global	__size_of_getlogicseq
	__size_of_getlogicseq	equ	__end_of_getlogicseq-_getlogicseq
	
_getlogicseq:	
	opt	stack 0
; Regs used in _getlogicseq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	227
	
l3825:	
;prev11.c: 227: scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
	movlw	low(STR_4|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scroll)
	movlw	high(STR_4|8000h)
	movwf	((?_scroll))+1
	movlw	low(0)
	movwf	0+(?_scroll)+02h
	movlw	high(0)
	movwf	(0+(?_scroll)+02h)+1
	fcall	_scroll
	line	232
	
l3827:	
;prev11.c: 231: int num ;
;prev11.c: 232: char snum[16]="";
	movlw	(getlogicseq@snum)&0ffh
	movwf	fsr0
	movlw	low(getlogicseq@F1868)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	fsr0,w
	movwf	((??_getlogicseq+0)+0+1)
	movlw	16
	movwf	((??_getlogicseq+0)+0+2)
u4670:
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
	goto	u4670
	line	233
	
l3829:	
;prev11.c: 233: int wf=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	line	234
	
l3831:	
;prev11.c: 234: int nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	line	235
	
l3833:	
;prev11.c: 235: int bf=0;
	clrf	(getlogicseq@bf)^080h
	clrf	(getlogicseq@bf+1)^080h
	line	236
	
l3835:	
;prev11.c: 236: int ccount=0;
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	240
	
l3837:	
;prev11.c: 237: char str[32];
;prev11.c: 240: write("1.SWT  2.REPRG",1,1);
	movlw	low(STR_5|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_5|8000h)
	movwf	((?_write))+1
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(01h)
	movwf	0+(?_write)+04h
	movlw	high(01h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	241
	
l3839:	
;prev11.c: 241: write("3.RESET",2,0);
	movlw	low(STR_6|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_6|8000h)
	movwf	((?_write))+1
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	goto	l3841
	line	242
;prev11.c: 242: while(1)
	
l1117:	
	line	244
	
l3841:	
;prev11.c: 243: {
;prev11.c: 244: if(retm==1)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_retm)^080h,w
	iorwf	(_retm+1)^080h,w
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l3847
u4680:
	line	247
	
l3843:	
;prev11.c: 245: {
;prev11.c: 247: retm=0;
	clrf	(_retm)^080h
	clrf	(_retm+1)^080h
	line	248
;prev11.c: 248: f1=0; f2=0; f3=0;
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	goto	l1119
	line	249
	
l3845:	
;prev11.c: 249: return;
	goto	l1119
	line	250
	
l1118:	
	line	251
	
l3847:	
;prev11.c: 250: }
;prev11.c: 251: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	252
;prev11.c: 252: buzz(num);
	movf	(getlogicseq@num+1)^080h,w
	clrf	(?_buzz+1)
	addwf	(?_buzz+1)
	movf	(getlogicseq@num)^080h,w
	clrf	(?_buzz)
	addwf	(?_buzz)

	fcall	_buzz
	line	253
	
l3849:	
;prev11.c: 253: if(num==1)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l1120
u4690:
	line	255
	
l3851:	
;prev11.c: 254: {
;prev11.c: 255: f1=1;
	movlw	low(01h)
	movwf	(_f1)^080h
	movlw	high(01h)
	movwf	((_f1)^080h)+1
	line	256
	
l3853:	
;prev11.c: 256: f2=0;
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	line	257
	
l3855:	
;prev11.c: 257: f3=0;
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	258
	
l1120:	
	line	259
;prev11.c: 258: }
;prev11.c: 259: if(num==2)
	movlw	02h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l1121
u4700:
	line	261
	
l3857:	
;prev11.c: 260: {
;prev11.c: 261: f1=0;
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	line	262
	
l3859:	
;prev11.c: 262: f2=1;
	movlw	low(01h)
	movwf	(_f2)^080h
	movlw	high(01h)
	movwf	((_f2)^080h)+1
	line	263
	
l3861:	
;prev11.c: 263: f3=0;
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	264
	
l1121:	
	line	265
;prev11.c: 264: }
;prev11.c: 265: if(num==3)
	movlw	03h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l3869
u4710:
	line	267
	
l3863:	
;prev11.c: 266: {
;prev11.c: 267: f1=0;
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	line	268
;prev11.c: 268: f2=0;
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	line	269
	
l3865:	
;prev11.c: 269: f3=1;
	movlw	low(01h)
	movwf	(_f3)^080h
	movlw	high(01h)
	movwf	((_f3)^080h)+1
	line	270
	
l3867:	
;prev11.c: 270: retm=1;
	movlw	low(01h)
	movwf	(_retm)^080h
	movlw	high(01h)
	movwf	((_retm)^080h)+1
	goto	l3869
	line	271
	
l1122:	
	line	273
	
l3869:	
;prev11.c: 271: }
;prev11.c: 273: if(f1){
	movf	(_f1+1)^080h,w
	iorwf	(_f1)^080h,w
	skipnz
	goto	u4721
	goto	u4720
u4721:
	goto	l3873
u4720:
	line	274
	
l3871:	
;prev11.c: 274: startswitch();
	fcall	_startswitch
	line	275
;prev11.c: 275: }
	goto	l3841
	line	276
	
l1123:	
	
l3873:	
;prev11.c: 276: else if(f2){ f1=0; f2=0; f3=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_f2+1)^080h,w
	iorwf	(_f2)^080h,w
	skipnz
	goto	u4731
	goto	u4730
u4731:
	goto	l3879
u4730:
	
l3875:	
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	277
;prev11.c: 277: goto START_SEQ;
	goto	l3885
	line	278
	
l3877:	
;prev11.c: 278: }
	goto	l3841
	line	279
	
l1125:	
	
l3879:	
;prev11.c: 279: else if(f3){ f1=0; f2=0; f3=0;
	movf	(_f3+1)^080h,w
	iorwf	(_f3)^080h,w
	skipnz
	goto	u4741
	goto	u4740
u4741:
	goto	l3841
u4740:
	
l3881:	
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	280
	
l3883:	
;prev11.c: 280: retm=1;
	movlw	low(01h)
	movwf	(_retm)^080h
	movlw	high(01h)
	movwf	((_retm)^080h)+1
	goto	l3841
	line	282
	
l1128:	
	goto	l3841
	line	283
	
l1127:	
	goto	l3841
	
l1124:	
	goto	l3841
	
l1129:	
	line	242
	goto	l3841
	
l1130:	
	goto	l3885
	line	286
;prev11.c: 282: }
;prev11.c: 283: }
;prev11.c: 286: START_SEQ:
	
l1126:	
	line	287
	
l3885:	
;prev11.c: 287: write("Press 2. - Skip for Device",1,1);
	movlw	low(STR_7|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_7|8000h)
	movwf	((?_write))+1
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(01h)
	movwf	0+(?_write)+04h
	movlw	high(01h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	288
	
l3887:	
;prev11.c: 288: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	290
	
l3889:	
;prev11.c: 290: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	
l3891:	
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	291
	
l3893:	
;prev11.c: 291: strcpy(str,"Enter Logic DEV1:  ");
	movlw	(getlogicseq@str&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_8|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_8|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	292
	
l3895:	
;prev11.c: 292: write(str,1,1);
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
	
l3897:	
;prev11.c: 293: write(logic_d1,2,0);
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
	line	295
;prev11.c: 295: while(1)
	
l1131:	
	line	297
;prev11.c: 296: {
;prev11.c: 297: num=scan();
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
	
l3899:	
;prev11.c: 298: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4751
	goto	u4750
u4751:
	goto	l3903
u4750:
	
l3901:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4761
	goto	u4760
u4761:
	goto	l3917
u4760:
	goto	l3903
	
l1134:	
	line	299
	
l3903:	
;prev11.c: 299: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4771
	goto	u4770
u4771:
	goto	l3919
u4770:
	line	301
	
l3905:	
;prev11.c: 300: {
;prev11.c: 301: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4781
	goto	u4780
u4781:
	goto	l1136
u4780:
	line	302
	
l3907:	
;prev11.c: 302: strcpy(logic_d1,"");
	movlw	(_logic_d1&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_9|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_9|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	
l1136:	
	line	303
;prev11.c: 303: write("---",2,0);
	movlw	low(STR_10|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_10|8000h)
	movwf	((?_write))+1
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
;prev11.c: 304: itoaa(num, snum);
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
	
l3909:	
;prev11.c: 305: strcat(logic_d1,snum);
	movlw	(_logic_d1&0ffh)
	movwf	(?_strcat)
	movlw	(0x1/2)
	movwf	(?_strcat+1)
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	0+(?_strcat)+02h
	fcall	_strcat
	line	306
	
l3911:	
;prev11.c: 306: write( logic_d1,2,0); ;
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
	line	307
	
l3913:	
;prev11.c: 307: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	308
	
l3915:	
;prev11.c: 308: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3919
	line	309
	
l1135:	
	line	310
;prev11.c: 309: }
;prev11.c: 310: }
	goto	l3919
	line	311
	
l1132:	
	line	312
	
l3917:	
;prev11.c: 311: else{
;prev11.c: 312: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3919
	line	313
	
l1137:	
	line	314
	
l3919:	
;prev11.c: 313: }
;prev11.c: 314: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4795
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4795:

	skipc
	goto	u4791
	goto	u4790
u4791:
	goto	l3923
u4790:
	goto	l3933
	line	315
	
l3921:	
;prev11.c: 315: break;
	goto	l3933
	
l1138:	
	line	318
	
l3923:	
;prev11.c: 318: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l3929
u4800:
	line	320
	
l3925:	
;prev11.c: 319: {
;prev11.c: 320: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4811
	goto	u4810
u4811:
	goto	l1131
u4810:
	line	321
	
l3927:	
;prev11.c: 321: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	322
;prev11.c: 322: break;
	goto	l3933
	line	323
	
l1141:	
	line	324
;prev11.c: 323: }
;prev11.c: 324: }
	goto	l1131
	line	325
	
l1140:	
	
l3929:	
;prev11.c: 325: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4821
	goto	u4820
u4821:
	goto	l1131
u4820:
	line	326
	
l3931:	
;prev11.c: 326: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l1131
	line	327
	
l1143:	
	goto	l1131
	line	328
	
l1142:	
	goto	l1131
	
l1144:	
	line	295
	goto	l1131
	
l1139:	
	line	331
	
l3933:	
;prev11.c: 327: }
;prev11.c: 328: }
;prev11.c: 331: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	332
	
l3935:	
;prev11.c: 332: strcpy(str,"Enter Logic DEV2:  ");
	movlw	(getlogicseq@str&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_11|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_11|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	333
	
l3937:	
;prev11.c: 333: write(str,1,1);
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
	line	334
	
l3939:	
;prev11.c: 334: write(logic_d2,2,0);
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
	goto	l3941
	line	336
;prev11.c: 336: while(1)
	
l1145:	
	line	338
	
l3941:	
;prev11.c: 337: {
;prev11.c: 338: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	339
	
l3943:	
;prev11.c: 339: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4831
	goto	u4830
u4831:
	goto	l3947
u4830:
	
l3945:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l3961
u4840:
	goto	l3947
	
l1148:	
	line	340
	
l3947:	
;prev11.c: 340: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4851
	goto	u4850
u4851:
	goto	l3963
u4850:
	line	341
	
l3949:	
;prev11.c: 341: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4861
	goto	u4860
u4861:
	goto	l1150
u4860:
	line	342
	
l3951:	
;prev11.c: 342: strcpy(logic_d2,"");
	movlw	(_logic_d2&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_12|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_12|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	
l1150:	
	line	343
;prev11.c: 343: write("---",2,0);
	movlw	low(STR_13|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_13|8000h)
	movwf	((?_write))+1
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
;prev11.c: 344: itoaa(num, snum);
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
	line	345
	
l3953:	
;prev11.c: 345: strcat(logic_d2,snum);
	movlw	(_logic_d2&0ffh)
	movwf	(?_strcat)
	movlw	(0x1/2)
	movwf	(?_strcat+1)
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	0+(?_strcat)+02h
	fcall	_strcat
	line	346
	
l3955:	
;prev11.c: 346: write( logic_d2,2,0); ;
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
	line	347
	
l3957:	
;prev11.c: 347: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	348
	
l3959:	
;prev11.c: 348: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3963
	line	349
	
l1149:	
	line	350
;prev11.c: 349: }
;prev11.c: 350: }
	goto	l3963
	line	351
	
l1146:	
	line	352
	
l3961:	
;prev11.c: 351: else{
;prev11.c: 352: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3963
	line	353
	
l1151:	
	line	354
	
l3963:	
;prev11.c: 353: }
;prev11.c: 354: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4875
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4875:

	skipc
	goto	u4871
	goto	u4870
u4871:
	goto	l3967
u4870:
	goto	l3977
	line	355
	
l3965:	
;prev11.c: 355: break;
	goto	l3977
	
l1152:	
	line	357
	
l3967:	
;prev11.c: 357: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l3973
u4880:
	line	359
	
l3969:	
;prev11.c: 358: {
;prev11.c: 359: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4891
	goto	u4890
u4891:
	goto	l3941
u4890:
	line	360
	
l3971:	
;prev11.c: 360: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	361
;prev11.c: 361: break;
	goto	l3977
	line	362
	
l1155:	
	line	363
;prev11.c: 362: }
;prev11.c: 363: }
	goto	l3941
	line	364
	
l1154:	
	
l3973:	
;prev11.c: 364: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l3941
u4900:
	line	365
	
l3975:	
;prev11.c: 365: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3941
	line	366
	
l1157:	
	goto	l3941
	line	367
	
l1156:	
	goto	l3941
	
l1158:	
	line	336
	goto	l3941
	
l1153:	
	line	370
	
l3977:	
;prev11.c: 366: }
;prev11.c: 367: }
;prev11.c: 370: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	371
	
l3979:	
;prev11.c: 371: strcpy(str,"Enter Logic DEV3:  ");
	movlw	(getlogicseq@str&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_14|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_14|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	372
	
l3981:	
;prev11.c: 372: write(str,1,1);
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
	line	373
	
l3983:	
;prev11.c: 373: write(logic_d3,2,0);
	movlw	(_logic_d3&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x3/2)
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
	goto	l3985
	line	375
;prev11.c: 375: while(1)
	
l1159:	
	line	377
	
l3985:	
;prev11.c: 376: {
;prev11.c: 377: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	378
	
l3987:	
;prev11.c: 378: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4911
	goto	u4910
u4911:
	goto	l3991
u4910:
	
l3989:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4921
	goto	u4920
u4921:
	goto	l4005
u4920:
	goto	l3991
	
l1162:	
	line	379
	
l3991:	
;prev11.c: 379: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l4007
u4930:
	line	380
	
l3993:	
;prev11.c: 380: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l1164
u4940:
	line	381
	
l3995:	
;prev11.c: 381: strcpy(logic_d3,"");
	movlw	(_logic_d3&0ffh)
	movwf	(?_strcpy)
	movlw	(0x3/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_15|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_15|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	
l1164:	
	line	382
;prev11.c: 382: write("---",2,0);
	movlw	low(STR_16|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_16|8000h)
	movwf	((?_write))+1
	movlw	low(02h)
	movwf	0+(?_write)+02h
	movlw	high(02h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	383
;prev11.c: 383: itoaa(num, snum);
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
	line	384
	
l3997:	
;prev11.c: 384: strcat(logic_d3,snum);
	movlw	(_logic_d3&0ffh)
	movwf	(?_strcat)
	movlw	(0x3/2)
	movwf	(?_strcat+1)
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	0+(?_strcat)+02h
	fcall	_strcat
	line	385
	
l3999:	
;prev11.c: 385: write( logic_d3,2,0); ;
	movlw	(_logic_d3&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	(0x3/2)
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
	line	386
	
l4001:	
;prev11.c: 386: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	387
	
l4003:	
;prev11.c: 387: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l4007
	line	388
	
l1163:	
	line	389
;prev11.c: 388: }
;prev11.c: 389: }
	goto	l4007
	line	390
	
l1160:	
	line	391
	
l4005:	
;prev11.c: 390: else{
;prev11.c: 391: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l4007
	line	392
	
l1165:	
	line	393
	
l4007:	
;prev11.c: 392: }
;prev11.c: 393: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4955
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4955:

	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l4011
u4950:
	goto	l1119
	line	394
	
l4009:	
;prev11.c: 394: break;
	goto	l1119
	
l1166:	
	line	396
	
l4011:	
;prev11.c: 396: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l4017
u4960:
	line	398
	
l4013:	
;prev11.c: 397: {
;prev11.c: 398: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4971
	goto	u4970
u4971:
	goto	l3985
u4970:
	line	399
	
l4015:	
;prev11.c: 399: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	400
;prev11.c: 400: break;
	goto	l1119
	line	401
	
l1169:	
	line	402
;prev11.c: 401: }
;prev11.c: 402: }
	goto	l3985
	line	403
	
l1168:	
	
l4017:	
;prev11.c: 403: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4981
	goto	u4980
u4981:
	goto	l3985
u4980:
	line	404
	
l4019:	
;prev11.c: 404: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3985
	line	405
	
l1171:	
	goto	l3985
	line	406
	
l1170:	
	goto	l3985
	
l1172:	
	line	375
	goto	l3985
	
l1167:	
	line	452
	
l1119:	
	return
	opt stack 0
GLOBAL	__end_of_getlogicseq
	__end_of_getlogicseq:
;; =============== function _getlogicseq ends ============

	signat	_getlogicseq,88
	global	_startswitch
psect	text571,local,class=CODE,delta=2
global __ptext571
__ptext571:

;; *************** function _startswitch *****************
;; Defined at:
;;		line 169 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_init_fun
;;		_strcpy
;;		_write
;;		_strcmp
;;		_check
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text571
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	169
	global	__size_of_startswitch
	__size_of_startswitch	equ	__end_of_startswitch-_startswitch
	
_startswitch:	
	opt	stack 0
; Regs used in _startswitch: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	170
	
l3777:	
;prev11.c: 170: init_fun();
	fcall	_init_fun
	line	173
;prev11.c: 173: strcpy(plo,lo);
	movlw	(_plo&0ffh)
	movwf	(?_strcpy)
	movlw	(0x3/2)
	movwf	(?_strcpy+1)
	movlw	(_lo&0ffh)
	movwf	0+(?_strcpy)+02h
	movlw	(0x0/2)
	movwf	1+(?_strcpy)+02h
	fcall	_strcpy
	line	174
;prev11.c: 174: strcpy(lo,"000");;
	movlw	(_lo&0ffh)
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_2|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_2|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	175
	
l3779:	
;prev11.c: 175: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u4521
	goto	u4520
u4521:
	goto	l3783
u4520:
	line	176
	
l3781:	
;prev11.c: 176: lo[0]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(_lo)
	goto	l3783
	
l1102:	
	line	177
	
l3783:	
;prev11.c: 177: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u4531
	goto	u4530
u4531:
	goto	l3787
u4530:
	line	178
	
l3785:	
;prev11.c: 178: lo[1]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+01h
	goto	l3787
	
l1103:	
	line	179
	
l3787:	
;prev11.c: 179: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u4541
	goto	u4540
u4541:
	goto	l3791
u4540:
	line	180
	
l3789:	
;prev11.c: 180: lo[2]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+02h
	goto	l3791
	
l1104:	
	line	183
	
l3791:	
;prev11.c: 183: pdev=dev;
	movf	(_dev+1),w
	clrf	(_pdev+1)
	addwf	(_pdev+1)
	movf	(_dev),w
	clrf	(_pdev)
	addwf	(_pdev)

	line	184
	
l3793:	
;prev11.c: 184: dev=0b0000;
	clrf	(_dev)
	clrf	(_dev+1)
	line	185
	
l3795:	
;prev11.c: 185: write("Press 2 to REPRG",2,0);
	movlw	low(STR_3|8000h)
	movwf	(?_write)
	movlw	high(STR_3|8000h)
	movwf	((?_write))+1
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
	
l3797:	
;prev11.c: 187: if(strcmp(lo,plo)!=0)
	movlw	(_plo&0ffh)
	movwf	(?_strcmp)
	movlw	(0x3/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	iorwf	(0+(?_strcmp)),w
	skipnz
	goto	u4551
	goto	u4550
u4551:
	goto	l1112
u4550:
	line	190
	
l3799:	
;prev11.c: 188: {
;prev11.c: 190: write(lo,1,1);
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
	line	194
;prev11.c: 194: if(check(lo,logic_d1))
	movlw	(_logic_d1&0ffh)
	movwf	(?_check)
	movlw	(0x1/2)
	movwf	(?_check+1)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4561
	goto	u4560
u4561:
	goto	l3803
u4560:
	line	195
	
l3801:	
;prev11.c: 195: dev=dev|0b0001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(01h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3805
	line	196
	
l1106:	
	line	197
	
l3803:	
;prev11.c: 196: else
;prev11.c: 197: dev=dev&0b0110;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(06h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3805
	
l1107:	
	line	199
	
l3805:	
;prev11.c: 199: if(check(lo,logic_d2))
	movlw	(_logic_d2&0ffh)
	movwf	(?_check)
	movlw	(0x1/2)
	movwf	(?_check+1)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4571
	goto	u4570
u4571:
	goto	l3809
u4570:
	line	200
	
l3807:	
;prev11.c: 200: dev=dev|0b0010;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(02h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3811
	line	201
	
l1108:	
	line	202
	
l3809:	
;prev11.c: 201: else
;prev11.c: 202: dev=dev&0b0101;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(05h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3811
	
l1109:	
	line	205
	
l3811:	
;prev11.c: 205: if(check(lo,logic_d3))
	movlw	(_logic_d3&0ffh)
	movwf	(?_check)
	movlw	(0x3/2)
	movwf	(?_check+1)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4581
	goto	u4580
u4581:
	goto	l3815
u4580:
	line	206
	
l3813:	
;prev11.c: 206: dev=dev|0b0100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(04h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3817
	line	207
	
l1110:	
	line	208
	
l3815:	
;prev11.c: 207: else
;prev11.c: 208: dev=dev&0b0011;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(03h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3817
	
l1111:	
	line	213
	
l3817:	
;prev11.c: 213: RC4=dev&0b0001;
	btfsc	(_dev),0
	goto	u4591
	goto	u4590
	
u4591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	goto	u4604
u4590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
u4604:
	line	214
	
l3819:	
;prev11.c: 214: RC5=(dev>>1)&0b0001;
	movf	(_dev+1),w
	movwf	(??_startswitch+0)+0+1
	movf	(_dev),w
	movwf	(??_startswitch+0)+0
	movlw	01h
	movwf	btemp+1
u4615:
	rlf	(??_startswitch+0)+1,w
	rrf	(??_startswitch+0)+1,f
	rrf	(??_startswitch+0)+0,f
	decfsz	btemp+1,f
	goto	u4615
	btfsc	0+(??_startswitch+0)+0,0
	goto	u4621
	goto	u4620
	
u4621:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	goto	u4634
u4620:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
u4634:
	line	215
	
l3821:	
;prev11.c: 215: RC6=(dev>>2)&0b0001;
	movf	(_dev+1),w
	movwf	(??_startswitch+0)+0+1
	movf	(_dev),w
	movwf	(??_startswitch+0)+0
	movlw	02h
	movwf	btemp+1
u4645:
	rlf	(??_startswitch+0)+1,w
	rrf	(??_startswitch+0)+1,f
	rrf	(??_startswitch+0)+0,f
	decfsz	btemp+1,f
	goto	u4645
	btfsc	0+(??_startswitch+0)+0,0
	goto	u4651
	goto	u4650
	
u4651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	goto	u4664
u4650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
u4664:
	goto	l1112
	line	216
	
l1105:	
	goto	l1112
	line	217
	
l3823:	
	line	219
;prev11.c: 216: }
;prev11.c: 217: return;
	
l1112:	
	return
	opt stack 0
GLOBAL	__end_of_startswitch
	__end_of_startswitch:
;; =============== function _startswitch ends ============

	signat	_startswitch,88
	global	_scroll
psect	text572,local,class=CODE,delta=2
global __ptext572
__ptext572:

;; *************** function _scroll *****************
;; Defined at:
;;		line 642 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  str             2   40[BANK0 ] PTR unsigned char 
;;		 -> STR_4(38), 
;;  loops           2   42[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  dest           32    0        unsigned char [32]
;;  endat           2   53[BANK0 ] int 
;;  startat         2   51[BANK0 ] int 
;;  i               2   59[BANK0 ] int 
;;  len             2   57[BANK0 ] int 
;;  loopn           2   55[BANK0 ] int 
;;  en              2   49[BANK0 ] int 
;;  st              2   47[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      14       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      21       0       0       0
;;Total ram usage:       21 bytes
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
psect	text572
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	642
	global	__size_of_scroll
	__size_of_scroll	equ	__end_of_scroll-_scroll
	
_scroll:	
	opt	stack 1
; Regs used in _scroll: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	644
	
l3737:	
;prev11.c: 644: write(str,1,0); ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(scroll@str+1),w
	clrf	(?_write+1)
	addwf	(?_write+1)
	movf	(scroll@str),w
	clrf	(?_write)
	addwf	(?_write)

	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(0)
	movwf	0+(?_write)+04h
	movlw	high(0)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	line	645
	
l3739:	
;prev11.c: 645: int loopn=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@loopn)
	clrf	(scroll@loopn+1)
	line	647
	
l3741:	
;prev11.c: 646: int i;
;prev11.c: 647: int len=0;;
	clrf	(scroll@len)
	clrf	(scroll@len+1)
	line	648
	
l3743:	
;prev11.c: 648: int st=0;
	clrf	(scroll@st)
	clrf	(scroll@st+1)
	line	650
;prev11.c: 649: int en;
;prev11.c: 650: while(str[i]!='\0')
	goto	l3747
	
l1254:	
	line	651
	
l3745:	
;prev11.c: 651: { i++;
	movlw	low(01h)
	addwf	(scroll@i),f
	skipnc
	incf	(scroll@i+1),f
	movlw	high(01h)
	addwf	(scroll@i+1),f
	line	652
;prev11.c: 652: len++;
	movlw	low(01h)
	addwf	(scroll@len),f
	skipnc
	incf	(scroll@len+1),f
	movlw	high(01h)
	addwf	(scroll@len+1),f
	goto	l3747
	line	653
	
l1253:	
	line	650
	
l3747:	
	movf	(scroll@i),w
	addwf	(scroll@str),w
	movwf	fsr0
	movf	(scroll@str+1),w
	skipnc
	incf	(scroll@str+1),w
	movwf	btemp+1
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l3745
u4470:
	goto	l3749
	
l1255:	
	line	654
	
l3749:	
;prev11.c: 653: }
;prev11.c: 654: en=len-1;
	movf	(scroll@len),w
	addlw	low(-1)
	movwf	(scroll@en)
	movf	(scroll@len+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(scroll@en)
	line	656
	
l3751:	
;prev11.c: 656: if(len>32)
	movf	(scroll@len+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(021h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4485
	movlw	low(021h)
	subwf	(scroll@len),w
u4485:

	skipc
	goto	u4481
	goto	u4480
u4481:
	goto	l1265
u4480:
	line	660
	
l3753:	
;prev11.c: 657: {
;prev11.c: 659: char dest [32] ;
;prev11.c: 660: int startat=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@startat)
	clrf	(scroll@startat+1)
	line	661
	
l3755:	
;prev11.c: 661: int endat=31;
	movlw	low(01Fh)
	movwf	(scroll@endat)
	movlw	high(01Fh)
	movwf	((scroll@endat))+1
	goto	l3757
	line	662
;prev11.c: 662: START:
	
l1257:	
	line	663
	
l3757:	
;prev11.c: 663: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	664
;prev11.c: 664: while(i++<32)
	goto	l3763
	
l1259:	
	line	667
	
l3759:	
;prev11.c: 665: {
;prev11.c: 667: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	668
	
l3761:	
;prev11.c: 668: cmd(0x1E);
	movlw	low(01Eh)
	movwf	(?_cmd)
	movlw	high(01Eh)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3763
	line	671
	
l1258:	
	line	664
	
l3763:	
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
	goto	u4495
	movlw	low(021h)
	subwf	((scroll@i)),w
u4495:

	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l3759
u4490:
	goto	l3765
	
l1260:	
	line	673
	
l3765:	
;prev11.c: 671: }
;prev11.c: 673: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	674
;prev11.c: 674: while(i++<32)
	goto	l3771
	
l1262:	
	line	677
	
l3767:	
;prev11.c: 675: {
;prev11.c: 677: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	678
	
l3769:	
;prev11.c: 678: cmd(0x18);
	movlw	low(018h)
	movwf	(?_cmd)
	movlw	high(018h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3771
	line	681
	
l1261:	
	line	674
	
l3771:	
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
	goto	u4505
	movlw	low(021h)
	subwf	((scroll@i)),w
u4505:

	skipc
	goto	u4501
	goto	u4500
u4501:
	goto	l3767
u4500:
	goto	l3773
	
l1263:	
	line	682
	
l3773:	
;prev11.c: 681: }
;prev11.c: 682: if(loopn++<loops)
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
	goto	u4515
	movf	(scroll@loops),w
	subwf	0+(??_scroll+0)+0,w
u4515:

	skipnc
	goto	u4511
	goto	u4510
u4511:
	goto	l1265
u4510:
	goto	l3757
	line	683
	
l3775:	
;prev11.c: 683: goto START;
	goto	l3757
	
l1264:	
	goto	l1265
	line	684
	
l1256:	
	line	689
	
l1265:	
	return
	opt stack 0
GLOBAL	__end_of_scroll
	__end_of_scroll:
;; =============== function _scroll ends ============

	signat	_scroll,8312
	global	_init_fun
psect	text573,local,class=CODE,delta=2
global __ptext573
__ptext573:

;; *************** function _init_fun *****************
;; Defined at:
;;		line 158 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text573
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	158
	global	__size_of_init_fun
	__size_of_init_fun	equ	__end_of_init_fun-_init_fun
	
_init_fun:	
	opt	stack 0
; Regs used in _init_fun: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	159
	
l3727:	
;prev11.c: 159: if(done_init==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_done_init+1)),w
	iorwf	((_done_init)),w
	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l1099
u4460:
	line	162
	
l3729:	
;prev11.c: 160: {
;prev11.c: 162: TRISA=0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	163
	
l3731:	
;prev11.c: 163: ANSEL=0x0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	164
	
l3733:	
;prev11.c: 164: done_init=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_done_init)
	movlw	high(01h)
	movwf	((_done_init))+1
	line	165
	
l3735:	
;prev11.c: 165: write("Sensing...",1,1);
	movlw	low(STR_1|8000h)
	movwf	(?_write)
	movlw	high(STR_1|8000h)
	movwf	((?_write))+1
	movlw	low(01h)
	movwf	0+(?_write)+02h
	movlw	high(01h)
	movwf	(0+(?_write)+02h)+1
	movlw	low(01h)
	movwf	0+(?_write)+04h
	movlw	high(01h)
	movwf	(0+(?_write)+04h)+1
	fcall	_write
	goto	l1099
	line	166
	
l1098:	
	line	167
	
l1099:	
	return
	opt stack 0
GLOBAL	__end_of_init_fun
	__end_of_init_fun:
;; =============== function _init_fun ends ============

	signat	_init_fun,88
	global	_write
psect	text574,local,class=CODE,delta=2
global __ptext574
__ptext574:

;; *************** function _write *****************
;; Defined at:
;;		line 621 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  str             2   34[BANK0 ] PTR unsigned char 
;;		 -> STR_16(4), STR_13(4), STR_10(4), getlogicseq@str(32), 
;;		 -> STR_7(27), STR_6(8), STR_5(15), STR_4(38), 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), STR_3(17), 
;;		 -> lo(5), STR_1(11), 
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
psect	text574
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	621
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 1
; Regs used in _write: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	622
	
l3709:	
;prev11.c: 622: if(erase==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@erase),w
	iorwf	(write@erase+1),w
	skipz
	goto	u4431
	goto	u4430
u4431:
	goto	l3713
u4430:
	line	623
	
l3711:	
;prev11.c: 623: clearlcd();
	fcall	_clearlcd
	goto	l3713
	
l1244:	
	line	625
	
l3713:	
;prev11.c: 625: if(line==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@line),w
	iorwf	(write@line+1),w
	skipz
	goto	u4441
	goto	u4440
u4441:
	goto	l3717
u4440:
	line	626
	
l3715:	
;prev11.c: 626: cmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_cmd)
	movlw	high(0C0h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3719
	line	627
	
l1245:	
	line	628
	
l3717:	
;prev11.c: 627: else
;prev11.c: 628: cmd(0x2);
	movlw	low(02h)
	movwf	(?_cmd)
	movlw	high(02h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3719
	
l1246:	
	line	630
	
l3719:	
;prev11.c: 630: int i=0;
	clrf	(write@i)
	clrf	(write@i+1)
	line	631
;prev11.c: 631: while(str[i]!='\0')
	goto	l3725
	
l1248:	
	line	633
	
l3721:	
;prev11.c: 632: {
;prev11.c: 633: dat(str[i]);
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
	line	634
	
l3723:	
;prev11.c: 634: i++;
	movlw	low(01h)
	addwf	(write@i),f
	skipnc
	incf	(write@i+1),f
	movlw	high(01h)
	addwf	(write@i+1),f
	goto	l3725
	line	635
	
l1247:	
	line	631
	
l3725:	
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
	goto	u4451
	goto	u4450
u4451:
	goto	l3721
u4450:
	goto	l1250
	
l1249:	
	line	638
	
l1250:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,12408
	global	_clearlcd
psect	text575,local,class=CODE,delta=2
global __ptext575
__ptext575:

;; *************** function _clearlcd *****************
;; Defined at:
;;		line 563 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text575
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	563
	global	__size_of_clearlcd
	__size_of_clearlcd	equ	__end_of_clearlcd-_clearlcd
	
_clearlcd:	
	opt	stack 1
; Regs used in _clearlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	564
	
l3707:	
;prev11.c: 564: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	565
	
l1228:	
	return
	opt stack 0
GLOBAL	__end_of_clearlcd
	__end_of_clearlcd:
;; =============== function _clearlcd ends ============

	signat	_clearlcd,88
	global	_scan
psect	text576,local,class=CODE,delta=2
global __ptext576
__ptext576:

;; *************** function _scan *****************
;; Defined at:
;;		line 703 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text576
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	703
	global	__size_of_scan
	__size_of_scan	equ	__end_of_scan-_scan
	
_scan:	
	opt	stack 4
; Regs used in _scan: [wreg+status,2+status,0+pclath+cstack]
	line	705
	
l3599:	
;prev11.c: 705: actrow(1) ;
	movlw	low(01h)
	movwf	(?_actrow)
	movlw	high(01h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	706
	
l3601:	
;prev11.c: 706: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l1271
u4270:
	line	707
	
l3603:	
;prev11.c: 707: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l1272
	
l3605:	
	goto	l1272
	
l3607:	
	goto	l3625
	line	708
	
l1271:	
;prev11.c: 708: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l1274
u4280:
	line	709
	
l3609:	
;prev11.c: 709: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l1272
	
l3611:	
	goto	l1272
	
l3613:	
	goto	l3625
	line	710
	
l1274:	
;prev11.c: 710: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l1276
u4290:
	line	711
	
l3615:	
;prev11.c: 711: return 2;
	movlw	low(02h)
	movwf	(?_scan)
	movlw	high(02h)
	movwf	((?_scan))+1
	goto	l1272
	
l3617:	
	goto	l1272
	
l3619:	
	goto	l3625
	line	712
	
l1276:	
;prev11.c: 712: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l3625
u4300:
	line	713
	
l3621:	
;prev11.c: 713: return 3;
	movlw	low(03h)
	movwf	(?_scan)
	movlw	high(03h)
	movwf	((?_scan))+1
	goto	l1272
	
l3623:	
	goto	l1272
	
l1278:	
	goto	l3625
	line	715
	
l1277:	
	goto	l3625
	
l1275:	
	goto	l3625
	
l1273:	
	
l3625:	
;prev11.c: 715: actrow(2) ;
	movlw	low(02h)
	movwf	(?_actrow)
	movlw	high(02h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	717
	
l3627:	
;prev11.c: 717: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l1279
u4310:
	line	718
	
l3629:	
;prev11.c: 718: return 4;
	movlw	low(04h)
	movwf	(?_scan)
	movlw	high(04h)
	movwf	((?_scan))+1
	goto	l1272
	
l3631:	
	goto	l1272
	
l3633:	
	goto	l3651
	line	719
	
l1279:	
;prev11.c: 719: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4321
	goto	u4320
u4321:
	goto	l1281
u4320:
	line	720
	
l3635:	
;prev11.c: 720: return 5;
	movlw	low(05h)
	movwf	(?_scan)
	movlw	high(05h)
	movwf	((?_scan))+1
	goto	l1272
	
l3637:	
	goto	l1272
	
l3639:	
	goto	l3651
	line	721
	
l1281:	
;prev11.c: 721: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l1283
u4330:
	line	722
	
l3641:	
;prev11.c: 722: return 6;
	movlw	low(06h)
	movwf	(?_scan)
	movlw	high(06h)
	movwf	((?_scan))+1
	goto	l1272
	
l3643:	
	goto	l1272
	
l3645:	
	goto	l3651
	line	723
	
l1283:	
;prev11.c: 723: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4341
	goto	u4340
u4341:
	goto	l3651
u4340:
	line	724
	
l3647:	
;prev11.c: 724: return 7;
	movlw	low(07h)
	movwf	(?_scan)
	movlw	high(07h)
	movwf	((?_scan))+1
	goto	l1272
	
l3649:	
	goto	l1272
	
l1285:	
	goto	l3651
	line	726
	
l1284:	
	goto	l3651
	
l1282:	
	goto	l3651
	
l1280:	
	
l3651:	
;prev11.c: 726: actrow(3) ;
	movlw	low(03h)
	movwf	(?_actrow)
	movlw	high(03h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	728
	
l3653:	
;prev11.c: 728: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4351
	goto	u4350
u4351:
	goto	l1286
u4350:
	line	729
	
l3655:	
;prev11.c: 729: return 8;
	movlw	low(08h)
	movwf	(?_scan)
	movlw	high(08h)
	movwf	((?_scan))+1
	goto	l1272
	
l3657:	
	goto	l1272
	
l3659:	
	goto	l3677
	line	730
	
l1286:	
;prev11.c: 730: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4361
	goto	u4360
u4361:
	goto	l1288
u4360:
	line	731
	
l3661:	
;prev11.c: 731: return 9;
	movlw	low(09h)
	movwf	(?_scan)
	movlw	high(09h)
	movwf	((?_scan))+1
	goto	l1272
	
l3663:	
	goto	l1272
	
l3665:	
	goto	l3677
	line	732
	
l1288:	
;prev11.c: 732: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l1290
u4370:
	line	733
	
l3667:	
;prev11.c: 733: return 10;
	movlw	low(0Ah)
	movwf	(?_scan)
	movlw	high(0Ah)
	movwf	((?_scan))+1
	goto	l1272
	
l3669:	
	goto	l1272
	
l3671:	
	goto	l3677
	line	734
	
l1290:	
;prev11.c: 734: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l3677
u4380:
	line	735
	
l3673:	
;prev11.c: 735: return 11;
	movlw	low(0Bh)
	movwf	(?_scan)
	movlw	high(0Bh)
	movwf	((?_scan))+1
	goto	l1272
	
l3675:	
	goto	l1272
	
l1292:	
	goto	l3677
	line	738
	
l1291:	
	goto	l3677
	
l1289:	
	goto	l3677
	
l1287:	
	
l3677:	
;prev11.c: 738: actrow(4) ;
	movlw	low(04h)
	movwf	(?_actrow)
	movlw	high(04h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	740
	
l3679:	
;prev11.c: 740: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l1293
u4390:
	line	741
	
l3681:	
;prev11.c: 741: return 12;
	movlw	low(0Ch)
	movwf	(?_scan)
	movlw	high(0Ch)
	movwf	((?_scan))+1
	goto	l1272
	
l3683:	
	goto	l1272
	
l3685:	
	goto	l3703
	line	742
	
l1293:	
;prev11.c: 742: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4401
	goto	u4400
u4401:
	goto	l1295
u4400:
	line	743
	
l3687:	
;prev11.c: 743: return 13;
	movlw	low(0Dh)
	movwf	(?_scan)
	movlw	high(0Dh)
	movwf	((?_scan))+1
	goto	l1272
	
l3689:	
	goto	l1272
	
l3691:	
	goto	l3703
	line	744
	
l1295:	
;prev11.c: 744: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l1297
u4410:
	line	745
	
l3693:	
;prev11.c: 745: return 14;
	movlw	low(0Eh)
	movwf	(?_scan)
	movlw	high(0Eh)
	movwf	((?_scan))+1
	goto	l1272
	
l3695:	
	goto	l1272
	
l3697:	
	goto	l3703
	line	746
	
l1297:	
;prev11.c: 746: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4421
	goto	u4420
u4421:
	goto	l3703
u4420:
	line	747
	
l3699:	
;prev11.c: 747: return 15;
	movlw	low(0Fh)
	movwf	(?_scan)
	movlw	high(0Fh)
	movwf	((?_scan))+1
	goto	l1272
	
l3701:	
	goto	l1272
	
l1299:	
	goto	l3703
	line	751
	
l1298:	
	goto	l3703
	
l1296:	
	goto	l3703
	
l1294:	
	
l3703:	
;prev11.c: 751: return 99;
	movlw	low(063h)
	movwf	(?_scan)
	movlw	high(063h)
	movwf	((?_scan))+1
	goto	l1272
	
l3705:	
	line	755
	
l1272:	
	return
	opt stack 0
GLOBAL	__end_of_scan
	__end_of_scan:
;; =============== function _scan ends ============

	signat	_scan,90
	global	_initlcd
psect	text577,local,class=CODE,delta=2
global __ptext577
__ptext577:

;; *************** function _initlcd *****************
;; Defined at:
;;		line 545 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text577
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	545
	global	__size_of_initlcd
	__size_of_initlcd	equ	__end_of_initlcd-_initlcd
	
_initlcd:	
	opt	stack 4
; Regs used in _initlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	547
	
l3587:	
;prev11.c: 547: TRISC=0b0000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	549
	
l3589:	
;prev11.c: 549: TRISD=0b11000000;
	movlw	(0C0h)
	movwf	(136)^080h	;volatile
	line	551
	
l3591:	
;prev11.c: 551: cmd(0x38);
	movlw	low(038h)
	movwf	(?_cmd)
	movlw	high(038h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	553
	
l3593:	
;prev11.c: 553: cmd(0x0C);
	movlw	low(0Ch)
	movwf	(?_cmd)
	movlw	high(0Ch)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	555
	
l3595:	
;prev11.c: 555: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	557
	
l3597:	
;prev11.c: 557: cmd(0x80);
	movlw	low(080h)
	movwf	(?_cmd)
	movlw	high(080h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	561
	
l1225:	
	return
	opt stack 0
GLOBAL	__end_of_initlcd
	__end_of_initlcd:
;; =============== function _initlcd ends ============

	signat	_initlcd,88
	global	_actrow
psect	text578,local,class=CODE,delta=2
global __ptext578
__ptext578:

;; *************** function _actrow *****************
;; Defined at:
;;		line 764 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text578
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	764
	global	__size_of_actrow
	__size_of_actrow	equ	__end_of_actrow-_actrow
	
_actrow:	
	opt	stack 4
; Regs used in _actrow: [wreg+status,2+status,0+pclath+cstack]
	line	765
	
l3567:	
;prev11.c: 765: resetout();
	fcall	_resetout
	line	767
	
l3569:	
;prev11.c: 767: if(n==1)
	movlw	01h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l3573
u4230:
	line	769
	
l3571:	
;prev11.c: 768: {
;prev11.c: 769: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	770
;prev11.c: 770: }
	goto	l3585
	line	771
	
l1305:	
	
l3573:	
;prev11.c: 771: else if(n==2)
	movlw	02h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l3577
u4240:
	line	773
	
l3575:	
;prev11.c: 772: {
;prev11.c: 773: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	774
;prev11.c: 774: }
	goto	l3585
	line	775
	
l1307:	
	
l3577:	
;prev11.c: 775: else if(n==3)
	movlw	03h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4251
	goto	u4250
u4251:
	goto	l3581
u4250:
	line	777
	
l3579:	
;prev11.c: 776: {
;prev11.c: 777: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	778
;prev11.c: 778: }
	goto	l3585
	line	779
	
l1309:	
	
l3581:	
;prev11.c: 779: else if(n==4)
	movlw	04h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4261
	goto	u4260
u4261:
	goto	l3585
u4260:
	line	781
	
l3583:	
;prev11.c: 780: {
;prev11.c: 781: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	l3585
	line	782
	
l1311:	
	goto	l3585
	line	783
	
l1310:	
	goto	l3585
	
l1308:	
	goto	l3585
	
l1306:	
	
l3585:	
;prev11.c: 782: }
;prev11.c: 783: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	786
	
l1312:	
	return
	opt stack 0
GLOBAL	__end_of_actrow
	__end_of_actrow:
;; =============== function _actrow ends ============

	signat	_actrow,4216
	global	_dat
psect	text579,local,class=CODE,delta=2
global __ptext579
__ptext579:

;; *************** function _dat *****************
;; Defined at:
;;		line 579 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text579
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	579
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 2
; Regs used in _dat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	580
	
l3555:	
;prev11.c: 580: setLCD(Command);
	movf	(dat@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(dat@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	582
	
l3557:	
;prev11.c: 582: RD5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	line	584
	
l3559:	
;prev11.c: 584: RD4=1;
	bsf	(68/8),(68)&7
	line	586
	
l3561:	
;prev11.c: 586: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	588
	
l3563:	
;prev11.c: 588: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	590
	
l3565:	
;prev11.c: 590: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	596
	
l1234:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text580,local,class=CODE,delta=2
global __ptext580
__ptext580:

;; *************** function _cmd *****************
;; Defined at:
;;		line 567 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text580
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	567
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 2
; Regs used in _cmd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	569
	
l3543:	
;prev11.c: 569: setLCD(Command);
	movf	(cmd@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(cmd@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	570
	
l3545:	
;prev11.c: 570: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	line	571
	
l3547:	
;prev11.c: 571: RD4=1;
	bsf	(68/8),(68)&7
	line	572
	
l3549:	
;prev11.c: 572: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	573
	
l3551:	
;prev11.c: 573: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	574
	
l3553:	
;prev11.c: 574: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	576
	
l1231:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_itoaa
psect	text581,local,class=CODE,delta=2
global __ptext581
__ptext581:

;; *************** function _itoaa *****************
;; Defined at:
;;		line 518 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text581
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	518
	global	__size_of_itoaa
	__size_of_itoaa	equ	__end_of_itoaa-_itoaa
	
_itoaa:	
	opt	stack 5
; Regs used in _itoaa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	519
	
l3495:	
;prev11.c: 519: int count=0,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@count)
	clrf	(itoaa@count+1)
	line	520
	
l3497:	
;prev11.c: 520: if(ptr==(0))
	movf	(itoaa@ptr),f
	skipz
	goto	u4161
	goto	u4160
u4161:
	goto	l3501
u4160:
	goto	l1216
	line	521
	
l3499:	
;prev11.c: 521: return 0;
;	Return value of _itoaa is never used
	goto	l1216
	
l1215:	
	line	522
	
l3501:	
;prev11.c: 522: if(value==0)
	movf	((itoaa@value+1)),w
	iorwf	((itoaa@value)),w
	skipz
	goto	u4171
	goto	u4170
u4171:
	goto	l1217
u4170:
	line	524
	
l3503:	
;prev11.c: 523: {
;prev11.c: 524: *ptr='0';
	movlw	(030h)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l1216
	line	525
	
l3505:	
;prev11.c: 525: return 1;
;	Return value of _itoaa is never used
	goto	l1216
	line	526
	
l1217:	
	line	528
;prev11.c: 526: }
;prev11.c: 528: if(value<0)
	btfss	(itoaa@value+1),7
	goto	u4181
	goto	u4180
u4181:
	goto	l3515
u4180:
	line	530
	
l3507:	
;prev11.c: 529: {
;prev11.c: 530: value*=(-1);
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

	line	531
	
l3509:	
;prev11.c: 531: *ptr++='-';
	movlw	(02Dh)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3511:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	line	532
	
l3513:	
;prev11.c: 532: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	goto	l3515
	line	533
	
l1218:	
	line	534
	
l3515:	
;prev11.c: 533: }
;prev11.c: 534: for(temp=value;temp>0;temp/=10,ptr++);
	movf	(itoaa@value+1),w
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3517:	
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
	goto	l3521
u4190:
	goto	l3527
	
l3519:	
	goto	l3527
	
l1219:	
	
l3521:	
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

	
l3523:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	
l3525:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4205
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4205:

	skipnc
	goto	u4201
	goto	u4200
u4201:
	goto	l3521
u4200:
	goto	l3527
	
l1220:	
	line	535
	
l3527:	
;prev11.c: 535: *ptr='\0';
	movf	(itoaa@ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	536
	
l3529:	
;prev11.c: 536: for(temp=value;temp>0;temp/=10)
	movf	(itoaa@value+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3531:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4215
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4215:

	skipnc
	goto	u4211
	goto	u4210
u4211:
	goto	l3535
u4210:
	goto	l1216
	
l3533:	
	goto	l1216
	line	537
	
l1221:	
	line	538
	
l3535:	
;prev11.c: 537: {
;prev11.c: 538: *--ptr=temp%10+'0';
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
	line	539
	
l3537:	
;prev11.c: 539: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	line	536
	
l3539:	
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

	
l3541:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4225
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4225:

	skipnc
	goto	u4221
	goto	u4220
u4221:
	goto	l3535
u4220:
	goto	l1216
	
l1222:	
	line	542
;prev11.c: 540: }
;prev11.c: 541: return count;
;	Return value of _itoaa is never used
	
l1216:	
	return
	opt stack 0
GLOBAL	__end_of_itoaa
	__end_of_itoaa:
;; =============== function _itoaa ends ============

	signat	_itoaa,8314
	global	___awmod
psect	text582,local,class=CODE,delta=2
global __ptext582
__ptext582:

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
psect	text582
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3461:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u4071
	goto	u4070
u4071:
	goto	l3465
u4070:
	line	10
	
l3463:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3465
	line	12
	
l1573:	
	line	13
	
l3465:	
	btfss	(___awmod@divisor+1),7
	goto	u4081
	goto	u4080
u4081:
	goto	l3469
u4080:
	line	14
	
l3467:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3469
	
l1574:	
	line	15
	
l3469:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4091
	goto	u4090
u4091:
	goto	l3487
u4090:
	line	16
	
l3471:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3477
	
l1577:	
	line	18
	
l3473:	
	movlw	01h
	
u4105:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4105
	line	19
	
l3475:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3477
	line	20
	
l1576:	
	line	17
	
l3477:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4111
	goto	u4110
u4111:
	goto	l3473
u4110:
	goto	l3479
	
l1578:	
	goto	l3479
	line	21
	
l1579:	
	line	22
	
l3479:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4125
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4125:
	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l3483
u4120:
	line	23
	
l3481:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3483
	
l1580:	
	line	24
	
l3483:	
	movlw	01h
	
u4135:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4135
	line	25
	
l3485:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l3479
u4140:
	goto	l3487
	
l1581:	
	goto	l3487
	line	26
	
l1575:	
	line	27
	
l3487:	
	movf	(___awmod@sign),w
	skipz
	goto	u4150
	goto	l3491
u4150:
	line	28
	
l3489:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3491
	
l1582:	
	line	29
	
l3491:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1583
	
l3493:	
	line	30
	
l1583:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text583,local,class=CODE,delta=2
global __ptext583
__ptext583:

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
psect	text583
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3421:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3971
	goto	u3970
u3971:
	goto	l3425
u3970:
	line	11
	
l3423:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3425
	line	13
	
l1505:	
	line	14
	
l3425:	
	btfss	(___awdiv@dividend+1),7
	goto	u3981
	goto	u3980
u3981:
	goto	l3431
u3980:
	line	15
	
l3427:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3429:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3431
	line	17
	
l1506:	
	line	18
	
l3431:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3433:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3991
	goto	u3990
u3991:
	goto	l3453
u3990:
	line	20
	
l3435:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3441
	
l1509:	
	line	22
	
l3437:	
	movlw	01h
	
u4005:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4005
	line	23
	
l3439:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3441
	line	24
	
l1508:	
	line	21
	
l3441:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l3437
u4010:
	goto	l3443
	
l1510:	
	goto	l3443
	line	25
	
l1511:	
	line	26
	
l3443:	
	movlw	01h
	
u4025:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4025
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4035
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4035:
	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l3449
u4030:
	line	28
	
l3445:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3447:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3449
	line	30
	
l1512:	
	line	31
	
l3449:	
	movlw	01h
	
u4045:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u4045
	line	32
	
l3451:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l3443
u4050:
	goto	l3453
	
l1513:	
	goto	l3453
	line	33
	
l1507:	
	line	34
	
l3453:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4060
	goto	l3457
u4060:
	line	35
	
l3455:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3457
	
l1514:	
	line	36
	
l3457:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1515
	
l3459:	
	line	37
	
l1515:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text584,local,class=CODE,delta=2
global __ptext584
__ptext584:

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
psect	text584
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3409:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3411
	line	6
	
l1365:	
	line	7
	
l3411:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l1366
u3930:
	line	8
	
l3413:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1366:	
	line	9
	movlw	01h
	
u3945:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3945
	line	10
	
l3415:	
	movlw	01h
	
u3955:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3955
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l3411
u3960:
	goto	l3417
	
l1367:	
	line	12
	
l3417:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1368
	
l3419:	
	line	13
	
l1368:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_resetout
psect	text585,local,class=CODE,delta=2
global __ptext585
__ptext585:

;; *************** function _resetout *****************
;; Defined at:
;;		line 760 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text585
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	760
	global	__size_of_resetout
	__size_of_resetout	equ	__end_of_resetout-_resetout
	
_resetout:	
	opt	stack 4
; Regs used in _resetout: []
	line	761
	
l3403:	
;prev11.c: 761: RD6=0;RD7=0;RB6=0;RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	bcf	(71/8),(71)&7
	bcf	(54/8),(54)&7
	bcf	(55/8),(55)&7
	line	762
	
l1302:	
	return
	opt stack 0
GLOBAL	__end_of_resetout
	__end_of_resetout:
;; =============== function _resetout ends ============

	signat	_resetout,88
	global	_setLCD
psect	text586,local,class=CODE,delta=2
global __ptext586
__ptext586:

;; *************** function _setLCD *****************
;; Defined at:
;;		line 598 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text586
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	598
	global	__size_of_setLCD
	__size_of_setLCD	equ	__end_of_setLCD-_setLCD
	
_setLCD:	
	opt	stack 2
; Regs used in _setLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	603
	
l3389:	
;prev11.c: 599: const int size=8*sizeof(int);
;prev11.c: 600: int vbool[8*sizeof(int)];
;prev11.c: 601: int i;;
;prev11.c: 603: for (i = 0; i <size; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLCD@i)
	clrf	(setLCD@i+1)
	
l3391:	
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_setLCD+0)+0
	fcall	stringtab
	movwf	(??_setLCD+0)+0+1
	movf	(setLCD@i+1),w
	xorlw	80h
	movwf	(??_setLCD+2)+0
	movf	1+(??_setLCD+0)+0,w
	xorlw	80h
	subwf	(??_setLCD+2)+0,w
	skipz
	goto	u3745
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3745:

	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l3395
u3740:
	goto	l3401
	
l3393:	
	goto	l3401
	line	604
	
l1239:	
	line	605
	
l3395:	
;prev11.c: 604: {
;prev11.c: 605: vbool[i] = number<<i < 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(setLCD@i),w
	movwf	(??_setLCD+0)+0
	movf	(setLCD@number+1),w
	movwf	(??_setLCD+1)+0+1
	movf	(setLCD@number),w
	movwf	(??_setLCD+1)+0
	goto	u3754
u3755:
	clrc
	rlf	(??_setLCD+1)+0,f
	rlf	(??_setLCD+1)+1,f
u3754:
	decfsz	(??_setLCD+0)+0,f
	goto	u3755
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
	line	603
	
l3397:	
	movlw	low(01h)
	addwf	(setLCD@i),f
	skipnc
	incf	(setLCD@i+1),f
	movlw	high(01h)
	addwf	(setLCD@i+1),f
	
l3399:	
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_setLCD+0)+0
	fcall	stringtab
	movwf	(??_setLCD+0)+0+1
	movf	(setLCD@i+1),w
	xorlw	80h
	movwf	(??_setLCD+2)+0
	movf	1+(??_setLCD+0)+0,w
	xorlw	80h
	subwf	(??_setLCD+2)+0,w
	skipz
	goto	u3765
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3765:

	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l3395
u3760:
	goto	l3401
	
l1240:	
	line	608
	
l3401:	
;prev11.c: 606: }
;prev11.c: 608: RD3=vbool[size-1];
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	fcall	stringtab
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
	goto	u3771
	goto	u3770
	
u3771:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	goto	u3784
u3770:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
u3784:
	line	609
;prev11.c: 609: RD2=vbool[size-2];
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	movwf	btemp+1
	fcall	stringtab
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
	goto	u3791
	goto	u3790
	
u3791:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	goto	u3804
u3790:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
u3804:
	line	610
;prev11.c: 610: RD1=vbool[size-3];
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	movwf	btemp+1
	fcall	stringtab
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
	goto	u3811
	goto	u3810
	
u3811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u3824
u3810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u3824:
	line	611
;prev11.c: 611: RD0=vbool[size-4];
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	movwf	btemp+1
	fcall	stringtab
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
	goto	u3831
	goto	u3830
	
u3831:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u3844
u3830:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u3844:
	line	612
;prev11.c: 612: RC3=vbool[size-5];
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	movwf	btemp+1
	fcall	stringtab
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
	goto	u3851
	goto	u3850
	
u3851:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3864
u3850:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3864:
	line	613
;prev11.c: 613: RC2=vbool[size-6];
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	movwf	btemp+1
	fcall	stringtab
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
	goto	u3871
	goto	u3870
	
u3871:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3884
u3870:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3884:
	line	614
;prev11.c: 614: RC1=vbool[size-7];
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	movwf	btemp+1
	fcall	stringtab
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
	goto	u3891
	goto	u3890
	
u3891:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3904
u3890:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3904:
	line	615
;prev11.c: 615: RC0=vbool[size-8];
	movlw	low(setLCD@size|8000h)
	movwf	fsr0
	movlw	high(setLCD@size|8000h)
	movwf	btemp+1
	fcall	stringtab
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
	goto	u3911
	goto	u3910
	
u3911:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3924
u3910:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3924:
	line	619
	
l1241:	
	return
	opt stack 0
GLOBAL	__end_of_setLCD
	__end_of_setLCD:
;; =============== function _setLCD ends ============

	signat	_setLCD,4216
	global	_strcat
psect	text587,local,class=CODE,delta=2
global __ptext587
__ptext587:

;; *************** function _strcat *****************
;; Defined at:
;;		line 10 in file "../../common/strcat.c"
;; Parameters:    Size  Location     Type
;;  to              2    0[COMMON] PTR unsigned char 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
;;  from            1    2[COMMON] PTR const unsigned char 
;;		 -> getlogicseq@snum(16), 
;; Auto vars:     Size  Location     Type
;;  cp              2    6[COMMON] PTR unsigned char 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
;; Return value:  Size  Location     Type
;;                  2    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text587
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcat.c"
	line	10
	global	__size_of_strcat
	__size_of_strcat	equ	__end_of_strcat-_strcat
	
_strcat:	
	opt	stack 6
; Regs used in _strcat: [wreg-fsr0h+status,2+status,0]
	line	18
	
l3313:	
	movf	(strcat@to+1),w
	clrf	(strcat@cp+1)
	addwf	(strcat@cp+1)
	movf	(strcat@to),w
	clrf	(strcat@cp)
	addwf	(strcat@cp)

	line	19
	goto	l3317
	
l1337:	
	line	20
	
l3315:	
	movlw	low(01h)
	addwf	(strcat@cp),f
	skipnc
	incf	(strcat@cp+1),f
	movlw	high(01h)
	addwf	(strcat@cp+1),f
	goto	l3317
	
l1336:	
	line	19
	
l3317:	
	movf	(strcat@cp),w
	movwf	fsr0
	bsf	status,7
	btfss	(strcat@cp+1),0
	bcf	status,7
	movf	indf,f
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l3315
u3560:
	goto	l3319
	
l1338:	
	line	21
	goto	l3319
	
l1340:	
	line	22
	goto	l3319
	
l1339:	
	line	21
	
l3319:	
	movf	(strcat@from),w
	movwf	fsr0
	movlw	01h
	addwf	(strcat@from),f
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcat+0)+0
	movf	(strcat@cp+1),w
	movwf	(??_strcat+1)+0+1
	movf	(strcat@cp),w
	movwf	(??_strcat+1)+0
	movlw	(01h)
	addwf	(strcat@cp),f
	skipnc
	incf	(strcat@cp+1),f
	movf	0+(??_strcat+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_strcat+1)+0,0
	bcf	status,7
	movf	(??_strcat+0)+0,w
	movwf	indf
	movf	(indf),f
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l3319
u3570:
	goto	l1342
	
l1341:	
	line	24
;	Return value of _strcat is never used
	
l1342:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
;; =============== function _strcat ends ============

	signat	_strcat,8313
	global	_delay
psect	text588,local,class=CODE,delta=2
global __ptext588
__ptext588:

;; *************** function _delay *****************
;; Defined at:
;;		line 512 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
;;		_getlogicseq
;;		_cmd
;;		_dat
;;		_scroll
;;		_actrow
;; This function uses a non-reentrant model
;;
psect	text588
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	512
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	513
	
l3309:	
;prev11.c: 513: while(x-->0);
	goto	l3311
	
l1210:	
	goto	l3311
	
l1209:	
	
l3311:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u3555
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u3555:

	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l3311
u3550:
	goto	l1212
	
l1211:	
	line	514
	
l1212:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_strcmp
psect	text589,local,class=CODE,delta=2
global __ptext589
__ptext589:

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
;;		 -> plo(5), 
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
psect	text589
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
	
l3299:	
	goto	l3301
	
l1346:	
	line	38
	goto	l3301
	
l1345:	
	line	37
	
l3301:	
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
	goto	u3531
	goto	u3530
u3531:
	goto	l3305
u3530:
	
l3303:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l3301
u3540:
	goto	l3305
	
l1348:	
	goto	l3305
	
l1349:	
	line	39
	
l3305:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l1350
	
l3307:	
	line	40
	
l1350:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_strcpy
psect	text590,local,class=CODE,delta=2
global __ptext590
__ptext590:

;; *************** function _strcpy *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              2    0[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d3(5), logic_d2(5), logic_d1(5), 
;;		 -> lo(5), plo(5), 
;;  from            2    2[COMMON] PTR const unsigned char 
;;		 -> STR_15(1), STR_14(20), STR_12(1), STR_11(20), 
;;		 -> STR_9(1), STR_8(20), STR_2(4), lo(5), 
;; Auto vars:     Size  Location     Type
;;  cp              2    9[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), logic_d3(5), logic_d2(5), logic_d1(5), 
;;		 -> lo(5), plo(5), 
;; Return value:  Size  Location     Type
;;                  2    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:        11       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_startswitch
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text590
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
	line	10
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
	opt	stack 5
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	18
	
l3295:	
	movf	(strcpy@to+1),w
	clrf	(strcpy@cp+1)
	addwf	(strcpy@cp+1)
	movf	(strcpy@to),w
	clrf	(strcpy@cp)
	addwf	(strcpy@cp)

	line	19
	goto	l3297
	
l1354:	
	line	20
	goto	l3297
	
l1353:	
	line	19
	
l3297:	
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
	movf	(strcpy@cp+1),w
	movwf	(??_strcpy+3)+0+1
	movf	(strcpy@cp),w
	movwf	(??_strcpy+3)+0
	movlw	(01h)
	addwf	(strcpy@cp),f
	skipnc
	incf	(strcpy@cp+1),f
	movf	0+(??_strcpy+3)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_strcpy+3)+0,0
	bcf	status,7
	movf	(??_strcpy+2)+0,w
	movwf	indf
	movf	(indf),f
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l3297
u3520:
	goto	l1356
	
l1355:	
	line	22
;	Return value of _strcpy is never used
	
l1356:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_check
psect	text591,local,class=CODE,delta=2
global __ptext591
__ptext591:

;; *************** function _check *****************
;; Defined at:
;;		line 145 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  input           1    wreg     PTR unsigned char 
;;		 -> lo(5), 
;;  logic           2    0[COMMON] PTR unsigned char 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
;; Auto vars:     Size  Location     Type
;;  input           1    5[COMMON] PTR unsigned char 
;;		 -> lo(5), 
;;  i               2    6[COMMON] int 
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
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_startswitch
;; This function uses a non-reentrant model
;;
psect	text591
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	145
	global	__size_of_check
	__size_of_check	equ	__end_of_check-_check
	
_check:	
	opt	stack 5
; Regs used in _check: [wreg-fsr0h+status,2+status,0+btemp+1]
;check@input stored from wreg
	line	147
	movwf	(check@input)
	
l3273:	
;prev11.c: 147: int i=0;
	clrf	(check@i)
	clrf	(check@i+1)
	line	149
;prev11.c: 149: for(i=0;i<4;i++)
	clrf	(check@i)
	clrf	(check@i+1)
	
l3275:	
	movf	(check@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3475
	movlw	low(04h)
	subwf	(check@i),w
u3475:

	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l3279
u3470:
	goto	l3291
	
l3277:	
	goto	l3291
	line	150
	
l1092:	
	line	151
	
l3279:	
;prev11.c: 150: {
;prev11.c: 151: if(input[i]=='0'&&logic[i]=='1')
	movf	(check@i),w
	addwf	(check@input),w
	movwf	(??_check+0)+0
	movf	0+(??_check+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	030h
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l3287
u3480:
	
l3281:	
	movf	(check@i),w
	addwf	(check@logic),w
	movwf	(??_check+1)+0
	movf	(check@logic+1),w
	movwf	(??_check+0)+0
	skipnc
	incf	(??_check+0)+0,f
	btfss	(check@i),7
	goto	u3490
	decf	(??_check+0)+0,f
u3490:
	movf	(??_check+0)+0,w
	movwf	0+((??_check+1)+0)+1
	movf	0+(??_check+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_check+1)+0,0
	bcf	status,7
	movf	indf,w
	xorlw	031h
	skipz
	goto	u3501
	goto	u3500
u3501:
	goto	l3287
u3500:
	line	152
	
l3283:	
;prev11.c: 152: return 0;
	clrf	(?_check)
	clrf	(?_check+1)
	goto	l1095
	
l3285:	
	goto	l1095
	
l1094:	
	line	149
	
l3287:	
	movlw	low(01h)
	addwf	(check@i),f
	skipnc
	incf	(check@i+1),f
	movlw	high(01h)
	addwf	(check@i+1),f
	
l3289:	
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
	goto	l3279
u3510:
	goto	l3291
	
l1093:	
	line	154
	
l3291:	
;prev11.c: 153: }
;prev11.c: 154: return 1;
	movlw	low(01h)
	movwf	(?_check)
	movlw	high(01h)
	movwf	((?_check))+1
	goto	l1095
	
l3293:	
	line	155
	
l1095:	
	return
	opt stack 0
GLOBAL	__end_of_check
	__end_of_check:
;; =============== function _check ends ============

	signat	_check,8314
	global	_initkeypad
psect	text592,local,class=CODE,delta=2
global __ptext592
__ptext592:

;; *************** function _initkeypad *****************
;; Defined at:
;;		line 696 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text592
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	696
	global	__size_of_initkeypad
	__size_of_initkeypad	equ	__end_of_initkeypad-_initkeypad
	
_initkeypad:	
	opt	stack 7
; Regs used in _initkeypad: [wreg+status,2]
	line	697
	
l1789:	
;prev11.c: 697: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	698
	
l1791:	
;prev11.c: 698: TRISB = 0b11010000;
	movlw	(0D0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	700
	
l1268:	
	return
	opt stack 0
GLOBAL	__end_of_initkeypad
	__end_of_initkeypad:
;; =============== function _initkeypad ends ============

	signat	_initkeypad,88
	global	_buzz
psect	text593,local,class=CODE,delta=2
global __ptext593
__ptext593:

;; *************** function _buzz *****************
;; Defined at:
;;		line 40 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;  val             2    0[COMMON] int 
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
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text593
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	40
	global	__size_of_buzz
	__size_of_buzz	equ	__end_of_buzz-_buzz
	
_buzz:	
	opt	stack 6
; Regs used in _buzz: [wreg]
	line	41
	
l3269:	
;prev11.c: 41: if(val!=99)
	movlw	063h
	xorwf	(buzz@val),w
	iorwf	(buzz@val+1),w
	skipnz
	goto	u3461
	goto	u3460
u3461:
	goto	l1081
u3460:
	line	42
	
l3271:	
;prev11.c: 42: RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	l1083
	line	43
	
l1081:	
	line	44
;prev11.c: 43: else
;prev11.c: 44: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	goto	l1083
	
l1082:	
	line	45
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_buzz
	__end_of_buzz:
;; =============== function _buzz ends ============

	signat	_buzz,4216
psect	text594,local,class=CODE,delta=2
global __ptext594
__ptext594:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
