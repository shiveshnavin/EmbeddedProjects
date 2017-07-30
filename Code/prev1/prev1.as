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
	line	114

;initializer for _logic_d4
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	line	115

;initializer for _lo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
psect	idataBANK3
	line	113

;initializer for _logic_d3
	retlw	030h
	retlw	031h
	retlw	030h
	retlw	0
	retlw	0
	line	116

;initializer for _plo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	111

;initializer for _logic_d1
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	line	112

;initializer for _logic_d2
	retlw	030h
	retlw	031h
	retlw	030h
	retlw	0
	retlw	0
	global	setLCD@size
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
	line	572
setLCD@size:
	retlw	010h
	retlw	0

	global	setLCD@size
	global	_dev
	global	_done_init
	global	_pdev
	global	getlogicseq@F1268
	global	_f1
	global	_f2
	global	_f3
	global	_retm
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

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	115
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
	line	111
_logic_d1:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	112
_logic_d2:
       ds      5

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
getlogicseq@F1268:
       ds      16

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	114
_logic_d4:
       ds      5

psect	dataBANK3
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	113
_logic_d3:
       ds      5

psect	dataBANK3
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	116
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
;;Data sizes: Strings 260, constant 2, data 30, bss 30, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     65      76
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
;; (0) _main                                                 0     0      0    8505
;;                            _initlcd
;;                         _initkeypad
;;                        _getlogicseq
;; ---------------------------------------------------------------------------------
;; (1) _getlogicseq                                         62    62      0    8141
;;                                             61 BANK0      4     4      0
;;                                              0 BANK1     58    58      0
;;                             _scroll
;;                              _write
;;                               _scan
;;                        _startswitch
;;                              _delay
;;                             _strcpy
;;                              _itoaa
;;                             _strcat
;; ---------------------------------------------------------------------------------
;; (2) _startswitch                                          1     1      0    2749
;;                                             40 BANK0      1     1      0
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
;;DATA                 0      0      CD      12        0.0%
;;ABS                  0      0      C5       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       8       2        0.0%
;;BANK0               50     41      4C       5       95.0%
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
;;		line 83 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  694[COMMON] int 
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
	line	83
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	87
	
l3557:	
;prev11.c: 87: TRISB = 0b00001111;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	89
	
l3559:	
;prev11.c: 89: initlcd();
	fcall	_initlcd
	line	90
	
l3561:	
;prev11.c: 90: initkeypad();
	fcall	_initkeypad
	goto	l3563
	line	93
;prev11.c: 93: while(1){
	
l695:	
	line	95
	
l3563:	
;prev11.c: 95: getlogicseq();
	fcall	_getlogicseq
	goto	l3563
	line	96
	
l696:	
	line	93
	goto	l3563
	
l697:	
	line	102
	
l698:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_getlogicseq
psect	text538,local,class=CODE,delta=2
global __ptext538
__ptext538:

;; *************** function _getlogicseq *****************
;; Defined at:
;;		line 198 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
;;		_startswitch
;;		_delay
;;		_strcpy
;;		_itoaa
;;		_strcat
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text538
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	198
	global	__size_of_getlogicseq
	__size_of_getlogicseq	equ	__end_of_getlogicseq-_getlogicseq
	
_getlogicseq:	
	opt	stack 0
; Regs used in _getlogicseq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	201
	
l3361:	
;prev11.c: 201: scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
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
	line	206
	
l3363:	
;prev11.c: 205: int num ;
;prev11.c: 206: char snum[16]="";
	movlw	(getlogicseq@snum)&0ffh
	movwf	fsr0
	movlw	low(getlogicseq@F1268)
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
	line	207
	
l3365:	
;prev11.c: 207: int wf=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	line	208
	
l3367:	
;prev11.c: 208: int nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	line	209
	
l3369:	
;prev11.c: 209: int bf=0;
	clrf	(getlogicseq@bf)^080h
	clrf	(getlogicseq@bf+1)^080h
	line	210
	
l3371:	
;prev11.c: 210: int ccount=0;
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	214
	
l3373:	
;prev11.c: 211: char str[32];
;prev11.c: 214: write("1.SWT  2.REPRG",1,1);
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
	line	215
	
l3375:	
;prev11.c: 215: write("3.RESET",2,0);
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
	goto	l3377
	line	216
;prev11.c: 216: while(1)
	
l726:	
	line	218
	
l3377:	
;prev11.c: 217: {
;prev11.c: 218: if(retm==1)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_retm)^080h,w
	iorwf	(_retm+1)^080h,w
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l3383
u4470:
	line	221
	
l3379:	
;prev11.c: 219: {
;prev11.c: 221: retm=0;
	clrf	(_retm)^080h
	clrf	(_retm+1)^080h
	line	222
;prev11.c: 222: f1=0; f2=0; f3=0;
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	goto	l728
	line	223
	
l3381:	
;prev11.c: 223: return;
	goto	l728
	line	224
	
l727:	
	line	225
	
l3383:	
;prev11.c: 224: }
;prev11.c: 225: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	226
	
l3385:	
;prev11.c: 226: if(num==1)
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4481
	goto	u4480
u4481:
	goto	l729
u4480:
	line	228
	
l3387:	
;prev11.c: 227: {
;prev11.c: 228: f1=1;
	movlw	low(01h)
	movwf	(_f1)^080h
	movlw	high(01h)
	movwf	((_f1)^080h)+1
	line	229
	
l3389:	
;prev11.c: 229: f2=0;
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	line	230
	
l3391:	
;prev11.c: 230: f3=0;
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	231
	
l729:	
	line	232
;prev11.c: 231: }
;prev11.c: 232: if(num==2)
	movlw	02h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4491
	goto	u4490
u4491:
	goto	l730
u4490:
	line	234
	
l3393:	
;prev11.c: 233: {
;prev11.c: 234: f1=0;
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	line	235
	
l3395:	
;prev11.c: 235: f2=1;
	movlw	low(01h)
	movwf	(_f2)^080h
	movlw	high(01h)
	movwf	((_f2)^080h)+1
	line	236
	
l3397:	
;prev11.c: 236: f3=0;
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	237
	
l730:	
	line	238
;prev11.c: 237: }
;prev11.c: 238: if(num==3)
	movlw	03h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4501
	goto	u4500
u4501:
	goto	l3405
u4500:
	line	240
	
l3399:	
;prev11.c: 239: {
;prev11.c: 240: f1=0;
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	line	241
;prev11.c: 241: f2=0;
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	line	242
	
l3401:	
;prev11.c: 242: f3=1;
	movlw	low(01h)
	movwf	(_f3)^080h
	movlw	high(01h)
	movwf	((_f3)^080h)+1
	line	243
	
l3403:	
;prev11.c: 243: retm=1;
	movlw	low(01h)
	movwf	(_retm)^080h
	movlw	high(01h)
	movwf	((_retm)^080h)+1
	goto	l3405
	line	244
	
l731:	
	line	246
	
l3405:	
;prev11.c: 244: }
;prev11.c: 246: if(f1){
	movf	(_f1+1)^080h,w
	iorwf	(_f1)^080h,w
	skipnz
	goto	u4511
	goto	u4510
u4511:
	goto	l3409
u4510:
	line	247
	
l3407:	
;prev11.c: 247: startswitch();
	fcall	_startswitch
	line	248
;prev11.c: 248: }
	goto	l3377
	line	249
	
l732:	
	
l3409:	
;prev11.c: 249: else if(f2){ f1=0; f2=0; f3=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_f2+1)^080h,w
	iorwf	(_f2)^080h,w
	skipnz
	goto	u4521
	goto	u4520
u4521:
	goto	l3415
u4520:
	
l3411:	
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	250
;prev11.c: 250: goto START_SEQ;
	goto	l3421
	line	251
	
l3413:	
;prev11.c: 251: }
	goto	l3377
	line	252
	
