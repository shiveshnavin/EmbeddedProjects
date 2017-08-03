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
	line	129

;initializer for _logic_d4
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	line	130

;initializer for _lo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
psect	idataBANK3
	line	128

;initializer for _logic_d3
	retlw	030h
	retlw	031h
	retlw	030h
	retlw	0
	retlw	0
	line	131

;initializer for _plo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	126

;initializer for _logic_d1
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	line	127

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
	line	589
setLCD@size:
	retlw	010h
	retlw	0

	global	_adr
	global	setLCD@size
	global	_dev
	global	_done_init
	global	_pdev
	global	read_log@F1909
	global	getlogicseq@F1866
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

read_log@F1909:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	130
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
	line	126
_logic_d1:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	127
_logic_d2:
       ds      5

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
getlogicseq@F1866:
       ds      16

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	129
_logic_d4:
       ds      5

psect	dataBANK3
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	128
_logic_d3:
       ds      5

psect	dataBANK3
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	131
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
;;		line 90 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  1080[COMMON] int 
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
	line	90
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	94
	
l4008:	
;prev11.c: 94: TRISB = 0b00001111;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	96
	
l4010:	
;prev11.c: 96: initlcd();
	fcall	_initlcd
	line	97
	
l4012:	
;prev11.c: 97: initkeypad();
	fcall	_initkeypad
	goto	l4014
	line	108
;prev11.c: 108: while(1){
	
l1081:	
	line	110
	
l4014:	
;prev11.c: 110: getlogicseq();
	fcall	_getlogicseq
	goto	l4014
	line	111
	
l1082:	
	line	108
	goto	l4014
	
l1083:	
	line	117
	
l1084:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_getlogicseq
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:

;; *************** function _getlogicseq *****************
;; Defined at:
;;		line 215 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text546
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	215
	global	__size_of_getlogicseq
	__size_of_getlogicseq	equ	__end_of_getlogicseq-_getlogicseq
	
_getlogicseq:	
	opt	stack 0
; Regs used in _getlogicseq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	218
	
l3812:	
;prev11.c: 218: scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
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
	line	223
	
l3814:	
;prev11.c: 222: int num ;
;prev11.c: 223: char snum[16]="";
	movlw	(getlogicseq@snum)&0ffh
	movwf	fsr0
	movlw	low(getlogicseq@F1866)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	fsr0,w
	movwf	((??_getlogicseq+0)+0+1)
	movlw	16
	movwf	((??_getlogicseq+0)+0+2)
u4650:
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
	goto	u4650
	line	224
	
l3816:	
;prev11.c: 224: int wf=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	line	225
	
l3818:	
;prev11.c: 225: int nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	line	226
	
l3820:	
;prev11.c: 226: int bf=0;
	clrf	(getlogicseq@bf)^080h
	clrf	(getlogicseq@bf+1)^080h
	line	227
	
l3822:	
;prev11.c: 227: int ccount=0;
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	231
	
l3824:	
;prev11.c: 228: char str[32];
;prev11.c: 231: write("1.SWT  2.REPRG",1,1);
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
	line	232
	
l3826:	
;prev11.c: 232: write("3.RESET",2,0);
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
	goto	l3828
	line	233
;prev11.c: 233: while(1)
	
l1112:	
	line	235
	
l3828:	
;prev11.c: 234: {
;prev11.c: 235: if(retm==1)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_retm)^080h,w
	iorwf	(_retm+1)^080h,w
	skipz
	goto	u4661
	goto	u4660
u4661:
	goto	l3834
u4660:
	line	238
	
l3830:	
;prev11.c: 236: {
;prev11.c: 238: retm=0;
	clrf	(_retm)^080h
	clrf	(_retm+1)^080h
	line	239
;prev11.c: 239: f1=0; f2=0; f3=0;
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	goto	l1114
	line	240
	
l3832:	
;prev11.c: 240: return;
	goto	l1114
	line	241
	
l1113:	
	line	242
	
l3834:	
;prev11.c: 241: }
;prev11.c: 242: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	243
	
l3836:	
;prev11.c: 243: if(num==1)
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4671
	goto	u4670
u4671:
	goto	l1115
u4670:
	line	245
	
l3838:	
;prev11.c: 244: {
;prev11.c: 245: f1=1;
	movlw	low(01h)
	movwf	(_f1)^080h
	movlw	high(01h)
	movwf	((_f1)^080h)+1
	line	246
	
l3840:	
;prev11.c: 246: f2=0;
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	line	247
	
l3842:	
;prev11.c: 247: f3=0;
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	248
	
l1115:	
	line	249
;prev11.c: 248: }
;prev11.c: 249: if(num==2)
	movlw	02h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l1116
u4680:
	line	251
	
l3844:	
;prev11.c: 250: {
;prev11.c: 251: f1=0;
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	line	252
	
l3846:	
;prev11.c: 252: f2=1;
	movlw	low(01h)
	movwf	(_f2)^080h
	movlw	high(01h)
	movwf	((_f2)^080h)+1
	line	253
	
l3848:	
;prev11.c: 253: f3=0;
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	254
	
l1116:	
	line	255
;prev11.c: 254: }
;prev11.c: 255: if(num==3)
	movlw	03h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l3856
u4690:
	line	257
	
l3850:	
;prev11.c: 256: {
;prev11.c: 257: f1=0;
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	line	258
;prev11.c: 258: f2=0;
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	line	259
	
l3852:	
;prev11.c: 259: f3=1;
	movlw	low(01h)
	movwf	(_f3)^080h
	movlw	high(01h)
	movwf	((_f3)^080h)+1
	line	260
	
l3854:	
;prev11.c: 260: retm=1;
	movlw	low(01h)
	movwf	(_retm)^080h
	movlw	high(01h)
	movwf	((_retm)^080h)+1
	goto	l3856
	line	261
	
l1117:	
	line	263
	
l3856:	
;prev11.c: 261: }
;prev11.c: 263: if(f1){
	movf	(_f1+1)^080h,w
	iorwf	(_f1)^080h,w
	skipnz
	goto	u4701
	goto	u4700
u4701:
	goto	l3860
u4700:
	line	264
	
l3858:	
;prev11.c: 264: startswitch();
	fcall	_startswitch
	line	265
;prev11.c: 265: }
	goto	l3828
	line	266
	
l1118:	
	
l3860:	
;prev11.c: 266: else if(f2){ f1=0; f2=0; f3=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_f2+1)^080h,w
	iorwf	(_f2)^080h,w
	skipnz
	goto	u4711
	goto	u4710
u4711:
	goto	l3866
u4710:
	
l3862:	
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	267
;prev11.c: 267: goto START_SEQ;
	goto	l3872
	line	268
	
l3864:	
;prev11.c: 268: }
	goto	l3828
	line	269
	
l1120:	
	
l3866:	
;prev11.c: 269: else if(f3){ f1=0; f2=0; f3=0;
	movf	(_f3+1)^080h,w
	iorwf	(_f3)^080h,w
	skipnz
	goto	u4721
	goto	u4720
u4721:
	goto	l3828
u4720:
	
l3868:	
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	270
	
l3870:	
;prev11.c: 270: retm=1;
	movlw	low(01h)
	movwf	(_retm)^080h
	movlw	high(01h)
	movwf	((_retm)^080h)+1
	goto	l3828
	line	272
	
l1123:	
	goto	l3828
	line	273
	
l1122:	
	goto	l3828
	
l1119:	
	goto	l3828
	
l1124:	
	line	233
	goto	l3828
	
l1125:	
	goto	l3872
	line	276
;prev11.c: 272: }
;prev11.c: 273: }
;prev11.c: 276: START_SEQ:
	
l1121:	
	line	277
	
l3872:	
;prev11.c: 277: write("Press 2. - Skip for Device",1,1);
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
	line	278
	
l3874:	
;prev11.c: 278: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	280
	
l3876:	
;prev11.c: 280: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	
l3878:	
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	281
	