l734:	
	
l3415:	
;prev11.c: 252: else if(f3){ f1=0; f2=0; f3=0;
	movf	(_f3+1)^080h,w
	iorwf	(_f3)^080h,w
	skipnz
	goto	u4531
	goto	u4530
u4531:
	goto	l3377
u4530:
	
l3417:	
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	253
	
l3419:	
;prev11.c: 253: retm=1;
	movlw	low(01h)
	movwf	(_retm)^080h
	movlw	high(01h)
	movwf	((_retm)^080h)+1
	goto	l3377
	line	255
	
l737:	
	goto	l3377
	line	256
	
l736:	
	goto	l3377
	
l733:	
	goto	l3377
	
l738:	
	line	216
	goto	l3377
	
l739:	
	goto	l3421
	line	259
;prev11.c: 255: }
;prev11.c: 256: }
;prev11.c: 259: START_SEQ:
	
l735:	
	line	260
	
l3421:	
;prev11.c: 260: write("Press 2. - Skip for Device",1,1);
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
	line	261
	
l3423:	
;prev11.c: 261: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	263
	
l3425:	
;prev11.c: 263: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	
l3427:	
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	264
	
l3429:	
;prev11.c: 264: strcpy(str,"Enter Logic DEV1:  ");
	movlw	(getlogicseq@str&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_8|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_8|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	265
	
l3431:	
;prev11.c: 265: write(str,1,1);
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
	line	266
	
l3433:	
;prev11.c: 266: write(logic_d1,2,0);
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
	line	268
;prev11.c: 268: while(1)
	
l740:	
	line	270
;prev11.c: 269: {
;prev11.c: 270: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	271
	
l3435:	
;prev11.c: 271: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4541
	goto	u4540
u4541:
	goto	l3439
u4540:
	
l3437:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4551
	goto	u4550
u4551:
	goto	l3453
u4550:
	goto	l3439
	
l743:	
	line	272
	
l3439:	
;prev11.c: 272: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4561
	goto	u4560
u4561:
	goto	l3455
u4560:
	line	274
	
l3441:	
;prev11.c: 273: {
;prev11.c: 274: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4571
	goto	u4570
u4571:
	goto	l745
u4570:
	line	275
	
l3443:	
;prev11.c: 275: strcpy(logic_d1,"");
	movlw	(_logic_d1&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_9|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_9|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	
l745:	
	line	276
;prev11.c: 276: write("---",2,0);
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
	line	277
;prev11.c: 277: itoaa(num, snum);
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
	line	278
	
l3445:	
;prev11.c: 278: strcat(logic_d1,snum);
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
	line	279
	
l3447:	
;prev11.c: 279: write( logic_d1,2,0); ;
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
	line	280
	
l3449:	
;prev11.c: 280: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	281
	
l3451:	
;prev11.c: 281: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3455
	line	282
	
l744:	
	line	283
;prev11.c: 282: }
;prev11.c: 283: }
	goto	l3455
	line	284
	
l741:	
	line	285
	
l3453:	
;prev11.c: 284: else{
;prev11.c: 285: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3455
	line	286
	
l746:	
	line	287
	
l3455:	
;prev11.c: 286: }
;prev11.c: 287: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4585
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4585:

	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l3459
u4580:
	goto	l3469
	line	288
	
l3457:	
;prev11.c: 288: break;
	goto	l3469
	
l747:	
	line	291
	
l3459:	
;prev11.c: 291: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l3465
u4590:
	line	293
	
l3461:	
;prev11.c: 292: {
;prev11.c: 293: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4601
	goto	u4600
u4601:
	goto	l740
u4600:
	line	294
	
l3463:	
;prev11.c: 294: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	295
;prev11.c: 295: break;
	goto	l3469
	line	296
	
l750:	
	line	297
;prev11.c: 296: }
;prev11.c: 297: }
	goto	l740
	line	298
	
l749:	
	
l3465:	
;prev11.c: 298: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4611
	goto	u4610
u4611:
	goto	l740
u4610:
	line	299
	
l3467:	
;prev11.c: 299: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l740
	line	300
	
l752:	
	goto	l740
	line	301
	
l751:	
	goto	l740
	
l753:	
	line	268
	goto	l740
	
l748:	
	line	304
	
l3469:	
;prev11.c: 300: }
;prev11.c: 301: }
;prev11.c: 304: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	305
	
l3471:	
;prev11.c: 305: strcpy(str,"Enter Logic DEV2:  ");
	movlw	(getlogicseq@str&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_11|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_11|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	306
	
l3473:	
;prev11.c: 306: write(str,1,1);
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
	line	307
	
l3475:	
;prev11.c: 307: write(logic_d2,2,0);
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
	goto	l3477
	line	309
;prev11.c: 309: while(1)
	
l754:	
	line	311
	
l3477:	
;prev11.c: 310: {
;prev11.c: 311: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	312
	
l3479:	
;prev11.c: 312: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4621
	goto	u4620
u4621:
	goto	l3483
u4620:
	
l3481:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l3497
u4630:
	goto	l3483
	
l757:	
	line	313
	
l3483:	
;prev11.c: 313: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l3499
u4640:
	line	314
	
l3485:	
;prev11.c: 314: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4651
	goto	u4650
u4651:
	goto	l759
u4650:
	line	315
	
l3487:	
;prev11.c: 315: strcpy(logic_d2,"");
	movlw	(_logic_d2&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_12|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_12|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	
l759:	
	line	316
;prev11.c: 316: write("---",2,0);
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
	line	317
;prev11.c: 317: itoaa(num, snum);
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
	line	318
	
l3489:	
;prev11.c: 318: strcat(logic_d2,snum);
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
	line	319
	
l3491:	
;prev11.c: 319: write( logic_d2,2,0); ;
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
	line	320
	
l3493:	
;prev11.c: 320: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	321
	
l3495:	
;prev11.c: 321: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3499
	line	322
	
l758:	
	line	323
;prev11.c: 322: }
;prev11.c: 323: }
	goto	l3499
	line	324
	
l755:	
	line	325
	
l3497:	
;prev11.c: 324: else{
;prev11.c: 325: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3499
	line	326
	
l760:	
	line	327
	
l3499:	
;prev11.c: 326: }
;prev11.c: 327: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4665
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4665:

	skipc
	goto	u4661
	goto	u4660
u4661:
	goto	l3503
u4660:
	goto	l3513
	line	328
	
l3501:	
;prev11.c: 328: break;
	goto	l3513
	
l761:	
	line	330
	
l3503:	
;prev11.c: 330: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4671
	goto	u4670
u4671:
	goto	l3509
u4670:
	line	332
	
l3505:	
;prev11.c: 331: {
;prev11.c: 332: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l3477
u4680:
	line	333
	
l3507:	
;prev11.c: 333: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	334
;prev11.c: 334: break;
	goto	l3513
	line	335
	
l764:	
	line	336
;prev11.c: 335: }
;prev11.c: 336: }
	goto	l3477
	line	337
	
l763:	
	
l3509:	
;prev11.c: 337: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l3477
u4690:
	line	338
	
l3511:	
;prev11.c: 338: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3477
	line	339
	
l766:	
	goto	l3477
	line	340
	
l765:	
	goto	l3477
	
l767:	
	line	309
	goto	l3477
	
l762:	
	line	343
	
l3513:	
;prev11.c: 339: }
;prev11.c: 340: }
;prev11.c: 343: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	344
	
l3515:	
;prev11.c: 344: strcpy(str,"Enter Logic DEV3:  ");
	movlw	(getlogicseq@str&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_14|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_14|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	345
	
l3517:	
;prev11.c: 345: write(str,1,1);
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
	line	346
	
l3519:	
;prev11.c: 346: write(logic_d3,2,0);
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
	goto	l3521
	line	348
;prev11.c: 348: while(1)
	
l768:	
	line	350
	
l3521:	
;prev11.c: 349: {
;prev11.c: 350: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	351
	
l3523:	
;prev11.c: 351: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4701
	goto	u4700
u4701:
	goto	l3527
u4700:
	
l3525:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l3541
u4710:
	goto	l3527
	
l771:	
	line	352
	
l3527:	
;prev11.c: 352: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l3543
u4720:
	line	353
	
l3529:	
;prev11.c: 353: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4731
	goto	u4730
u4731:
	goto	l773
u4730:
	line	354
	
l3531:	
;prev11.c: 354: strcpy(logic_d3,"");
	movlw	(_logic_d3&0ffh)
	movwf	(?_strcpy)
	movlw	(0x3/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_15|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_15|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	
l773:	
	line	355
;prev11.c: 355: write("---",2,0);
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
	line	356
;prev11.c: 356: itoaa(num, snum);
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
	line	357
	
l3533:	
;prev11.c: 357: strcat(logic_d3,snum);
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
	line	358
	
l3535:	
;prev11.c: 358: write( logic_d3,2,0); ;
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
	line	359
	
l3537:	
;prev11.c: 359: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	360
	
l3539:	
;prev11.c: 360: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3543
	line	361
	
l772:	
	line	362
;prev11.c: 361: }
;prev11.c: 362: }
	goto	l3543
	line	363
	
l769:	
	line	364
	
l3541:	
;prev11.c: 363: else{
;prev11.c: 364: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3543
	line	365
	
l774:	
	line	366
	
l3543:	
;prev11.c: 365: }
;prev11.c: 366: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4745
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4745:

	skipc
	goto	u4741
	goto	u4740
u4741:
	goto	l3547
u4740:
	goto	l728
	line	367
	
l3545:	
;prev11.c: 367: break;
	goto	l728
	
l775:	
	line	369
	
l3547:	
;prev11.c: 369: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l3553
u4750:
	line	371
	
l3549:	
;prev11.c: 370: {
;prev11.c: 371: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4761
	goto	u4760
u4761:
	goto	l3521
u4760:
	line	372
	
l3551:	
;prev11.c: 372: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	373
;prev11.c: 373: break;
	goto	l728
	line	374
	
l778:	
	line	375
;prev11.c: 374: }
;prev11.c: 375: }
	goto	l3521
	line	376
	
l777:	
	
l3553:	
;prev11.c: 376: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4771
	goto	u4770
u4771:
	goto	l3521
u4770:
	line	377
	
l3555:	
;prev11.c: 377: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3521
	line	378
	
l780:	
	goto	l3521
	line	379
	
l779:	
	goto	l3521
	
l781:	
	line	348
	goto	l3521
	
l776:	
	line	425
	
l728:	
	return
	opt stack 0
GLOBAL	__end_of_getlogicseq
	__end_of_getlogicseq:
;; =============== function _getlogicseq ends ============

	signat	_getlogicseq,88
	global	_startswitch
psect	text539,local,class=CODE,delta=2
global __ptext539
__ptext539:

;; *************** function _startswitch *****************
;; Defined at:
;;		line 145 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
;;		_write
;;		_strcmp
;;		_check
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text539
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	145
	global	__size_of_startswitch
	__size_of_startswitch	equ	__end_of_startswitch-_startswitch
	
_startswitch:	
	opt	stack 0
; Regs used in _startswitch: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	146
	
l3319:	
;prev11.c: 146: init_fun();
	fcall	_init_fun
	line	149
;prev11.c: 149: strcpy(plo,lo);
	movlw	(_plo&0ffh)
	movwf	(?_strcpy)
	movlw	(0x3/2)
	movwf	(?_strcpy+1)
	movlw	(_lo&0ffh)
	movwf	0+(?_strcpy)+02h
	movlw	(0x0/2)
	movwf	1+(?_strcpy)+02h
	fcall	_strcpy
	line	150
;prev11.c: 150: strcpy(lo,"000");;
	movlw	(_lo&0ffh)
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_2|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_2|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	151
	
l3321:	
;prev11.c: 151: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l3325
u4390:
	line	152
	
l3323:	
;prev11.c: 152: lo[0]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(_lo)
	goto	l3325
	
l711:	
	line	153
	
l3325:	
;prev11.c: 153: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u4401
	goto	u4400
u4401:
	goto	l3329
u4400:
	line	154
	
l3327:	
;prev11.c: 154: lo[1]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+01h
	goto	l3329
	
l712:	
	line	155
	
l3329:	
;prev11.c: 155: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l3333
u4410:
	line	156
	
l3331:	
;prev11.c: 156: lo[2]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+02h
	goto	l3333
	
l713:	
	line	159
	
l3333:	
;prev11.c: 159: pdev=dev;
	movf	(_dev+1),w
	clrf	(_pdev+1)
	addwf	(_pdev+1)
	movf	(_dev),w
	clrf	(_pdev)
	addwf	(_pdev)

	line	160
	
l3335:	
;prev11.c: 160: dev=0b0000;
	clrf	(_dev)
	clrf	(_dev+1)
	line	161
	
l3337:	
;prev11.c: 161: write("Press 2 to REPRG",2,0);
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
	line	163
	