l3880:	
;prev11.c: 281: strcpy(str,"Enter Logic DEV1:  ");
	movlw	(getlogicseq@str&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_8|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_8|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	282
	
l3882:	
;prev11.c: 282: write(str,1,1);
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
	line	283
	
l3884:	
;prev11.c: 283: write(logic_d1,2,0);
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
	line	285
;prev11.c: 285: while(1)
	
l1126:	
	line	287
;prev11.c: 286: {
;prev11.c: 287: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	288
	
l3886:	
;prev11.c: 288: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4731
	goto	u4730
u4731:
	goto	l3890
u4730:
	
l3888:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l3904
u4740:
	goto	l3890
	
l1129:	
	line	289
	
l3890:	
;prev11.c: 289: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l3906
u4750:
	line	291
	
l3892:	
;prev11.c: 290: {
;prev11.c: 291: if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4761
	goto	u4760
u4761:
	goto	l1131
u4760:
	line	292
	
l3894:	
;prev11.c: 292: strcpy(logic_d1,"");
	movlw	(_logic_d1&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_9|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_9|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	
l1131:	
	line	293
;prev11.c: 293: write("---",2,0);
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
	line	294
;prev11.c: 294: itoaa(num, snum);
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
	line	295
	
l3896:	
;prev11.c: 295: strcat(logic_d1,snum);
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
	line	296
	
l3898:	
;prev11.c: 296: write( logic_d1,2,0); ;
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
	line	297
	
l3900:	
;prev11.c: 297: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	298
	
l3902:	
;prev11.c: 298: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3906
	line	299
	
l1130:	
	line	300
;prev11.c: 299: }
;prev11.c: 300: }
	goto	l3906
	line	301
	
l1127:	
	line	302
	
l3904:	
;prev11.c: 301: else{
;prev11.c: 302: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3906
	line	303
	
l1132:	
	line	304
	
l3906:	
;prev11.c: 303: }
;prev11.c: 304: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4775
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4775:

	skipc
	goto	u4771
	goto	u4770
u4771:
	goto	l3910
u4770:
	goto	l3920
	line	305
	
l3908:	
;prev11.c: 305: break;
	goto	l3920
	
l1133:	
	line	308
	
l3910:	
;prev11.c: 308: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4781
	goto	u4780
u4781:
	goto	l3916
u4780:
	line	310
	
l3912:	
;prev11.c: 309: {
;prev11.c: 310: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4791
	goto	u4790
u4791:
	goto	l1126
u4790:
	line	311
	
l3914:	
;prev11.c: 311: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	312
;prev11.c: 312: break;
	goto	l3920
	line	313
	
l1136:	
	line	314
;prev11.c: 313: }
;prev11.c: 314: }
	goto	l1126
	line	315
	
l1135:	
	
l3916:	
;prev11.c: 315: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l1126
u4800:
	line	316
	
l3918:	
;prev11.c: 316: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l1126
	line	317
	
l1138:	
	goto	l1126
	line	318
	
l1137:	
	goto	l1126
	
l1139:	
	line	285
	goto	l1126
	
l1134:	
	line	321
	
l3920:	
;prev11.c: 317: }
;prev11.c: 318: }
;prev11.c: 321: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	322
	
l3922:	
;prev11.c: 322: strcpy(str,"Enter Logic DEV2:  ");
	movlw	(getlogicseq@str&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_11|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_11|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	323
	
l3924:	
;prev11.c: 323: write(str,1,1);
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
	line	324
	
l3926:	
;prev11.c: 324: write(logic_d2,2,0);
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
	goto	l3928
	line	326
;prev11.c: 326: while(1)
	
l1140:	
	line	328
	
l3928:	
;prev11.c: 327: {
;prev11.c: 328: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	329
	
l3930:	
;prev11.c: 329: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4811
	goto	u4810
u4811:
	goto	l3934
u4810:
	
l3932:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4821
	goto	u4820
u4821:
	goto	l3948
u4820:
	goto	l3934
	
l1143:	
	line	330
	
l3934:	
;prev11.c: 330: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l3950
u4830:
	line	331
	
l3936:	
;prev11.c: 331: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l1145
u4840:
	line	332
	
l3938:	
;prev11.c: 332: strcpy(logic_d2,"");
	movlw	(_logic_d2&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_12|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_12|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	
l1145:	
	line	333
;prev11.c: 333: write("---",2,0);
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
	line	334
;prev11.c: 334: itoaa(num, snum);
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
	line	335
	
l3940:	
;prev11.c: 335: strcat(logic_d2,snum);
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
	line	336
	
l3942:	
;prev11.c: 336: write( logic_d2,2,0); ;
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
	line	337
	
l3944:	
;prev11.c: 337: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	338
	
l3946:	
;prev11.c: 338: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3950
	line	339
	
l1144:	
	line	340
;prev11.c: 339: }
;prev11.c: 340: }
	goto	l3950
	line	341
	
l1141:	
	line	342
	
l3948:	
;prev11.c: 341: else{
;prev11.c: 342: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3950
	line	343
	
l1146:	
	line	344
	
l3950:	
;prev11.c: 343: }
;prev11.c: 344: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4855
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4855:

	skipc
	goto	u4851
	goto	u4850
u4851:
	goto	l3954
u4850:
	goto	l3964
	line	345
	
l3952:	
;prev11.c: 345: break;
	goto	l3964
	
l1147:	
	line	347
	
l3954:	
;prev11.c: 347: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4861
	goto	u4860
u4861:
	goto	l3960
u4860:
	line	349
	
l3956:	
;prev11.c: 348: {
;prev11.c: 349: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l3928
u4870:
	line	350
	
l3958:	
;prev11.c: 350: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	351
;prev11.c: 351: break;
	goto	l3964
	line	352
	
l1150:	
	line	353
;prev11.c: 352: }
;prev11.c: 353: }
	goto	l3928
	line	354
	
l1149:	
	
l3960:	
;prev11.c: 354: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l3928
u4880:
	line	355
	
l3962:	
;prev11.c: 355: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3928
	line	356
	
l1152:	
	goto	l3928
	line	357
	
l1151:	
	goto	l3928
	
l1153:	
	line	326
	goto	l3928
	
l1148:	
	line	360
	
l3964:	
;prev11.c: 356: }
;prev11.c: 357: }
;prev11.c: 360: wf=0;ccount=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	clrf	(getlogicseq@ccount)^080h
	clrf	(getlogicseq@ccount+1)^080h
	line	361
	
l3966:	
;prev11.c: 361: strcpy(str,"Enter Logic DEV3:  ");
	movlw	(getlogicseq@str&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_14|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_14|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	362
	
l3968:	
;prev11.c: 362: write(str,1,1);
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
	line	363
	
l3970:	
;prev11.c: 363: write(logic_d3,2,0);
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
	goto	l3972
	line	365
;prev11.c: 365: while(1)
	
l1154:	
	line	367
	
l3972:	
;prev11.c: 366: {
;prev11.c: 367: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(getlogicseq@num+1)^080h
	addwf	(getlogicseq@num+1)^080h
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)^080h
	addwf	(getlogicseq@num)^080h

	line	368
	
l3974:	
;prev11.c: 368: if(num==1||num==0){
	movlw	01h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipnz
	goto	u4891
	goto	u4890
u4891:
	goto	l3978
u4890:
	
l3976:	
	movf	((getlogicseq@num+1)^080h),w
	iorwf	((getlogicseq@num)^080h),w
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l3992
u4900:
	goto	l3978
	
l1157:	
	line	369
	
l3978:	
;prev11.c: 369: if(wf==0)
	movf	((getlogicseq@wf+1)^080h),w
	iorwf	((getlogicseq@wf)^080h),w
	skipz
	goto	u4911
	goto	u4910
u4911:
	goto	l3994
u4910:
	line	370
	
l3980:	
;prev11.c: 370: { if(ccount==0)
	movf	((getlogicseq@ccount+1)^080h),w
	iorwf	((getlogicseq@ccount)^080h),w
	skipz
	goto	u4921
	goto	u4920
u4921:
	goto	l1159
u4920:
	line	371
	
l3982:	
;prev11.c: 371: strcpy(logic_d3,"");
	movlw	(_logic_d3&0ffh)
	movwf	(?_strcpy)
	movlw	(0x3/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_15|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_15|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	
l1159:	
	line	372
;prev11.c: 372: write("---",2,0);
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
	line	373
;prev11.c: 373: itoaa(num, snum);
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
	line	374
	
l3984:	
;prev11.c: 374: strcat(logic_d3,snum);
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
	line	375
	
l3986:	
;prev11.c: 375: write( logic_d3,2,0); ;
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
	line	376
	
l3988:	
;prev11.c: 376: wf=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getlogicseq@wf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@wf)^080h)+1
	line	377
	
l3990:	
;prev11.c: 377: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount)^080h,f
	skipnc
	incf	(getlogicseq@ccount+1)^080h,f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1)^080h,f
	goto	l3994
	line	378
	
l1158:	
	line	379
;prev11.c: 378: }
;prev11.c: 379: }
	goto	l3994
	line	380
	
l1155:	
	line	381
	
l3992:	
;prev11.c: 380: else{
;prev11.c: 381: wf=0;
	clrf	(getlogicseq@wf)^080h
	clrf	(getlogicseq@wf+1)^080h
	goto	l3994
	line	382
	
l1160:	
	line	383
	
l3994:	
;prev11.c: 382: }
;prev11.c: 383: if(ccount>=3)
	movf	(getlogicseq@ccount+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4935
	movlw	low(03h)
	subwf	(getlogicseq@ccount)^080h,w
u4935:

	skipc
	goto	u4931
	goto	u4930
u4931:
	goto	l3998
u4930:
	goto	l1114
	line	384
	
l3996:	
;prev11.c: 384: break;
	goto	l1114
	
l1161:	
	line	386
	
l3998:	
;prev11.c: 386: if(num==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l4004
u4940:
	line	388
	
l4000:	
;prev11.c: 387: {
;prev11.c: 388: if(nf==0){
	movf	((getlogicseq@nf+1)^080h),w
	iorwf	((getlogicseq@nf)^080h),w
	skipz
	goto	u4951
	goto	u4950
u4951:
	goto	l3972
u4950:
	line	389
	
l4002:	
;prev11.c: 389: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)^080h
	movlw	high(01h)
	movwf	((getlogicseq@nf)^080h)+1
	line	390
;prev11.c: 390: break;
	goto	l1114
	line	391
	
l1164:	
	line	392
;prev11.c: 391: }
;prev11.c: 392: }
	goto	l3972
	line	393
	
l1163:	
	
l4004:	
;prev11.c: 393: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num)^080h,w
	iorwf	(getlogicseq@num+1)^080h,w
	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l3972
u4960:
	line	394
	
l4006:	
;prev11.c: 394: nf=0;
	clrf	(getlogicseq@nf)^080h
	clrf	(getlogicseq@nf+1)^080h
	goto	l3972
	line	395
	
l1166:	
	goto	l3972
	line	396
	
l1165:	
	goto	l3972
	
l1167:	
	line	365
	goto	l3972
	
l1162:	
	line	442
	
l1114:	
	return
	opt stack 0
GLOBAL	__end_of_getlogicseq
	__end_of_getlogicseq:
;; =============== function _getlogicseq ends ============

	signat	_getlogicseq,88
	global	_startswitch
psect	text547,local,class=CODE,delta=2
global __ptext547
__ptext547:

;; *************** function _startswitch *****************
;; Defined at:
;;		line 160 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text547
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	160
	global	__size_of_startswitch
	__size_of_startswitch	equ	__end_of_startswitch-_startswitch
	
_startswitch:	
	opt	stack 0
; Regs used in _startswitch: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	161
	
l3764:	
;prev11.c: 161: init_fun();
	fcall	_init_fun
	line	164
;prev11.c: 164: strcpy(plo,lo);
	movlw	(_plo&0ffh)
	movwf	(?_strcpy)
	movlw	(0x3/2)
	movwf	(?_strcpy+1)
	movlw	(_lo&0ffh)
	movwf	0+(?_strcpy)+02h
	movlw	(0x0/2)
	movwf	1+(?_strcpy)+02h
	fcall	_strcpy
	line	165
;prev11.c: 165: strcpy(lo,"000");;
	movlw	(_lo&0ffh)
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	low(STR_2|8000h)
	movwf	0+(?_strcpy)+02h
	movlw	high(STR_2|8000h)
	movwf	(0+(?_strcpy)+02h)+1
	fcall	_strcpy
	line	166
	
l3766:	
;prev11.c: 166: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u4501
	goto	u4500
u4501:
	goto	l3770
u4500:
	line	167
	
l3768:	
;prev11.c: 167: lo[0]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(_lo)
	goto	l3770
	
l1097:	
	line	168
	
l3770:	
;prev11.c: 168: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u4511
	goto	u4510
u4511:
	goto	l3774
u4510:
	line	169
	
l3772:	
;prev11.c: 169: lo[1]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+01h
	goto	l3774
	
l1098:	
	line	170
	
l3774:	
;prev11.c: 170: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u4521
	goto	u4520
u4521:
	goto	l3778
u4520:
	line	171
	
l3776:	
;prev11.c: 171: lo[2]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	0+(_lo)+02h
	goto	l3778
	
l1099:	
	line	174
	
l3778:	
;prev11.c: 174: pdev=dev;
	movf	(_dev+1),w
	clrf	(_pdev+1)
	addwf	(_pdev+1)
	movf	(_dev),w
	clrf	(_pdev)
	addwf	(_pdev)

	line	175
	
l3780:	
;prev11.c: 175: dev=0b0000;
	clrf	(_dev)
	clrf	(_dev+1)
	line	176
	
l3782:	
;prev11.c: 176: write("Press 2 to REPRG",2,0);
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
	line	178
	