l3339:	
;prev11.c: 163: if(strcmp(lo,plo)!=0)
	movlw	(_plo&0ffh)
	movwf	(?_strcmp)
	movlw	(0x3/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	iorwf	(0+(?_strcmp)),w
	skipnz
	goto	u4421
	goto	u4420
u4421:
	goto	l721
u4420:
	line	166
	
l3341:	
;prev11.c: 164: {
;prev11.c: 166: write(lo,1,1);
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
	line	170
;prev11.c: 170: if(check(lo,logic_d1))
	movlw	(_logic_d1&0ffh)
	movwf	(?_check)
	movlw	(0x1/2)
	movwf	(?_check+1)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4431
	goto	u4430
u4431:
	goto	l3345
u4430:
	line	171
	
l3343:	
;prev11.c: 171: dev=dev|0b0001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(01h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3347
	line	172
	
l715:	
	line	173
	
l3345:	
;prev11.c: 172: else
;prev11.c: 173: dev=dev&0b0110;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(06h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3347
	
l716:	
	line	175
	
l3347:	
;prev11.c: 175: if(check(lo,logic_d2))
	movlw	(_logic_d2&0ffh)
	movwf	(?_check)
	movlw	(0x1/2)
	movwf	(?_check+1)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4441
	goto	u4440
u4441:
	goto	l3351
u4440:
	line	176
	
l3349:	
;prev11.c: 176: dev=dev|0b0010;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(02h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3353
	line	177
	
l717:	
	line	178
	
l3351:	
;prev11.c: 177: else
;prev11.c: 178: dev=dev&0b0101;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(05h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3353
	
l718:	
	line	181
	
l3353:	
;prev11.c: 181: if(check(lo,logic_d3))
	movlw	(_logic_d3&0ffh)
	movwf	(?_check)
	movlw	(0x3/2)
	movwf	(?_check+1)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4451
	goto	u4450
u4451:
	goto	l3357
u4450:
	line	182
	
l3355:	
;prev11.c: 182: dev=dev|0b0100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(04h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l720
	line	183
	
l719:	
	line	184
	
l3357:	
;prev11.c: 183: else
;prev11.c: 184: dev=dev&0b0011;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(03h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	
l720:	
	line	189
;prev11.c: 189: PORTA=dev;
	movf	(_dev),w
	movwf	(5)	;volatile
	goto	l721
	line	190
	
l714:	
	goto	l721
	line	191
	
l3359:	
	line	193
;prev11.c: 190: }
;prev11.c: 191: return;
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_startswitch
	__end_of_startswitch:
;; =============== function _startswitch ends ============

	signat	_startswitch,88
	global	_scroll
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:

;; *************** function _scroll *****************
;; Defined at:
;;		line 615 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text540
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	615
	global	__size_of_scroll
	__size_of_scroll	equ	__end_of_scroll-_scroll
	
_scroll:	
	opt	stack 1
; Regs used in _scroll: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	617
	
l3279:	
;prev11.c: 617: write(str,1,0); ;
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
	line	618
	
l3281:	
;prev11.c: 618: int loopn=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@loopn)
	clrf	(scroll@loopn+1)
	line	620
	
l3283:	
;prev11.c: 619: int i;
;prev11.c: 620: int len=0;;
	clrf	(scroll@len)
	clrf	(scroll@len+1)
	line	621
	
l3285:	
;prev11.c: 621: int st=0;
	clrf	(scroll@st)
	clrf	(scroll@st+1)
	line	623
;prev11.c: 622: int en;
;prev11.c: 623: while(str[i]!='\0')
	goto	l3289
	
l863:	
	line	624
	
l3287:	
;prev11.c: 624: { i++;
	movlw	low(01h)
	addwf	(scroll@i),f
	skipnc
	incf	(scroll@i+1),f
	movlw	high(01h)
	addwf	(scroll@i+1),f
	line	625
;prev11.c: 625: len++;
	movlw	low(01h)
	addwf	(scroll@len),f
	skipnc
	incf	(scroll@len+1),f
	movlw	high(01h)
	addwf	(scroll@len+1),f
	goto	l3289
	line	626
	
l862:	
	line	623
	
l3289:	
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
	goto	u4341
	goto	u4340
u4341:
	goto	l3287
u4340:
	goto	l3291
	
l864:	
	line	627
	
l3291:	
;prev11.c: 626: }
;prev11.c: 627: en=len-1;
	movf	(scroll@len),w
	addlw	low(-1)
	movwf	(scroll@en)
	movf	(scroll@len+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(scroll@en)
	line	629
	
l3293:	
;prev11.c: 629: if(len>32)
	movf	(scroll@len+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(021h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4355
	movlw	low(021h)
	subwf	(scroll@len),w
u4355:

	skipc
	goto	u4351
	goto	u4350
u4351:
	goto	l874
u4350:
	line	633
	
l3295:	
;prev11.c: 630: {
;prev11.c: 632: char dest [32] ;
;prev11.c: 633: int startat=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@startat)
	clrf	(scroll@startat+1)
	line	634
	
l3297:	
;prev11.c: 634: int endat=31;
	movlw	low(01Fh)
	movwf	(scroll@endat)
	movlw	high(01Fh)
	movwf	((scroll@endat))+1
	goto	l3299
	line	635
;prev11.c: 635: START:
	
l866:	
	line	636
	
l3299:	
;prev11.c: 636: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	637
;prev11.c: 637: while(i++<32)
	goto	l3305
	
l868:	
	line	640
	
l3301:	
;prev11.c: 638: {
;prev11.c: 640: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	641
	
l3303:	
;prev11.c: 641: cmd(0x1E);
	movlw	low(01Eh)
	movwf	(?_cmd)
	movlw	high(01Eh)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3305
	line	644
	
l867:	
	line	637
	
l3305:	
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
	goto	l3301
u4360:
	goto	l3307
	
l869:	
	line	646
	
l3307:	
;prev11.c: 644: }
;prev11.c: 646: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	647
;prev11.c: 647: while(i++<32)
	goto	l3313
	
l871:	
	line	650
	
l3309:	
;prev11.c: 648: {
;prev11.c: 650: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	651
	
l3311:	
;prev11.c: 651: cmd(0x18);
	movlw	low(018h)
	movwf	(?_cmd)
	movlw	high(018h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3313
	line	654
	
l870:	
	line	647
	
l3313:	
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
	goto	u4375
	movlw	low(021h)
	subwf	((scroll@i)),w
u4375:

	skipc
	goto	u4371
	goto	u4370
u4371:
	goto	l3309
u4370:
	goto	l3315
	
l872:	
	line	655
	
l3315:	
;prev11.c: 654: }
;prev11.c: 655: if(loopn++<loops)
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
	goto	u4385
	movf	(scroll@loops),w
	subwf	0+(??_scroll+0)+0,w
u4385:

	skipnc
	goto	u4381
	goto	u4380
u4381:
	goto	l874
u4380:
	goto	l3299
	line	656
	
l3317:	
;prev11.c: 656: goto START;
	goto	l3299
	
l873:	
	goto	l874
	line	657
	
l865:	
	line	662
	
l874:	
	return
	opt stack 0
GLOBAL	__end_of_scroll
	__end_of_scroll:
;; =============== function _scroll ends ============

	signat	_scroll,8312
	global	_init_fun
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:

;; *************** function _init_fun *****************
;; Defined at:
;;		line 134 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text541
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	134
	global	__size_of_init_fun
	__size_of_init_fun	equ	__end_of_init_fun-_init_fun
	
_init_fun:	
	opt	stack 0
; Regs used in _init_fun: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	135
	
l3269:	
;prev11.c: 135: if(done_init==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_done_init+1)),w
	iorwf	((_done_init)),w
	skipz
	goto	u4331
	goto	u4330
u4331:
	goto	l708
u4330:
	line	138
	
l3271:	
;prev11.c: 136: {
;prev11.c: 138: TRISA=0b110000;
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	139
	
l3273:	
;prev11.c: 139: PORTA=0x0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	140
	
l3275:	
;prev11.c: 140: done_init=1;
	movlw	low(01h)
	movwf	(_done_init)
	movlw	high(01h)
	movwf	((_done_init))+1
	line	141
	
l3277:	
;prev11.c: 141: write("Sensing...",1,1);
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
	goto	l708
	line	142
	
l707:	
	line	143
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_init_fun
	__end_of_init_fun:
;; =============== function _init_fun ends ============

	signat	_init_fun,88
	global	_write
psect	text542,local,class=CODE,delta=2
global __ptext542
__ptext542:

;; *************** function _write *****************
;; Defined at:
;;		line 594 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text542
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	594
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 1
; Regs used in _write: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	595
	
l3251:	
;prev11.c: 595: if(erase==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@erase),w
	iorwf	(write@erase+1),w
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l3255
u4300:
	line	596
	
l3253:	
;prev11.c: 596: clearlcd();
	fcall	_clearlcd
	goto	l3255
	
l853:	
	line	598
	
l3255:	
;prev11.c: 598: if(line==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@line),w
	iorwf	(write@line+1),w
	skipz
	goto	u4311
	goto	u4310
u4311:
	goto	l3259
u4310:
	line	599
	
l3257:	
;prev11.c: 599: cmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_cmd)
	movlw	high(0C0h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3261
	line	600
	
l854:	
	line	601
	
l3259:	
;prev11.c: 600: else
;prev11.c: 601: cmd(0x2);
	movlw	low(02h)
	movwf	(?_cmd)
	movlw	high(02h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3261
	
l855:	
	line	603
	
l3261:	
;prev11.c: 603: int i=0;
	clrf	(write@i)
	clrf	(write@i+1)
	line	604
;prev11.c: 604: while(str[i]!='\0')
	goto	l3267
	
l857:	
	line	606
	
l3263:	
;prev11.c: 605: {
;prev11.c: 606: dat(str[i]);
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
	line	607
	
l3265:	
;prev11.c: 607: i++;
	movlw	low(01h)
	addwf	(write@i),f
	skipnc
	incf	(write@i+1),f
	movlw	high(01h)
	addwf	(write@i+1),f
	goto	l3267
	line	608
	
l856:	
	line	604
	
l3267:	
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
	goto	l3263
u4320:
	goto	l859
	
l858:	
	line	611
	
l859:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,12408
	global	_clearlcd
psect	text543,local,class=CODE,delta=2
global __ptext543
__ptext543:

;; *************** function _clearlcd *****************
;; Defined at:
;;		line 536 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text543
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	536
	global	__size_of_clearlcd
	__size_of_clearlcd	equ	__end_of_clearlcd-_clearlcd
	
_clearlcd:	
	opt	stack 1
; Regs used in _clearlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	537
	
l3249:	
;prev11.c: 537: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	538
	
l837:	
	return
	opt stack 0
GLOBAL	__end_of_clearlcd
	__end_of_clearlcd:
;; =============== function _clearlcd ends ============

	signat	_clearlcd,88
	global	_scan
psect	text544,local,class=CODE,delta=2
global __ptext544
__ptext544:

;; *************** function _scan *****************
;; Defined at:
;;		line 676 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text544
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	676
	global	__size_of_scan
	__size_of_scan	equ	__end_of_scan-_scan
	
_scan:	
	opt	stack 4
; Regs used in _scan: [wreg+status,2+status,0+pclath+cstack]
	line	677
	
l3141:	
;prev11.c: 677: actrow(1) ;
	movlw	low(01h)
	movwf	(?_actrow)
	movlw	high(01h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	678
	
l3143:	
;prev11.c: 678: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l880
u4140:
	line	679
	
l3145:	
;prev11.c: 679: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l881
	
l3147:	
	goto	l881
	
l3149:	
	goto	l3167
	line	680
	
l880:	
;prev11.c: 680: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l883
u4150:
	line	681
	
l3151:	
;prev11.c: 681: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l881
	
l3153:	
	goto	l881
	
l3155:	
	goto	l3167
	line	682
	
l883:	
;prev11.c: 682: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l885
u4160:
	line	683
	
l3157:	
;prev11.c: 683: return 2;
	movlw	low(02h)
	movwf	(?_scan)
	movlw	high(02h)
	movwf	((?_scan))+1
	goto	l881
	
l3159:	
	goto	l881
	
l3161:	
	goto	l3167
	line	684
	
l885:	
;prev11.c: 684: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l3167
u4170:
	line	685
	
l3163:	
;prev11.c: 685: return 3;
	movlw	low(03h)
	movwf	(?_scan)
	movlw	high(03h)
	movwf	((?_scan))+1
	goto	l881
	
l3165:	
	goto	l881
	
l887:	
	goto	l3167
	line	687
	
l886:	
	goto	l3167
	
l884:	
	goto	l3167
	
l882:	
	
l3167:	
;prev11.c: 687: actrow(2) ;
	movlw	low(02h)
	movwf	(?_actrow)
	movlw	high(02h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	689
	
l3169:	
;prev11.c: 689: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l888
u4180:
	line	690
	
l3171:	
;prev11.c: 690: return 4;
	movlw	low(04h)
	movwf	(?_scan)
	movlw	high(04h)
	movwf	((?_scan))+1
	goto	l881
	
l3173:	
	goto	l881
	
l3175:	
	goto	l3193
	line	691
	
l888:	
;prev11.c: 691: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l890
u4190:
	line	692
	
l3177:	
;prev11.c: 692: return 5;
	movlw	low(05h)
	movwf	(?_scan)
	movlw	high(05h)
	movwf	((?_scan))+1
	goto	l881
	
l3179:	
	goto	l881
	
l3181:	
	goto	l3193
	line	693
	
l890:	
;prev11.c: 693: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4201
	goto	u4200
u4201:
	goto	l892
u4200:
	line	694
	
l3183:	
;prev11.c: 694: return 6;
	movlw	low(06h)
	movwf	(?_scan)
	movlw	high(06h)
	movwf	((?_scan))+1
	goto	l881
	
l3185:	
	goto	l881
	
l3187:	
	goto	l3193
	line	695
	
l892:	
;prev11.c: 695: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l3193
u4210:
	line	696
	
l3189:	
;prev11.c: 696: return 7;
	movlw	low(07h)
	movwf	(?_scan)
	movlw	high(07h)
	movwf	((?_scan))+1
	goto	l881
	
l3191:	
	goto	l881
	
l894:	
	goto	l3193
	line	698
	
l893:	
	goto	l3193
	
l891:	
	goto	l3193
	
l889:	
	
l3193:	
;prev11.c: 698: actrow(3) ;
	movlw	low(03h)
	movwf	(?_actrow)
	movlw	high(03h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	700
	
l3195:	
;prev11.c: 700: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l895
u4220:
	line	701
	
l3197:	
;prev11.c: 701: return 8;
	movlw	low(08h)
	movwf	(?_scan)
	movlw	high(08h)
	movwf	((?_scan))+1
	goto	l881
	
l3199:	
	goto	l881
	
l3201:	
	goto	l3219
	line	702
	
l895:	
;prev11.c: 702: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4231
	goto	u4230
u4231:
	goto	l897
u4230:
	line	703
	
l3203:	
;prev11.c: 703: return 9;
	movlw	low(09h)
	movwf	(?_scan)
	movlw	high(09h)
	movwf	((?_scan))+1
	goto	l881
	
l3205:	
	goto	l881
	
l3207:	
	goto	l3219
	line	704
	
l897:	
;prev11.c: 704: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l899
u4240:
	line	705
	
l3209:	
;prev11.c: 705: return 10;
	movlw	low(0Ah)
	movwf	(?_scan)
	movlw	high(0Ah)
	movwf	((?_scan))+1
	goto	l881
	
l3211:	
	goto	l881
	
l3213:	
	goto	l3219
	line	706
	
l899:	
;prev11.c: 706: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l3219
u4250:
	line	707
	
l3215:	
;prev11.c: 707: return 11;
	movlw	low(0Bh)
	movwf	(?_scan)
	movlw	high(0Bh)
	movwf	((?_scan))+1
	goto	l881
	
l3217:	
	goto	l881
	
l901:	
	goto	l3219
	line	710
	
l900:	
	goto	l3219
	
l898:	
	goto	l3219
	
l896:	
	
l3219:	
;prev11.c: 710: actrow(4) ;
	movlw	low(04h)
	movwf	(?_actrow)
	movlw	high(04h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	712
	
l3221:	
;prev11.c: 712: if( RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l902
u4260:
	line	713
	
l3223:	
;prev11.c: 713: return 12;
	movlw	low(0Ch)
	movwf	(?_scan)
	movlw	high(0Ch)
	movwf	((?_scan))+1
	goto	l881
	
l3225:	
	goto	l881
	
l3227:	
	goto	l3245
	line	714
	
l902:	
;prev11.c: 714: else if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l904
u4270:
	line	715
	
l3229:	
;prev11.c: 715: return 13;
	movlw	low(0Dh)
	movwf	(?_scan)
	movlw	high(0Dh)
	movwf	((?_scan))+1
	goto	l881
	
l3231:	
	goto	l881
	
l3233:	
	goto	l3245
	line	716
	
l904:	
;prev11.c: 716: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l906
u4280:
	line	717
	
l3235:	
;prev11.c: 717: return 14;
	movlw	low(0Eh)
	movwf	(?_scan)
	movlw	high(0Eh)
	movwf	((?_scan))+1
	goto	l881
	
l3237:	
	goto	l881
	
l3239:	
	goto	l3245
	line	718
	
l906:	
;prev11.c: 718: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l3245
u4290:
	line	719
	
l3241:	
;prev11.c: 719: return 15;
	movlw	low(0Fh)
	movwf	(?_scan)
	movlw	high(0Fh)
	movwf	((?_scan))+1
	goto	l881
	
l3243:	
	goto	l881
	
l908:	
	goto	l3245
	line	723
	
l907:	
	goto	l3245
	
l905:	
	goto	l3245
	
l903:	
	
l3245:	
;prev11.c: 723: return 99;
	movlw	low(063h)
	movwf	(?_scan)
	movlw	high(063h)
	movwf	((?_scan))+1
	goto	l881
	
l3247:	
	line	727
	
l881:	
	return
	opt stack 0
GLOBAL	__end_of_scan
	__end_of_scan:
;; =============== function _scan ends ============

	signat	_scan,90
	global	_initlcd
psect	text545,local,class=CODE,delta=2
global __ptext545
__ptext545:

;; *************** function _initlcd *****************
;; Defined at:
;;		line 518 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text545
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	518
	global	__size_of_initlcd
	__size_of_initlcd	equ	__end_of_initlcd-_initlcd
	
_initlcd:	
	opt	stack 4
; Regs used in _initlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	520
	
l3129:	
;prev11.c: 520: TRISC=0b111110;
	movlw	(03Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	522
	
l3131:	
;prev11.c: 522: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	524
	
l3133:	
;prev11.c: 524: cmd(0x38);
	movlw	low(038h)
	movwf	(?_cmd)
	movlw	high(038h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	526
	
l3135:	
;prev11.c: 526: cmd(0x0C);
	movlw	low(0Ch)
	movwf	(?_cmd)
	movlw	high(0Ch)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	528
	
l3137:	
;prev11.c: 528: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	530
	
l3139:	
;prev11.c: 530: cmd(0x80);
	movlw	low(080h)
	movwf	(?_cmd)
	movlw	high(080h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	534
	
l834:	
	return
	opt stack 0
GLOBAL	__end_of_initlcd
	__end_of_initlcd:
;; =============== function _initlcd ends ============

	signat	_initlcd,88
	global	_actrow
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:

;; *************** function _actrow *****************
;; Defined at:
;;		line 735 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text546
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	735
	global	__size_of_actrow
	__size_of_actrow	equ	__end_of_actrow-_actrow
	
_actrow:	
	opt	stack 4
; Regs used in _actrow: [wreg+status,2+status,0+pclath+cstack]
	line	736
	
l3109:	
;prev11.c: 736: resetout();
	fcall	_resetout
	line	738
	
l3111:	
;prev11.c: 738: if(n==1)
	movlw	01h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l3115
u4100:
	line	740
	
l3113:	
;prev11.c: 739: {
;prev11.c: 740: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	741
;prev11.c: 741: }
	goto	l3127
	line	742
	
l914:	
	
l3115:	
;prev11.c: 742: else if(n==2)
	movlw	02h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l3119
u4110:
	line	744
	
l3117:	
;prev11.c: 743: {
;prev11.c: 744: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	745
;prev11.c: 745: }
	goto	l3127
	line	746
	
l916:	
	
l3119:	
;prev11.c: 746: else if(n==3)
	movlw	03h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l3123
u4120:
	line	748
	
l3121:	
;prev11.c: 747: {
;prev11.c: 748: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	749
;prev11.c: 749: }
	goto	l3127
	line	750
	
l918:	
	
l3123:	
;prev11.c: 750: else if(n==4)
	movlw	04h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l3127
u4130:
	line	752
	
l3125:	
;prev11.c: 751: {
;prev11.c: 752: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	goto	l3127
	line	753
	
l920:	
	goto	l3127
	line	754
	
l919:	
	goto	l3127
	
l917:	
	goto	l3127
	
l915:	
	
l3127:	
;prev11.c: 753: }
;prev11.c: 754: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	757
	
l921:	
	return
	opt stack 0
GLOBAL	__end_of_actrow
	__end_of_actrow:
;; =============== function _actrow ends ============

	signat	_actrow,4216
	global	_dat
psect	text547,local,class=CODE,delta=2
global __ptext547
__ptext547:

;; *************** function _dat *****************
;; Defined at:
;;		line 552 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text547
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	552
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 2
; Regs used in _dat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	553
	
l3097:	
;prev11.c: 553: setLCD(Command);
	movf	(dat@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(dat@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	555
	
l3099:	
;prev11.c: 555: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	557
	
l3101:	
;prev11.c: 557: RB5=1;
	bsf	(53/8),(53)&7
	line	559
	
l3103:	
;prev11.c: 559: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	561
	
l3105:	
;prev11.c: 561: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	563
	
l3107:	
;prev11.c: 563: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	569
	
l843:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text548,local,class=CODE,delta=2
global __ptext548
__ptext548:

;; *************** function _cmd *****************
;; Defined at:
;;		line 540 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text548
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	540
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 2
; Regs used in _cmd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	542
	
l3085:	
;prev11.c: 542: setLCD(Command);
	movf	(cmd@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(cmd@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	543
	
l3087:	
;prev11.c: 543: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	544
	
l3089:	
;prev11.c: 544: RB5=1;
	bsf	(53/8),(53)&7
	line	545
	
l3091:	
;prev11.c: 545: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	546
	
l3093:	
;prev11.c: 546: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	547
	
l3095:	
;prev11.c: 547: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	549
	
l840:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_itoaa
psect	text549,local,class=CODE,delta=2
global __ptext549
__ptext549:

;; *************** function _itoaa *****************
;; Defined at:
;;		line 491 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text549
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	491
	global	__size_of_itoaa
	__size_of_itoaa	equ	__end_of_itoaa-_itoaa
	
_itoaa:	
	opt	stack 5
; Regs used in _itoaa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	492
	
l3037:	
;prev11.c: 492: int count=0,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@count)
	clrf	(itoaa@count+1)
	line	493
	
l3039:	
;prev11.c: 493: if(ptr==(0))
	movf	(itoaa@ptr),f
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l3043
u4030:
	goto	l825
	line	494
	
l3041:	
;prev11.c: 494: return 0;
;	Return value of _itoaa is never used
	goto	l825
	
l824:	
	line	495
	
l3043:	
;prev11.c: 495: if(value==0)
	movf	((itoaa@value+1)),w
	iorwf	((itoaa@value)),w
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l826
u4040:
	line	497
	
l3045:	
;prev11.c: 496: {
;prev11.c: 497: *ptr='0';
	movlw	(030h)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l825
	line	498
	
l3047:	
;prev11.c: 498: return 1;
;	Return value of _itoaa is never used
	goto	l825
	line	499
	
l826:	
	line	501
;prev11.c: 499: }
;prev11.c: 501: if(value<0)
	btfss	(itoaa@value+1),7
	goto	u4051
	goto	u4050
u4051:
	goto	l3057
u4050:
	line	503
	
l3049:	
;prev11.c: 502: {
;prev11.c: 503: value*=(-1);
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

	line	504
	
l3051:	
;prev11.c: 504: *ptr++='-';
	movlw	(02Dh)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3053:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	line	505
	
l3055:	
;prev11.c: 505: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	goto	l3057
	line	506
	
l827:	
	line	507
	
l3057:	
;prev11.c: 506: }
;prev11.c: 507: for(temp=value;temp>0;temp/=10,ptr++);
	movf	(itoaa@value+1),w
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3059:	
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
	goto	l3063
u4060:
	goto	l3069
	
l3061:	
	goto	l3069
	
l828:	
	
l3063:	
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

	
l3065:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	
l3067:	
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
	goto	l3063
u4070:
	goto	l3069
	
l829:	
	line	508
	
l3069:	
;prev11.c: 508: *ptr='\0';
	movf	(itoaa@ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	509
	
l3071:	
;prev11.c: 509: for(temp=value;temp>0;temp/=10)
	movf	(itoaa@value+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3073:	
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
	goto	l3077
u4080:
	goto	l825
	
l3075:	
	goto	l825
	line	510
	
l830:	
	line	511
	
l3077:	
;prev11.c: 510: {
;prev11.c: 511: *--ptr=temp%10+'0';
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
	line	512
	
l3079:	
;prev11.c: 512: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	line	509
	
l3081:	
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

	
l3083:	
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
	goto	l3077
u4090:
	goto	l825
	
l831:	
	line	515
;prev11.c: 513: }
;prev11.c: 514: return count;
;	Return value of _itoaa is never used
	
l825:	
	return
	opt stack 0
GLOBAL	__end_of_itoaa
	__end_of_itoaa:
;; =============== function _itoaa ends ============

	signat	_itoaa,8314
	global	___awmod
psect	text550,local,class=CODE,delta=2
global __ptext550
__ptext550:

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
psect	text550
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3003:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3941
	goto	u3940
u3941:
	goto	l3007
u3940:
	line	10
	
l3005:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3007
	line	12
	
l1161:	
	line	13
	
l3007:	
	btfss	(___awmod@divisor+1),7
	goto	u3951
	goto	u3950
u3951:
	goto	l3011
u3950:
	line	14
	
l3009:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3011
	
l1162:	
	line	15
	
l3011:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3961
	goto	u3960
u3961:
	goto	l3029
u3960:
	line	16
	
l3013:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3019
	
l1165:	
	line	18
	
l3015:	
	movlw	01h
	
u3975:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3975
	line	19
	
l3017:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3019
	line	20
	
l1164:	
	line	17
	
l3019:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l3015
u3980:
	goto	l3021
	
l1166:	
	goto	l3021
	line	21
	
l1167:	
	line	22
	
l3021:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3995
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3995:
	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l3025
u3990:
	line	23
	
l3023:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3025
	
l1168:	
	line	24
	
l3025:	
	movlw	01h
	
u4005:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4005
	line	25
	
l3027:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l3021
u4010:
	goto	l3029
	
l1169:	
	goto	l3029
	line	26
	
l1163:	
	line	27
	
l3029:	
	movf	(___awmod@sign),w
	skipz
	goto	u4020
	goto	l3033
u4020:
	line	28
	
l3031:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3033
	
l1170:	
	line	29
	
l3033:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1171
	
l3035:	
	line	30
	
l1171:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text551,local,class=CODE,delta=2
global __ptext551
__ptext551:

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
psect	text551
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2963:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3841
	goto	u3840
u3841:
	goto	l2967
u3840:
	line	11
	
l2965:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2967
	line	13
	
l1093:	
	line	14
	
l2967:	
	btfss	(___awdiv@dividend+1),7
	goto	u3851
	goto	u3850
u3851:
	goto	l2973
u3850:
	line	15
	
l2969:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2971:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2973
	line	17
	
l1094:	
	line	18
	
l2973:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2975:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3861
	goto	u3860
u3861:
	goto	l2995
u3860:
	line	20
	
l2977:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2983
	
l1097:	
	line	22
	
l2979:	
	movlw	01h
	
u3875:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3875
	line	23
	
l2981:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2983
	line	24
	
l1096:	
	line	21
	
l2983:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l2979
u3880:
	goto	l2985
	
l1098:	
	goto	l2985
	line	25
	
l1099:	
	line	26
	
l2985:	
	movlw	01h
	
u3895:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3895
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3905
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3905:
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l2991
u3900:
	line	28
	
l2987:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2989:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2991
	line	30
	
l1100:	
	line	31
	
l2991:	
	movlw	01h
	
u3915:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3915
	line	32
	
l2993:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l2985
u3920:
	goto	l2995
	
l1101:	
	goto	l2995
	line	33
	
l1095:	
	line	34
	
l2995:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3930
	goto	l2999
u3930:
	line	35
	
l2997:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2999
	
l1102:	
	line	36
	
l2999:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1103
	
l3001:	
	line	37
	
l1103:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text552,local,class=CODE,delta=2
global __ptext552
__ptext552:

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
psect	text552
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2951:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2953
	line	6
	
l953:	
	line	7
	
l2953:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l954
u3800:
	line	8
	
l2955:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l954:	
	line	9
	movlw	01h
	
u3815:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3815
	line	10
	
l2957:	
	movlw	01h
	
u3825:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3825
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l2953
u3830:
	goto	l2959
	
l955:	
	line	12
	
l2959:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l956
	
l2961:	
	line	13
	
l956:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_resetout
psect	text553,local,class=CODE,delta=2
global __ptext553
__ptext553:

;; *************** function _resetout *****************
;; Defined at:
;;		line 731 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text553
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	731
	global	__size_of_resetout
	__size_of_resetout	equ	__end_of_resetout-_resetout
	
_resetout:	
	opt	stack 4
; Regs used in _resetout: []
	line	732
	
l2949:	
;prev11.c: 732: RC2=0;RC3=0;RB6=0;RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	bcf	(59/8),(59)&7
	bcf	(54/8),(54)&7
	bcf	(55/8),(55)&7
	line	733
	
l911:	
	return
	opt stack 0
GLOBAL	__end_of_resetout
	__end_of_resetout:
;; =============== function _resetout ends ============

	signat	_resetout,88
	global	_setLCD
psect	text554,local,class=CODE,delta=2
global __ptext554
__ptext554:

;; *************** function _setLCD *****************
;; Defined at:
;;		line 571 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text554
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	571
	global	__size_of_setLCD
	__size_of_setLCD	equ	__end_of_setLCD-_setLCD
	
_setLCD:	
	opt	stack 2
; Regs used in _setLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	576
	
l2935:	
;prev11.c: 572: const int size=8*sizeof(int);
;prev11.c: 573: int vbool[8*sizeof(int)];
;prev11.c: 574: int i;;
;prev11.c: 576: for (i = 0; i <size; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLCD@i)
	clrf	(setLCD@i+1)
	
l2937:	
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
	goto	u3615
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3615:

	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l2941
u3610:
	goto	l2947
	
l2939:	
	goto	l2947
	line	577
	
l848:	
	line	578
	
l2941:	
;prev11.c: 577: {
;prev11.c: 578: vbool[i] = number<<i < 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(setLCD@i),w
	movwf	(??_setLCD+0)+0
	movf	(setLCD@number+1),w
	movwf	(??_setLCD+1)+0+1
	movf	(setLCD@number),w
	movwf	(??_setLCD+1)+0
	goto	u3624
u3625:
	clrc
	rlf	(??_setLCD+1)+0,f
	rlf	(??_setLCD+1)+1,f
u3624:
	decfsz	(??_setLCD+0)+0,f
	goto	u3625
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
	line	576
	
l2943:	
	movlw	low(01h)
	addwf	(setLCD@i),f
	skipnc
	incf	(setLCD@i+1),f
	movlw	high(01h)
	addwf	(setLCD@i+1),f
	
l2945:	
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
	goto	u3635
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3635:

	skipc
	goto	u3631
	goto	u3630
u3631:
	goto	l2941
u3630:
	goto	l2947
	
l849:	
	line	581
	
l2947:	
;prev11.c: 579: }
;prev11.c: 581: RD0=vbool[size-1];
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
	goto	u3641
	goto	u3640
	
u3641:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u3654
u3640:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u3654:
	line	582
;prev11.c: 582: RD1=vbool[size-2];
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
	goto	u3661
	goto	u3660
	
u3661:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u3674
u3660:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u3674:
	line	583
;prev11.c: 583: RD2=vbool[size-3];
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
	goto	u3681
	goto	u3680
	
u3681:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	goto	u3694
u3680:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
u3694:
	line	584
;prev11.c: 584: RD3=vbool[size-4];
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
	goto	u3701
	goto	u3700
	
u3701:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	goto	u3714
u3700:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
u3714:
	line	585
;prev11.c: 585: RD4=vbool[size-5];
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
	goto	u3721
	goto	u3720
	
u3721:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3734
u3720:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3734:
	line	586
;prev11.c: 586: RD5=vbool[size-6];
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
	goto	u3741
	goto	u3740
	
u3741:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3754
u3740:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3754:
	line	587
;prev11.c: 587: RD6=vbool[size-7];
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
	goto	u3761
	goto	u3760
	
u3761:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3774
u3760:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3774:
	line	588
;prev11.c: 588: RD7=vbool[size-8];
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
	goto	u3781
	goto	u3780
	
u3781:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3794
u3780:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3794:
	line	592
	
l850:	
	return
	opt stack 0
GLOBAL	__end_of_setLCD
	__end_of_setLCD:
;; =============== function _setLCD ends ============

	signat	_setLCD,4216
	global	_strcat
psect	text555,local,class=CODE,delta=2
global __ptext555
__ptext555:

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
psect	text555
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcat.c"
	line	10
	global	__size_of_strcat
	__size_of_strcat	equ	__end_of_strcat-_strcat
	
_strcat:	
	opt	stack 6
; Regs used in _strcat: [wreg-fsr0h+status,2+status,0]
	line	18
	
l2859:	
	movf	(strcat@to+1),w
	clrf	(strcat@cp+1)
	addwf	(strcat@cp+1)
	movf	(strcat@to),w
	clrf	(strcat@cp)
	addwf	(strcat@cp)

	line	19
	goto	l2863
	
l925:	
	line	20
	
l2861:	
	movlw	low(01h)
	addwf	(strcat@cp),f
	skipnc
	incf	(strcat@cp+1),f
	movlw	high(01h)
	addwf	(strcat@cp+1),f
	goto	l2863
	
l924:	
	line	19
	
l2863:	
	movf	(strcat@cp),w
	movwf	fsr0
	bsf	status,7
	btfss	(strcat@cp+1),0
	bcf	status,7
	movf	indf,f
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l2861
u3430:
	goto	l2865
	
l926:	
	line	21
	goto	l2865
	
l928:	
	line	22
	goto	l2865
	
l927:	
	line	21
	
l2865:	
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
	goto	u3441
	goto	u3440
u3441:
	goto	l2865
u3440:
	goto	l930
	
l929:	
	line	24
;	Return value of _strcat is never used
	
l930:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
;; =============== function _strcat ends ============

	signat	_strcat,8313
	global	_delay
psect	text556,local,class=CODE,delta=2
global __ptext556
__ptext556:

;; *************** function _delay *****************
;; Defined at:
;;		line 485 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text556
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	485
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	486
	
l2855:	
;prev11.c: 486: while(x-->0);
	goto	l2857
	
l819:	
	goto	l2857
	
l818:	
	
l2857:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u3425
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u3425:

	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l2857
u3420:
	goto	l821
	
l820:	
	line	487
	
l821:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_strcmp
psect	text557,local,class=CODE,delta=2
global __ptext557
__ptext557:

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
psect	text557
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
	
l2845:	
	goto	l2847
	
l934:	
	line	38
	goto	l2847
	
l933:	
	line	37
	
l2847:	
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
	goto	u3401
	goto	u3400
u3401:
	goto	l2851
u3400:
	
l2849:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l2847
u3410:
	goto	l2851
	
l936:	
	goto	l2851
	
l937:	
	line	39
	
l2851:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l938
	
l2853:	
	line	40
	
l938:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_strcpy
psect	text558,local,class=CODE,delta=2
global __ptext558
__ptext558:

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
psect	text558
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
	line	10
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
	opt	stack 5
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	18
	
l2841:	
	movf	(strcpy@to+1),w
	clrf	(strcpy@cp+1)
	addwf	(strcpy@cp+1)
	movf	(strcpy@to),w
	clrf	(strcpy@cp)
	addwf	(strcpy@cp)

	line	19
	goto	l2843
	
l942:	
	line	20
	goto	l2843
	
l941:	
	line	19
	
l2843:	
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
	goto	u3391
	goto	u3390
u3391:
	goto	l2843
u3390:
	goto	l944
	
l943:	
	line	22
;	Return value of _strcpy is never used
	
l944:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_check
psect	text559,local,class=CODE,delta=2
global __ptext559
__ptext559:

;; *************** function _check *****************
;; Defined at:
;;		line 121 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text559
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	121
	global	__size_of_check
	__size_of_check	equ	__end_of_check-_check
	
_check:	
	opt	stack 5
; Regs used in _check: [wreg-fsr0h+status,2+status,0+btemp+1]
;check@input stored from wreg
	line	123
	movwf	(check@input)
	
l2819:	
;prev11.c: 123: int i=0;
	clrf	(check@i)
	clrf	(check@i+1)
	line	125
;prev11.c: 125: for(i=0;i<4;i++)
	clrf	(check@i)
	clrf	(check@i+1)
	
l2821:	
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
	goto	l2825
u3340:
	goto	l2837
	
l2823:	
	goto	l2837
	line	126
	
l701:	
	line	127
	
l2825:	
;prev11.c: 126: {
;prev11.c: 127: if(input[i]=='0'&&logic[i]=='1')
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
	goto	l2833
u3350:
	
l2827:	
	movf	(check@i),w
	addwf	(check@logic),w
	movwf	(??_check+1)+0
	movf	(check@logic+1),w
	movwf	(??_check+0)+0
	skipnc
	incf	(??_check+0)+0,f
	btfss	(check@i),7
	goto	u3360
	decf	(??_check+0)+0,f
u3360:
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
	goto	u3371
	goto	u3370
u3371:
	goto	l2833
u3370:
	line	128
	
l2829:	
;prev11.c: 128: return 0;
	clrf	(?_check)
	clrf	(?_check+1)
	goto	l704
	
l2831:	
	goto	l704
	
l703:	
	line	125
	
l2833:	
	movlw	low(01h)
	addwf	(check@i),f
	skipnc
	incf	(check@i+1),f
	movlw	high(01h)
	addwf	(check@i+1),f
	
l2835:	
	movf	(check@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3385
	movlw	low(04h)
	subwf	(check@i),w
u3385:

	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l2825
u3380:
	goto	l2837
	
l702:	
	line	130
	
l2837:	
;prev11.c: 129: }
;prev11.c: 130: return 1;
	movlw	low(01h)
	movwf	(?_check)
	movlw	high(01h)
	movwf	((?_check))+1
	goto	l704
	
l2839:	
	line	131
	
l704:	
	return
	opt stack 0
GLOBAL	__end_of_check
	__end_of_check:
;; =============== function _check ends ============

	signat	_check,8314
	global	_initkeypad
psect	text560,local,class=CODE,delta=2
global __ptext560
__ptext560:

;; *************** function _initkeypad *****************
;; Defined at:
;;		line 669 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text560
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	669
	global	__size_of_initkeypad
	__size_of_initkeypad	equ	__end_of_initkeypad-_initkeypad
	
_initkeypad:	
	opt	stack 7
; Regs used in _initkeypad: [wreg+status,2]
	line	670
	
l1373:	
;prev11.c: 670: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	671
	
l1375:	
;prev11.c: 671: TRISB = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	673
	
l877:	
	return
	opt stack 0
GLOBAL	__end_of_initkeypad
	__end_of_initkeypad:
;; =============== function _initkeypad ends ============

	signat	_initkeypad,88
psect	text561,local,class=CODE,delta=2
global __ptext561
__ptext561:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