l3784:	
;prev11.c: 178: if(strcmp(lo,plo)!=0)
	movlw	(_plo&0ffh)
	movwf	(?_strcmp)
	movlw	(0x3/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	iorwf	(0+(?_strcmp)),w
	skipnz
	goto	u4531
	goto	u4530
u4531:
	goto	l1107
u4530:
	line	181
	
l3786:	
;prev11.c: 179: {
;prev11.c: 181: write(lo,1,1);
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
	line	185
;prev11.c: 185: if(check(lo,logic_d1))
	movlw	(_logic_d1&0ffh)
	movwf	(?_check)
	movlw	(0x1/2)
	movwf	(?_check+1)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4541
	goto	u4540
u4541:
	goto	l3790
u4540:
	line	186
	
l3788:	
;prev11.c: 186: dev=dev|0b0001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(01h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3792
	line	187
	
l1101:	
	line	188
	
l3790:	
;prev11.c: 187: else
;prev11.c: 188: dev=dev&0b0110;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(06h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3792
	
l1102:	
	line	190
	
l3792:	
;prev11.c: 190: if(check(lo,logic_d2))
	movlw	(_logic_d2&0ffh)
	movwf	(?_check)
	movlw	(0x1/2)
	movwf	(?_check+1)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4551
	goto	u4550
u4551:
	goto	l3796
u4550:
	line	191
	
l3794:	
;prev11.c: 191: dev=dev|0b0010;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(02h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3798
	line	192
	
l1103:	
	line	193
	
l3796:	
;prev11.c: 192: else
;prev11.c: 193: dev=dev&0b0101;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(05h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3798
	
l1104:	
	line	196
	
l3798:	
;prev11.c: 196: if(check(lo,logic_d3))
	movlw	(_logic_d3&0ffh)
	movwf	(?_check)
	movlw	(0x3/2)
	movwf	(?_check+1)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4561
	goto	u4560
u4561:
	goto	l3802
u4560:
	line	197
	
l3800:	
;prev11.c: 197: dev=dev|0b0100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(04h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3804
	line	198
	
l1105:	
	line	199
	
l3802:	
;prev11.c: 198: else
;prev11.c: 199: dev=dev&0b0011;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(03h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3804
	
l1106:	
	line	204
	
l3804:	
;prev11.c: 204: RC4=dev&0b0001;
	btfsc	(_dev),0
	goto	u4571
	goto	u4570
	
u4571:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	goto	u4584
u4570:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
u4584:
	line	205
	
l3806:	
;prev11.c: 205: RC5=(dev>>1)&0b0001;
	movf	(_dev+1),w
	movwf	(??_startswitch+0)+0+1
	movf	(_dev),w
	movwf	(??_startswitch+0)+0
	movlw	01h
	movwf	btemp+1
u4595:
	rlf	(??_startswitch+0)+1,w
	rrf	(??_startswitch+0)+1,f
	rrf	(??_startswitch+0)+0,f
	decfsz	btemp+1,f
	goto	u4595
	btfsc	0+(??_startswitch+0)+0,0
	goto	u4601
	goto	u4600
	
u4601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	goto	u4614
u4600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
u4614:
	line	206
	
l3808:	
;prev11.c: 206: RC6=(dev>>2)&0b0001;
	movf	(_dev+1),w
	movwf	(??_startswitch+0)+0+1
	movf	(_dev),w
	movwf	(??_startswitch+0)+0
	movlw	02h
	movwf	btemp+1
u4625:
	rlf	(??_startswitch+0)+1,w
	rrf	(??_startswitch+0)+1,f
	rrf	(??_startswitch+0)+0,f
	decfsz	btemp+1,f
	goto	u4625
	btfsc	0+(??_startswitch+0)+0,0
	goto	u4631
	goto	u4630
	
u4631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	goto	u4644
u4630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
u4644:
	goto	l1107
	line	207
	
l1100:	
	goto	l1107
	line	208
	
l3810:	
	line	210
;prev11.c: 207: }
;prev11.c: 208: return;
	
l1107:	
	return
	opt stack 0
GLOBAL	__end_of_startswitch
	__end_of_startswitch:
;; =============== function _startswitch ends ============

	signat	_startswitch,88
	global	_scroll
psect	text548,local,class=CODE,delta=2
global __ptext548
__ptext548:

;; *************** function _scroll *****************
;; Defined at:
;;		line 632 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text548
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	632
	global	__size_of_scroll
	__size_of_scroll	equ	__end_of_scroll-_scroll
	
_scroll:	
	opt	stack 1
; Regs used in _scroll: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	634
	
l3724:	
;prev11.c: 634: write(str,1,0); ;
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
	line	635
	
l3726:	
;prev11.c: 635: int loopn=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@loopn)
	clrf	(scroll@loopn+1)
	line	637
	
l3728:	
;prev11.c: 636: int i;
;prev11.c: 637: int len=0;;
	clrf	(scroll@len)
	clrf	(scroll@len+1)
	line	638
	
l3730:	
;prev11.c: 638: int st=0;
	clrf	(scroll@st)
	clrf	(scroll@st+1)
	line	640
;prev11.c: 639: int en;
;prev11.c: 640: while(str[i]!='\0')
	goto	l3734
	
l1249:	
	line	641
	
l3732:	
;prev11.c: 641: { i++;
	movlw	low(01h)
	addwf	(scroll@i),f
	skipnc
	incf	(scroll@i+1),f
	movlw	high(01h)
	addwf	(scroll@i+1),f
	line	642
;prev11.c: 642: len++;
	movlw	low(01h)
	addwf	(scroll@len),f
	skipnc
	incf	(scroll@len+1),f
	movlw	high(01h)
	addwf	(scroll@len+1),f
	goto	l3734
	line	643
	
l1248:	
	line	640
	
l3734:	
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
	goto	u4451
	goto	u4450
u4451:
	goto	l3732
u4450:
	goto	l3736
	
l1250:	
	line	644
	
l3736:	
;prev11.c: 643: }
;prev11.c: 644: en=len-1;
	movf	(scroll@len),w
	addlw	low(-1)
	movwf	(scroll@en)
	movf	(scroll@len+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(scroll@en)
	line	646
	
l3738:	
;prev11.c: 646: if(len>32)
	movf	(scroll@len+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(021h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4465
	movlw	low(021h)
	subwf	(scroll@len),w
u4465:

	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l1260
u4460:
	line	650
	
l3740:	
;prev11.c: 647: {
;prev11.c: 649: char dest [32] ;
;prev11.c: 650: int startat=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@startat)
	clrf	(scroll@startat+1)
	line	651
	
l3742:	
;prev11.c: 651: int endat=31;
	movlw	low(01Fh)
	movwf	(scroll@endat)
	movlw	high(01Fh)
	movwf	((scroll@endat))+1
	goto	l3744
	line	652
;prev11.c: 652: START:
	
l1252:	
	line	653
	
l3744:	
;prev11.c: 653: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	654
;prev11.c: 654: while(i++<32)
	goto	l3750
	
l1254:	
	line	657
	
l3746:	
;prev11.c: 655: {
;prev11.c: 657: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	658
	
l3748:	
;prev11.c: 658: cmd(0x1E);
	movlw	low(01Eh)
	movwf	(?_cmd)
	movlw	high(01Eh)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3750
	line	661
	
l1253:	
	line	654
	
l3750:	
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
	goto	u4475
	movlw	low(021h)
	subwf	((scroll@i)),w
u4475:

	skipc
	goto	u4471
	goto	u4470
u4471:
	goto	l3746
u4470:
	goto	l3752
	
l1255:	
	line	663
	
l3752:	
;prev11.c: 661: }
;prev11.c: 663: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(scroll@i)
	clrf	(scroll@i+1)
	line	664
;prev11.c: 664: while(i++<32)
	goto	l3758
	
l1257:	
	line	667
	
l3754:	
;prev11.c: 665: {
;prev11.c: 667: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	668
	
l3756:	
;prev11.c: 668: cmd(0x18);
	movlw	low(018h)
	movwf	(?_cmd)
	movlw	high(018h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3758
	line	671
	
l1256:	
	line	664
	
l3758:	
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
	goto	u4485
	movlw	low(021h)
	subwf	((scroll@i)),w
u4485:

	skipc
	goto	u4481
	goto	u4480
u4481:
	goto	l3754
u4480:
	goto	l3760
	
l1258:	
	line	672
	
l3760:	
;prev11.c: 671: }
;prev11.c: 672: if(loopn++<loops)
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
	goto	u4495
	movf	(scroll@loops),w
	subwf	0+(??_scroll+0)+0,w
u4495:

	skipnc
	goto	u4491
	goto	u4490
u4491:
	goto	l1260
u4490:
	goto	l3744
	line	673
	
l3762:	
;prev11.c: 673: goto START;
	goto	l3744
	
l1259:	
	goto	l1260
	line	674
	
l1251:	
	line	679
	
l1260:	
	return
	opt stack 0
GLOBAL	__end_of_scroll
	__end_of_scroll:
;; =============== function _scroll ends ============

	signat	_scroll,8312
	global	_init_fun
psect	text549,local,class=CODE,delta=2
global __ptext549
__ptext549:

;; *************** function _init_fun *****************
;; Defined at:
;;		line 149 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text549
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	149
	global	__size_of_init_fun
	__size_of_init_fun	equ	__end_of_init_fun-_init_fun
	
_init_fun:	
	opt	stack 0
; Regs used in _init_fun: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	150
	
l3714:	
;prev11.c: 150: if(done_init==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_done_init+1)),w
	iorwf	((_done_init)),w
	skipz
	goto	u4441
	goto	u4440
u4441:
	goto	l1094
u4440:
	line	153
	
l3716:	
;prev11.c: 151: {
;prev11.c: 153: TRISA=0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	154
	
l3718:	
;prev11.c: 154: ANSEL=0x0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	155
	
l3720:	
;prev11.c: 155: done_init=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_done_init)
	movlw	high(01h)
	movwf	((_done_init))+1
	line	156
	
l3722:	
;prev11.c: 156: write("Sensing...",1,1);
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
	goto	l1094
	line	157
	
l1093:	
	line	158
	
l1094:	
	return
	opt stack 0
GLOBAL	__end_of_init_fun
	__end_of_init_fun:
;; =============== function _init_fun ends ============

	signat	_init_fun,88
	global	_write
psect	text550,local,class=CODE,delta=2
global __ptext550
__ptext550:

;; *************** function _write *****************
;; Defined at:
;;		line 611 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text550
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	611
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 1
; Regs used in _write: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	612
	
l3696:	
;prev11.c: 612: if(erase==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@erase),w
	iorwf	(write@erase+1),w
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l3700
u4410:
	line	613
	
l3698:	
;prev11.c: 613: clearlcd();
	fcall	_clearlcd
	goto	l3700
	
l1239:	
	line	615
	
l3700:	
;prev11.c: 615: if(line==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@line),w
	iorwf	(write@line+1),w
	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l3704
u4420:
	line	616
	
l3702:	
;prev11.c: 616: cmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_cmd)
	movlw	high(0C0h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3706
	line	617
	
l1240:	
	line	618
	
l3704:	
;prev11.c: 617: else
;prev11.c: 618: cmd(0x2);
	movlw	low(02h)
	movwf	(?_cmd)
	movlw	high(02h)
	movwf	((?_cmd))+1
	fcall	_cmd
	goto	l3706
	
l1241:	
	line	620
	
l3706:	
;prev11.c: 620: int i=0;
	clrf	(write@i)
	clrf	(write@i+1)
	line	621
;prev11.c: 621: while(str[i]!='\0')
	goto	l3712
	
l1243:	
	line	623
	
l3708:	
;prev11.c: 622: {
;prev11.c: 623: dat(str[i]);
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
	line	624
	
l3710:	
;prev11.c: 624: i++;
	movlw	low(01h)
	addwf	(write@i),f
	skipnc
	incf	(write@i+1),f
	movlw	high(01h)
	addwf	(write@i+1),f
	goto	l3712
	line	625
	
l1242:	
	line	621
	
l3712:	
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
	goto	u4431
	goto	u4430
u4431:
	goto	l3708
u4430:
	goto	l1245
	
l1244:	
	line	628
	
l1245:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,12408
	global	_clearlcd
psect	text551,local,class=CODE,delta=2
global __ptext551
__ptext551:

;; *************** function _clearlcd *****************
;; Defined at:
;;		line 553 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text551
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	553
	global	__size_of_clearlcd
	__size_of_clearlcd	equ	__end_of_clearlcd-_clearlcd
	
_clearlcd:	
	opt	stack 1
; Regs used in _clearlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	554
	
l3694:	
;prev11.c: 554: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	555
	
l1223:	
	return
	opt stack 0
GLOBAL	__end_of_clearlcd
	__end_of_clearlcd:
;; =============== function _clearlcd ends ============

	signat	_clearlcd,88
	global	_scan
psect	text552,local,class=CODE,delta=2
global __ptext552
__ptext552:

;; *************** function _scan *****************
;; Defined at:
;;		line 693 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text552
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	693
	global	__size_of_scan
	__size_of_scan	equ	__end_of_scan-_scan
	
_scan:	
	opt	stack 4
; Regs used in _scan: [wreg+status,2+status,0+pclath+cstack]
	line	694
	
l3586:	
;prev11.c: 694: actrow(1) ;
	movlw	low(01h)
	movwf	(?_actrow)
	movlw	high(01h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	695
	
l3588:	
;prev11.c: 695: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l1266
u4250:
	line	696
	
l3590:	
;prev11.c: 696: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l1267
	
l3592:	
	goto	l1267
	
l3594:	
	goto	l3612
	line	697
	
l1266:	
;prev11.c: 697: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l1269
u4260:
	line	698
	
l3596:	
;prev11.c: 698: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l1267
	
l3598:	
	goto	l1267
	
l3600:	
	goto	l3612
	line	699
	
l1269:	
;prev11.c: 699: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l1271
u4270:
	line	700
	
l3602:	
;prev11.c: 700: return 2;
	movlw	low(02h)
	movwf	(?_scan)
	movlw	high(02h)
	movwf	((?_scan))+1
	goto	l1267
	
l3604:	
	goto	l1267
	
l3606:	
	goto	l3612
	line	701
	
l1271:	
;prev11.c: 701: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l3612
u4280:
	line	702
	
l3608:	
;prev11.c: 702: return 3;
	movlw	low(03h)
	movwf	(?_scan)
	movlw	high(03h)
	movwf	((?_scan))+1
	goto	l1267
	
l3610:	
	goto	l1267
	
l1273:	
	goto	l3612
	line	704
	
l1272:	
	goto	l3612
	
l1270:	
	goto	l3612
	
l1268:	
	
l3612:	
;prev11.c: 704: actrow(2) ;
	movlw	low(02h)
	movwf	(?_actrow)
	movlw	high(02h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	706
	
l3614:	
;prev11.c: 706: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l1274
u4290:
	line	707
	
l3616:	
;prev11.c: 707: return 4;
	movlw	low(04h)
	movwf	(?_scan)
	movlw	high(04h)
	movwf	((?_scan))+1
	goto	l1267
	
l3618:	
	goto	l1267
	
l3620:	
	goto	l3638
	line	708
	
l1274:	
;prev11.c: 708: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l1276
u4300:
	line	709
	
l3622:	
;prev11.c: 709: return 5;
	movlw	low(05h)
	movwf	(?_scan)
	movlw	high(05h)
	movwf	((?_scan))+1
	goto	l1267
	
l3624:	
	goto	l1267
	
l3626:	
	goto	l3638
	line	710
	
l1276:	
;prev11.c: 710: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l1278
u4310:
	line	711
	
l3628:	
;prev11.c: 711: return 6;
	movlw	low(06h)
	movwf	(?_scan)
	movlw	high(06h)
	movwf	((?_scan))+1
	goto	l1267
	
l3630:	
	goto	l1267
	
l3632:	
	goto	l3638
	line	712
	
l1278:	
;prev11.c: 712: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4321
	goto	u4320
u4321:
	goto	l3638
u4320:
	line	713
	
l3634:	
;prev11.c: 713: return 7;
	movlw	low(07h)
	movwf	(?_scan)
	movlw	high(07h)
	movwf	((?_scan))+1
	goto	l1267
	
l3636:	
	goto	l1267
	
l1280:	
	goto	l3638
	line	715
	
l1279:	
	goto	l3638
	
l1277:	
	goto	l3638
	
l1275:	
	
l3638:	
;prev11.c: 715: actrow(3) ;
	movlw	low(03h)
	movwf	(?_actrow)
	movlw	high(03h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	717
	
l3640:	
;prev11.c: 717: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l1281
u4330:
	line	718
	
l3642:	
;prev11.c: 718: return 8;
	movlw	low(08h)
	movwf	(?_scan)
	movlw	high(08h)
	movwf	((?_scan))+1
	goto	l1267
	
l3644:	
	goto	l1267
	
l3646:	
	goto	l3664
	line	719
	
l1281:	
;prev11.c: 719: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4341
	goto	u4340
u4341:
	goto	l1283
u4340:
	line	720
	
l3648:	
;prev11.c: 720: return 9;
	movlw	low(09h)
	movwf	(?_scan)
	movlw	high(09h)
	movwf	((?_scan))+1
	goto	l1267
	
l3650:	
	goto	l1267
	
l3652:	
	goto	l3664
	line	721
	
l1283:	
;prev11.c: 721: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4351
	goto	u4350
u4351:
	goto	l1285
u4350:
	line	722
	
l3654:	
;prev11.c: 722: return 10;
	movlw	low(0Ah)
	movwf	(?_scan)
	movlw	high(0Ah)
	movwf	((?_scan))+1
	goto	l1267
	
l3656:	
	goto	l1267
	
l3658:	
	goto	l3664
	line	723
	
l1285:	
;prev11.c: 723: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4361
	goto	u4360
u4361:
	goto	l3664
u4360:
	line	724
	
l3660:	
;prev11.c: 724: return 11;
	movlw	low(0Bh)
	movwf	(?_scan)
	movlw	high(0Bh)
	movwf	((?_scan))+1
	goto	l1267
	
l3662:	
	goto	l1267
	
l1287:	
	goto	l3664
	line	727
	
l1286:	
	goto	l3664
	
l1284:	
	goto	l3664
	
l1282:	
	
l3664:	
;prev11.c: 727: actrow(4) ;
	movlw	low(04h)
	movwf	(?_actrow)
	movlw	high(04h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	729
	
l3666:	
;prev11.c: 729: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l1288
u4370:
	line	730
	
l3668:	
;prev11.c: 730: return 12;
	movlw	low(0Ch)
	movwf	(?_scan)
	movlw	high(0Ch)
	movwf	((?_scan))+1
	goto	l1267
	
l3670:	
	goto	l1267
	
l3672:	
	goto	l3690
	line	731
	
l1288:	
;prev11.c: 731: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l1290
u4380:
	line	732
	
l3674:	
;prev11.c: 732: return 13;
	movlw	low(0Dh)
	movwf	(?_scan)
	movlw	high(0Dh)
	movwf	((?_scan))+1
	goto	l1267
	
l3676:	
	goto	l1267
	
l3678:	
	goto	l3690
	line	733
	
l1290:	
;prev11.c: 733: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l1292
u4390:
	line	734
	
l3680:	
;prev11.c: 734: return 14;
	movlw	low(0Eh)
	movwf	(?_scan)
	movlw	high(0Eh)
	movwf	((?_scan))+1
	goto	l1267
	
l3682:	
	goto	l1267
	
l3684:	
	goto	l3690
	line	735
	
l1292:	
;prev11.c: 735: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4401
	goto	u4400
u4401:
	goto	l3690
u4400:
	line	736
	
l3686:	
;prev11.c: 736: return 15;
	movlw	low(0Fh)
	movwf	(?_scan)
	movlw	high(0Fh)
	movwf	((?_scan))+1
	goto	l1267
	
l3688:	
	goto	l1267
	
l1294:	
	goto	l3690
	line	740
	
l1293:	
	goto	l3690
	
l1291:	
	goto	l3690
	
l1289:	
	
l3690:	
;prev11.c: 740: return 99;
	movlw	low(063h)
	movwf	(?_scan)
	movlw	high(063h)
	movwf	((?_scan))+1
	goto	l1267
	
l3692:	
	line	744
	
l1267:	
	return
	opt stack 0
GLOBAL	__end_of_scan
	__end_of_scan:
;; =============== function _scan ends ============

	signat	_scan,90
	global	_initlcd
psect	text553,local,class=CODE,delta=2
global __ptext553
__ptext553:

;; *************** function _initlcd *****************
;; Defined at:
;;		line 535 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text553
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	535
	global	__size_of_initlcd
	__size_of_initlcd	equ	__end_of_initlcd-_initlcd
	
_initlcd:	
	opt	stack 4
; Regs used in _initlcd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	537
	
l3574:	
;prev11.c: 537: TRISC=0b0000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	539
	
l3576:	
;prev11.c: 539: TRISD=0b11000000;
	movlw	(0C0h)
	movwf	(136)^080h	;volatile
	line	541
	
l3578:	
;prev11.c: 541: cmd(0x38);
	movlw	low(038h)
	movwf	(?_cmd)
	movlw	high(038h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	543
	
l3580:	
;prev11.c: 543: cmd(0x0C);
	movlw	low(0Ch)
	movwf	(?_cmd)
	movlw	high(0Ch)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	545
	
l3582:	
;prev11.c: 545: cmd(0x01);
	movlw	low(01h)
	movwf	(?_cmd)
	movlw	high(01h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	547
	
l3584:	
;prev11.c: 547: cmd(0x80);
	movlw	low(080h)
	movwf	(?_cmd)
	movlw	high(080h)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	551
	
l1220:	
	return
	opt stack 0
GLOBAL	__end_of_initlcd
	__end_of_initlcd:
;; =============== function _initlcd ends ============

	signat	_initlcd,88
	global	_actrow
psect	text554,local,class=CODE,delta=2
global __ptext554
__ptext554:

;; *************** function _actrow *****************
;; Defined at:
;;		line 752 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text554
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	752
	global	__size_of_actrow
	__size_of_actrow	equ	__end_of_actrow-_actrow
	
_actrow:	
	opt	stack 4
; Regs used in _actrow: [wreg+status,2+status,0+pclath+cstack]
	line	753
	
l3554:	
;prev11.c: 753: resetout();
	fcall	_resetout
	line	755
	
l3556:	
;prev11.c: 755: if(n==1)
	movlw	01h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l3560
u4210:
	line	757
	
l3558:	
;prev11.c: 756: {
;prev11.c: 757: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	758
;prev11.c: 758: }
	goto	l3572
	line	759
	
l1300:	
	
l3560:	
;prev11.c: 759: else if(n==2)
	movlw	02h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4221
	goto	u4220
u4221:
	goto	l3564
u4220:
	line	761
	
l3562:	
;prev11.c: 760: {
;prev11.c: 761: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	762
;prev11.c: 762: }
	goto	l3572
	line	763
	
l1302:	
	
l3564:	
;prev11.c: 763: else if(n==3)
	movlw	03h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l3568
u4230:
	line	765
	
l3566:	
;prev11.c: 764: {
;prev11.c: 765: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	766
;prev11.c: 766: }
	goto	l3572
	line	767
	
l1304:	
	
l3568:	
;prev11.c: 767: else if(n==4)
	movlw	04h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l3572
u4240:
	line	769
	
l3570:	
;prev11.c: 768: {
;prev11.c: 769: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	l3572
	line	770
	
l1306:	
	goto	l3572
	line	771
	
l1305:	
	goto	l3572
	
l1303:	
	goto	l3572
	
l1301:	
	
l3572:	
;prev11.c: 770: }
;prev11.c: 771: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	774
	
l1307:	
	return
	opt stack 0
GLOBAL	__end_of_actrow
	__end_of_actrow:
;; =============== function _actrow ends ============

	signat	_actrow,4216
	global	_dat
psect	text555,local,class=CODE,delta=2
global __ptext555
__ptext555:

;; *************** function _dat *****************
;; Defined at:
;;		line 569 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text555
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	569
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 2
; Regs used in _dat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	570
	
l3542:	
;prev11.c: 570: setLCD(Command);
	movf	(dat@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(dat@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	572
	
l3544:	
;prev11.c: 572: RD5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	line	574
	
l3546:	
;prev11.c: 574: RD4=1;
	bsf	(68/8),(68)&7
	line	576
	
l3548:	
;prev11.c: 576: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	578
	
l3550:	
;prev11.c: 578: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	580
	
l3552:	
;prev11.c: 580: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	586
	
l1229:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text556,local,class=CODE,delta=2
global __ptext556
__ptext556:

;; *************** function _cmd *****************
;; Defined at:
;;		line 557 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text556
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	557
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 2
; Regs used in _cmd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	559
	
l3530:	
;prev11.c: 559: setLCD(Command);
	movf	(cmd@Command+1),w
	clrf	(?_setLCD+1)
	addwf	(?_setLCD+1)
	movf	(cmd@Command),w
	clrf	(?_setLCD)
	addwf	(?_setLCD)

	fcall	_setLCD
	line	560
	
l3532:	
;prev11.c: 560: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	line	561
	
l3534:	
;prev11.c: 561: RD4=1;
	bsf	(68/8),(68)&7
	line	562
	
l3536:	
;prev11.c: 562: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	563
	
l3538:	
;prev11.c: 563: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	564
	
l3540:	
;prev11.c: 564: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	566
	
l1226:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_itoaa
psect	text557,local,class=CODE,delta=2
global __ptext557
__ptext557:

;; *************** function _itoaa *****************
;; Defined at:
;;		line 508 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text557
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	508
	global	__size_of_itoaa
	__size_of_itoaa	equ	__end_of_itoaa-_itoaa
	
_itoaa:	
	opt	stack 5
; Regs used in _itoaa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	509
	
l3482:	
;prev11.c: 509: int count=0,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@count)
	clrf	(itoaa@count+1)
	line	510
	
l3484:	
;prev11.c: 510: if(ptr==(0))
	movf	(itoaa@ptr),f
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l3488
u4140:
	goto	l1211
	line	511
	
l3486:	
;prev11.c: 511: return 0;
;	Return value of _itoaa is never used
	goto	l1211
	
l1210:	
	line	512
	
l3488:	
;prev11.c: 512: if(value==0)
	movf	((itoaa@value+1)),w
	iorwf	((itoaa@value)),w
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l1212
u4150:
	line	514
	
l3490:	
;prev11.c: 513: {
;prev11.c: 514: *ptr='0';
	movlw	(030h)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l1211
	line	515
	
l3492:	
;prev11.c: 515: return 1;
;	Return value of _itoaa is never used
	goto	l1211
	line	516
	
l1212:	
	line	518
;prev11.c: 516: }
;prev11.c: 518: if(value<0)
	btfss	(itoaa@value+1),7
	goto	u4161
	goto	u4160
u4161:
	goto	l3502
u4160:
	line	520
	
l3494:	
;prev11.c: 519: {
;prev11.c: 520: value*=(-1);
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

	line	521
	
l3496:	
;prev11.c: 521: *ptr++='-';
	movlw	(02Dh)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3498:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	line	522
	
l3500:	
;prev11.c: 522: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	goto	l3502
	line	523
	
l1213:	
	line	524
	
l3502:	
;prev11.c: 523: }
;prev11.c: 524: for(temp=value;temp>0;temp/=10,ptr++);
	movf	(itoaa@value+1),w
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3504:	
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
	goto	l3508
u4170:
	goto	l3514
	
l3506:	
	goto	l3514
	
l1214:	
	
l3508:	
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

	
l3510:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	
l3512:	
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
	goto	l3508
u4180:
	goto	l3514
	
l1215:	
	line	525
	
l3514:	
;prev11.c: 525: *ptr='\0';
	movf	(itoaa@ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	526
	
l3516:	
;prev11.c: 526: for(temp=value;temp>0;temp/=10)
	movf	(itoaa@value+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3518:	
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
	goto	l3522
u4190:
	goto	l1211
	
l3520:	
	goto	l1211
	line	527
	
l1216:	
	line	528
	
l3522:	
;prev11.c: 527: {
;prev11.c: 528: *--ptr=temp%10+'0';
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
	line	529
	
l3524:	
;prev11.c: 529: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	line	526
	
l3526:	
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

	
l3528:	
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
	goto	l3522
u4200:
	goto	l1211
	
l1217:	
	line	532
;prev11.c: 530: }
;prev11.c: 531: return count;
;	Return value of _itoaa is never used
	
l1211:	
	return
	opt stack 0
GLOBAL	__end_of_itoaa
	__end_of_itoaa:
;; =============== function _itoaa ends ============

	signat	_itoaa,8314
	global	___awmod
psect	text558,local,class=CODE,delta=2
global __ptext558
__ptext558:

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
psect	text558
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3448:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u4051
	goto	u4050
u4051:
	goto	l3452
u4050:
	line	10
	
l3450:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3452
	line	12
	
l1568:	
	line	13
	
l3452:	
	btfss	(___awmod@divisor+1),7
	goto	u4061
	goto	u4060
u4061:
	goto	l3456
u4060:
	line	14
	
l3454:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3456
	
l1569:	
	line	15
	
l3456:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4071
	goto	u4070
u4071:
	goto	l3474
u4070:
	line	16
	
l3458:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3464
	
l1572:	
	line	18
	
l3460:	
	movlw	01h
	
u4085:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4085
	line	19
	
l3462:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3464
	line	20
	
l1571:	
	line	17
	
l3464:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l3460
u4090:
	goto	l3466
	
l1573:	
	goto	l3466
	line	21
	
l1574:	
	line	22
	
l3466:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4105
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4105:
	skipc
	goto	u4101
	goto	u4100
u4101:
	goto	l3470
u4100:
	line	23
	
l3468:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3470
	
l1575:	
	line	24
	
l3470:	
	movlw	01h
	
u4115:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4115
	line	25
	
l3472:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l3466
u4120:
	goto	l3474
	
l1576:	
	goto	l3474
	line	26
	
l1570:	
	line	27
	
l3474:	
	movf	(___awmod@sign),w
	skipz
	goto	u4130
	goto	l3478
u4130:
	line	28
	
l3476:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3478
	
l1577:	
	line	29
	
l3478:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1578
	
l3480:	
	line	30
	
l1578:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text559,local,class=CODE,delta=2
global __ptext559
__ptext559:

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
psect	text559
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3408:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3951
	goto	u3950
u3951:
	goto	l3412
u3950:
	line	11
	
l3410:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3412
	line	13
	
l1500:	
	line	14
	
l3412:	
	btfss	(___awdiv@dividend+1),7
	goto	u3961
	goto	u3960
u3961:
	goto	l3418
u3960:
	line	15
	
l3414:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3416:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3418
	line	17
	
l1501:	
	line	18
	
l3418:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3420:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3971
	goto	u3970
u3971:
	goto	l3440
u3970:
	line	20
	
l3422:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3428
	
l1504:	
	line	22
	
l3424:	
	movlw	01h
	
u3985:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3985
	line	23
	
l3426:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3428
	line	24
	
l1503:	
	line	21
	
l3428:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l3424
u3990:
	goto	l3430
	
l1505:	
	goto	l3430
	line	25
	
l1506:	
	line	26
	
l3430:	
	movlw	01h
	
u4005:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4005
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4015
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4015:
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l3436
u4010:
	line	28
	
l3432:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3434:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3436
	line	30
	
l1507:	
	line	31
	
l3436:	
	movlw	01h
	
u4025:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u4025
	line	32
	
l3438:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l3430
u4030:
	goto	l3440
	
l1508:	
	goto	l3440
	line	33
	
l1502:	
	line	34
	
l3440:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4040
	goto	l3444
u4040:
	line	35
	
l3442:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3444
	
l1509:	
	line	36
	
l3444:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1510
	
l3446:	
	line	37
	
l1510:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text560,local,class=CODE,delta=2
global __ptext560
__ptext560:

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
psect	text560
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3396:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3398
	line	6
	
l1360:	
	line	7
	
l3398:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l1361
u3910:
	line	8
	
l3400:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1361:	
	line	9
	movlw	01h
	
u3925:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3925
	line	10
	
l3402:	
	movlw	01h
	
u3935:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3935
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l3398
u3940:
	goto	l3404
	
l1362:	
	line	12
	
l3404:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1363
	
l3406:	
	line	13
	
l1363:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_resetout
psect	text561,local,class=CODE,delta=2
global __ptext561
__ptext561:

;; *************** function _resetout *****************
;; Defined at:
;;		line 748 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text561
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	748
	global	__size_of_resetout
	__size_of_resetout	equ	__end_of_resetout-_resetout
	
_resetout:	
	opt	stack 4
; Regs used in _resetout: []
	line	749
	
l3390:	
;prev11.c: 749: RD6=0;RD7=0;RB6=0;RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	bcf	(71/8),(71)&7
	bcf	(54/8),(54)&7
	bcf	(55/8),(55)&7
	line	750
	
l1297:	
	return
	opt stack 0
GLOBAL	__end_of_resetout
	__end_of_resetout:
;; =============== function _resetout ends ============

	signat	_resetout,88
	global	_setLCD
psect	text562,local,class=CODE,delta=2
global __ptext562
__ptext562:

;; *************** function _setLCD *****************
;; Defined at:
;;		line 588 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text562
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	588
	global	__size_of_setLCD
	__size_of_setLCD	equ	__end_of_setLCD-_setLCD
	
_setLCD:	
	opt	stack 2
; Regs used in _setLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	593
	
l3376:	
;prev11.c: 589: const int size=8*sizeof(int);
;prev11.c: 590: int vbool[8*sizeof(int)];
;prev11.c: 591: int i;;
;prev11.c: 593: for (i = 0; i <size; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLCD@i)
	clrf	(setLCD@i+1)
	
l3378:	
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
	goto	u3725
	movf	0+(??_setLCD+0)+0,w
	subwf	(setLCD@i),w
u3725:

	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l3382
u3720:
	goto	l3388
	
l3380:	
	goto	l3388
	line	594
	
l1234:	
	line	595
	
l3382:	
;prev11.c: 594: {
;prev11.c: 595: vbool[i] = number<<i < 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(setLCD@i),w
	movwf	(??_setLCD+0)+0
	movf	(setLCD@number+1),w
	movwf	(??_setLCD+1)+0+1
	movf	(setLCD@number),w
	movwf	(??_setLCD+1)+0
	goto	u3734
u3735:
	clrc
	rlf	(??_setLCD+1)+0,f
	rlf	(??_setLCD+1)+1,f
u3734:
	decfsz	(??_setLCD+0)+0,f
	goto	u3735
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
	line	593
	
l3384:	
	movlw	low(01h)
	addwf	(setLCD@i),f
	skipnc
	incf	(setLCD@i+1),f
	movlw	high(01h)
	addwf	(setLCD@i+1),f
	
l3386:	
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
	goto	l3382
u3740:
	goto	l3388
	
l1235:	
	line	598
	
l3388:	
;prev11.c: 596: }
;prev11.c: 598: RD3=vbool[size-1];
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
	goto	u3751
	goto	u3750
	
u3751:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	goto	u3764
u3750:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
u3764:
	line	599
;prev11.c: 599: RD2=vbool[size-2];
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
	goto	u3771
	goto	u3770
	
u3771:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	goto	u3784
u3770:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
u3784:
	line	600
;prev11.c: 600: RD1=vbool[size-3];
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
	goto	u3791
	goto	u3790
	
u3791:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u3804
u3790:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u3804:
	line	601
;prev11.c: 601: RD0=vbool[size-4];
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
	goto	u3811
	goto	u3810
	
u3811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u3824
u3810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u3824:
	line	602
;prev11.c: 602: RC3=vbool[size-5];
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
	goto	u3831
	goto	u3830
	
u3831:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3844
u3830:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3844:
	line	603
;prev11.c: 603: RC2=vbool[size-6];
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
	goto	u3851
	goto	u3850
	
u3851:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3864
u3850:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3864:
	line	604
;prev11.c: 604: RC1=vbool[size-7];
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
	goto	u3871
	goto	u3870
	
u3871:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3884
u3870:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3884:
	line	605
;prev11.c: 605: RC0=vbool[size-8];
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
	goto	u3891
	goto	u3890
	
u3891:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3904
u3890:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3904:
	line	609
	
l1236:	
	return
	opt stack 0
GLOBAL	__end_of_setLCD
	__end_of_setLCD:
;; =============== function _setLCD ends ============

	signat	_setLCD,4216
	global	_strcat
psect	text563,local,class=CODE,delta=2
global __ptext563
__ptext563:

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
psect	text563
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcat.c"
	line	10
	global	__size_of_strcat
	__size_of_strcat	equ	__end_of_strcat-_strcat
	
_strcat:	
	opt	stack 6
; Regs used in _strcat: [wreg-fsr0h+status,2+status,0]
	line	18
	
l3300:	
	movf	(strcat@to+1),w
	clrf	(strcat@cp+1)
	addwf	(strcat@cp+1)
	movf	(strcat@to),w
	clrf	(strcat@cp)
	addwf	(strcat@cp)

	line	19
	goto	l3304
	
l1332:	
	line	20
	
l3302:	
	movlw	low(01h)
	addwf	(strcat@cp),f
	skipnc
	incf	(strcat@cp+1),f
	movlw	high(01h)
	addwf	(strcat@cp+1),f
	goto	l3304
	
l1331:	
	line	19
	
l3304:	
	movf	(strcat@cp),w
	movwf	fsr0
	bsf	status,7
	btfss	(strcat@cp+1),0
	bcf	status,7
	movf	indf,f
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l3302
u3540:
	goto	l3306
	
l1333:	
	line	21
	goto	l3306
	
l1335:	
	line	22
	goto	l3306
	
l1334:	
	line	21
	
l3306:	
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
	goto	u3551
	goto	u3550
u3551:
	goto	l3306
u3550:
	goto	l1337
	
l1336:	
	line	24
;	Return value of _strcat is never used
	
l1337:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
;; =============== function _strcat ends ============

	signat	_strcat,8313
	global	_delay
psect	text564,local,class=CODE,delta=2
global __ptext564
__ptext564:

;; *************** function _delay *****************
;; Defined at:
;;		line 502 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text564
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	502
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	503
	
l3296:	
;prev11.c: 503: while(x-->0);
	goto	l3298
	
l1205:	
	goto	l3298
	
l1204:	
	
l3298:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u3535
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u3535:

	skipz
	goto	u3531
	goto	u3530
u3531:
	goto	l3298
u3530:
	goto	l1207
	
l1206:	
	line	504
	
l1207:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_strcmp
psect	text565,local,class=CODE,delta=2
global __ptext565
__ptext565:

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
psect	text565
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
	
l3286:	
	goto	l3288
	
l1341:	
	line	38
	goto	l3288
	
l1340:	
	line	37
	
l3288:	
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
	goto	u3511
	goto	u3510
u3511:
	goto	l3292
u3510:
	
l3290:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l3288
u3520:
	goto	l3292
	
l1343:	
	goto	l3292
	
l1344:	
	line	39
	
l3292:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l1345
	
l3294:	
	line	40
	
l1345:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_strcpy
psect	text566,local,class=CODE,delta=2
global __ptext566
__ptext566:

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
psect	text566
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
	line	10
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
	opt	stack 5
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	18
	
l3282:	
	movf	(strcpy@to+1),w
	clrf	(strcpy@cp+1)
	addwf	(strcpy@cp+1)
	movf	(strcpy@to),w
	clrf	(strcpy@cp)
	addwf	(strcpy@cp)

	line	19
	goto	l3284
	
l1349:	
	line	20
	goto	l3284
	
l1348:	
	line	19
	
l3284:	
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
	goto	u3501
	goto	u3500
u3501:
	goto	l3284
u3500:
	goto	l1351
	
l1350:	
	line	22
;	Return value of _strcpy is never used
	
l1351:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_check
psect	text567,local,class=CODE,delta=2
global __ptext567
__ptext567:

;; *************** function _check *****************
;; Defined at:
;;		line 136 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text567
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	136
	global	__size_of_check
	__size_of_check	equ	__end_of_check-_check
	
_check:	
	opt	stack 5
; Regs used in _check: [wreg-fsr0h+status,2+status,0+btemp+1]
;check@input stored from wreg
	line	138
	movwf	(check@input)
	
l3260:	
;prev11.c: 138: int i=0;
	clrf	(check@i)
	clrf	(check@i+1)
	line	140
;prev11.c: 140: for(i=0;i<4;i++)
	clrf	(check@i)
	clrf	(check@i+1)
	
l3262:	
	movf	(check@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3455
	movlw	low(04h)
	subwf	(check@i),w
u3455:

	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l3266
u3450:
	goto	l3278
	
l3264:	
	goto	l3278
	line	141
	
l1087:	
	line	142
	
l3266:	
;prev11.c: 141: {
;prev11.c: 142: if(input[i]=='0'&&logic[i]=='1')
	movf	(check@i),w
	addwf	(check@input),w
	movwf	(??_check+0)+0
	movf	0+(??_check+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	030h
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l3274
u3460:
	
l3268:	
	movf	(check@i),w
	addwf	(check@logic),w
	movwf	(??_check+1)+0
	movf	(check@logic+1),w
	movwf	(??_check+0)+0
	skipnc
	incf	(??_check+0)+0,f
	btfss	(check@i),7
	goto	u3470
	decf	(??_check+0)+0,f
u3470:
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
	goto	u3481
	goto	u3480
u3481:
	goto	l3274
u3480:
	line	143
	
l3270:	
;prev11.c: 143: return 0;
	clrf	(?_check)
	clrf	(?_check+1)
	goto	l1090
	
l3272:	
	goto	l1090
	
l1089:	
	line	140
	
l3274:	
	movlw	low(01h)
	addwf	(check@i),f
	skipnc
	incf	(check@i+1),f
	movlw	high(01h)
	addwf	(check@i+1),f
	
l3276:	
	movf	(check@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3495
	movlw	low(04h)
	subwf	(check@i),w
u3495:

	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l3266
u3490:
	goto	l3278
	
l1088:	
	line	145
	
l3278:	
;prev11.c: 144: }
;prev11.c: 145: return 1;
	movlw	low(01h)
	movwf	(?_check)
	movlw	high(01h)
	movwf	((?_check))+1
	goto	l1090
	
l3280:	
	line	146
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_check
	__end_of_check:
;; =============== function _check ends ============

	signat	_check,8314
	global	_initkeypad
psect	text568,local,class=CODE,delta=2
global __ptext568
__ptext568:

;; *************** function _initkeypad *****************
;; Defined at:
;;		line 686 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
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
psect	text568
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev11.c"
	line	686
	global	__size_of_initkeypad
	__size_of_initkeypad	equ	__end_of_initkeypad-_initkeypad
	
_initkeypad:	
	opt	stack 7
; Regs used in _initkeypad: [wreg+status,2]
	line	687
	
l1780:	
;prev11.c: 687: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	688
	
l1782:	
;prev11.c: 688: TRISB = 0b11010000;
	movlw	(0D0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	690
	
l1263:	
	return
	opt stack 0
GLOBAL	__end_of_initkeypad
	__end_of_initkeypad:
;; =============== function _initkeypad ends ============

	signat	_initkeypad,88
psect	text569,local,class=CODE,delta=2
global __ptext569
__ptext569:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
