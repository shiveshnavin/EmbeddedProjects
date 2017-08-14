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
	FNCALL	_main,_start
	FNCALL	_start,_write
	FNCALL	_start,_scan
	FNCALL	_start,_buzz
	FNCALL	_start,_startswitch
	FNCALL	_start,_getlogicseq
	FNCALL	_getlogicseq,_getlogic
	FNCALL	_getlogicseq,_write
	FNCALL	_getlogicseq,_delay
	FNCALL	_getlogicseq,_strcpy
	FNCALL	_getlogicseq,_scan
	FNCALL	_getlogicseq,_buzz
	FNCALL	_getlogicseq,_itoaa
	FNCALL	_getlogicseq,_strcat
	FNCALL	_getlogicseq,_setlogic
	FNCALL	_startswitch,_init_fun
	FNCALL	_startswitch,_strcpy
	FNCALL	_startswitch,_write
	FNCALL	_startswitch,_buzz
	FNCALL	_startswitch,_strcmp
	FNCALL	_startswitch,_delay
	FNCALL	_startswitch,_check
	FNCALL	_init_fun,_write
	FNCALL	_getlogic,_read_eep
	FNCALL	_getlogic,_write_eep
	FNCALL	_getlogic,_write
	FNCALL	_getlogic,_delay
	FNCALL	_getlogic,_read_log
	FNCALL	_getlogic,_strcpy
	FNCALL	_write,_clearlcd
	FNCALL	_write,_cmd
	FNCALL	_write,_dat
	FNCALL	_clearlcd,_cmd
	FNCALL	_initlcd,_cmd
	FNCALL	_dat,_setLCD
	FNCALL	_dat,__dat
	FNCALL	_cmd,_setLCD
	FNCALL	_cmd,__cmd
	FNCALL	_setlogic,_write_log
	FNCALL	__cmd,_latch
	FNCALL	__dat,_latch
	FNCALL	_read_log,_read_eep
	FNCALL	_write_log,_write_eep
	FNCALL	_scan,_actrow
	FNCALL	_actrow,_resetout
	FNCALL	_actrow,_delay
	FNCALL	_setLCD,_getn
	FNCALL	_latch,_delay
	FNCALL	_itoaa,___wmul
	FNCALL	_itoaa,___awdiv
	FNCALL	_itoaa,___awmod
	FNCALL	_write_eep,_delay
	FNCALL	_read_eep,_delay
	FNROOT	_main
	global	read_log@F1918
	global	_lo
	global	_logic_d1
	global	_logic_d2
	global	_logic_d3
	global	_logic_d4
	global	_plo
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	855

;initializer for read_log@F1918
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
	line	205

;initializer for _lo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	0
	line	201

;initializer for _logic_d1
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	line	202

;initializer for _logic_d2
	retlw	030h
	retlw	031h
	retlw	030h
	retlw	0
	retlw	0
	line	203

;initializer for _logic_d3
	retlw	030h
	retlw	030h
	retlw	031h
	retlw	0
	retlw	0
	line	204

;initializer for _logic_d4
	retlw	031h
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	line	206

;initializer for _plo
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
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
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	15
_adr:
	retlw	0
	retlw	04h
	retlw	08h
	retlw	0Ch
	retlw	0Fh
	global	_adr
	global	_dev
	global	_num
	global	getlogicseq@F1874
	global	_done_init
	global	_f1
	global	_f2
	global	_f3
	global	_pdev
	global	_retm
	global	_PORTB
_PORTB	set	6
	global	_EEIF
_EEIF	set	108
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
	
STR_10:	
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
	retlw	49	;'1'
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
	retlw	50	;'2'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_17:	
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
	
STR_2:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_9:	
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
	
STR_1:	
	retlw	70	;'F'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_3:	
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
	
STR_5:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	33	;'!'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	33	;'!'
	retlw	0
psect	stringtext
	
STR_7:	
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
	
STR_4:	
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_28:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_24:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_32:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_30:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_26:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_34:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_29:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_33:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_31:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_27:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_35:	
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	0
psect	stringtext
STR_8	equ	STR_20+1
STR_16	equ	STR_13+0
STR_19	equ	STR_13+0
STR_12	equ	STR_11+19
STR_15	equ	STR_11+19
STR_18	equ	STR_11+19
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

_num:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
getlogicseq@F1874:
       ds      16

_done_init:
       ds      2

_f1:
       ds      2

_f2:
       ds      2

_f3:
       ds      2

_pdev:
       ds      2

_retm:
       ds      2

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	855
read_log@F1918:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	205
_lo:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	201
_logic_d1:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	202
_logic_d2:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	203
_logic_d3:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	204
_logic_d4:
       ds      5

psect	dataBANK1
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	206
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
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+01Ch)
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
	movlw low(__pdataBANK1+35)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
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
	global	?_initlcd
?_initlcd:	; 0 bytes @ 0x0
	global	?_initkeypad
?_initkeypad:	; 0 bytes @ 0x0
	global	??_initkeypad
??_initkeypad:	; 0 bytes @ 0x0
	global	?_start
?_start:	; 0 bytes @ 0x0
	global	?_startswitch
?_startswitch:	; 0 bytes @ 0x0
	global	?_getlogicseq
?_getlogicseq:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	?_setLCD
?_setLCD:	; 0 bytes @ 0x0
	global	?_buzz
?_buzz:	; 0 bytes @ 0x0
	global	?_setlogic
?_setlogic:	; 0 bytes @ 0x0
	global	?_getlogic
?_getlogic:	; 0 bytes @ 0x0
	global	?_init_fun
?_init_fun:	; 0 bytes @ 0x0
	global	?_clearlcd
?_clearlcd:	; 0 bytes @ 0x0
	global	?_latch
?_latch:	; 0 bytes @ 0x0
	global	?__dat
?__dat:	; 0 bytes @ 0x0
	global	?__cmd
?__cmd:	; 0 bytes @ 0x0
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	?_resetout
?_resetout:	; 0 bytes @ 0x0
	global	??_resetout
??_resetout:	; 0 bytes @ 0x0
	global	?_strcat
?_strcat:	; 1 bytes @ 0x0
	global	?_getn
?_getn:	; 1 bytes @ 0x0
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
	global	getn@n
getn@n:	; 1 bytes @ 0x0
	global	strcat@from
strcat@from:	; 1 bytes @ 0x0
	global	buzz@val
buzz@val:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_strcat
??_strcat:	; 0 bytes @ 0x1
	global	??_getn
??_getn:	; 0 bytes @ 0x1
	ds	1
	global	?_write_eep
?_write_eep:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	?_actrow
?_actrow:	; 0 bytes @ 0x2
	global	??_buzz
??_buzz:	; 0 bytes @ 0x2
	global	??_check
??_check:	; 0 bytes @ 0x2
	global	??_latch
??_latch:	; 0 bytes @ 0x2
	global	??__dat
??__dat:	; 0 bytes @ 0x2
	global	??__cmd
??__cmd:	; 0 bytes @ 0x2
	global	?_strcpy
?_strcpy:	; 1 bytes @ 0x2
	global	strcat@to
strcat@to:	; 1 bytes @ 0x2
	global	actrow@n
actrow@n:	; 2 bytes @ 0x2
	global	write_eep@x
write_eep@x:	; 2 bytes @ 0x2
	global	strcpy@from
strcpy@from:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	check@input
check@input:	; 1 bytes @ 0x3
	global	getn@c
getn@c:	; 1 bytes @ 0x3
	global	strcat@cp
strcat@cp:	; 1 bytes @ 0x3
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
	global	getn@tmp
getn@tmp:	; 1 bytes @ 0x4
	global	write_eep@y
write_eep@y:	; 1 bytes @ 0x4
	global	check@i
check@i:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	?_write_log
?_write_log:	; 0 bytes @ 0x5
	global	??_write_eep
??_write_eep:	; 0 bytes @ 0x5
	global	??_setLCD
??_setLCD:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	write_log@devno
write_log@devno:	; 2 bytes @ 0x5
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
	global	setLCD@number
setLCD@number:	; 1 bytes @ 0x7
	global	write_log@logic
write_log@logic:	; 1 bytes @ 0x7
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x7
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_write_log
??_write_log:	; 0 bytes @ 0x8
	global	??_cmd
??_cmd:	; 0 bytes @ 0x8
	global	??_dat
??_dat:	; 0 bytes @ 0x8
	global	cmd@Command
cmd@Command:	; 1 bytes @ 0x8
	global	dat@Command
dat@Command:	; 1 bytes @ 0x8
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x8
	ds	1
	global	??_initlcd
??_initlcd:	; 0 bytes @ 0x9
	global	??_write
??_write:	; 0 bytes @ 0x9
	global	??_clearlcd
??_clearlcd:	; 0 bytes @ 0x9
	global	?_read_eep
?_read_eep:	; 1 bytes @ 0x9
	global	?_itoaa
?_itoaa:	; 2 bytes @ 0x9
	global	itoaa@value
itoaa@value:	; 2 bytes @ 0x9
	global	write@i
write@i:	; 2 bytes @ 0x9
	global	read_eep@a
read_eep@a:	; 2 bytes @ 0x9
	ds	2
	global	??_startswitch
??_startswitch:	; 0 bytes @ 0xB
	global	??_read_eep
??_read_eep:	; 0 bytes @ 0xB
	global	??_init_fun
??_init_fun:	; 0 bytes @ 0xB
	global	itoaa@ptr
itoaa@ptr:	; 1 bytes @ 0xB
	global	write_log@ads
write_log@ads:	; 1 bytes @ 0xB
	ds	1
	global	??_itoaa
??_itoaa:	; 0 bytes @ 0xC
	global	??_setlogic
??_setlogic:	; 0 bytes @ 0xC
	ds	1
	global	??_getlogic
??_getlogic:	; 0 bytes @ 0xD
	ds	1
	global	??_start
??_start:	; 0 bytes @ 0xE
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_write
?_write:	; 0 bytes @ 0x0
	global	itoaa@count
itoaa@count:	; 2 bytes @ 0x0
	global	write@str
write@str:	; 2 bytes @ 0x0
	global	read_eep@d
read_eep@d:	; 2 bytes @ 0x0
	ds	2
	global	?_read_log
?_read_log:	; 1 bytes @ 0x2
	global	itoaa@temp
itoaa@temp:	; 2 bytes @ 0x2
	global	write@line
write@line:	; 2 bytes @ 0x2
	global	read_log@devno
read_log@devno:	; 2 bytes @ 0x2
	ds	2
	global	??_read_log
??_read_log:	; 0 bytes @ 0x4
	global	write@erase
write@erase:	; 2 bytes @ 0x4
	ds	3
	global	read_log@logic
read_log@logic:	; 5 bytes @ 0x7
	ds	5
	global	read_log@ads
read_log@ads:	; 1 bytes @ 0xC
	ds	1
	global	??_getlogicseq
??_getlogicseq:	; 0 bytes @ 0xD
	ds	4
	global	getlogicseq@str
getlogicseq@str:	; 32 bytes @ 0x11
	ds	32
	global	getlogicseq@bf
getlogicseq@bf:	; 2 bytes @ 0x31
	ds	2
	global	getlogicseq@snum
getlogicseq@snum:	; 16 bytes @ 0x33
	ds	16
	global	getlogicseq@nf
getlogicseq@nf:	; 2 bytes @ 0x43
	ds	2
	global	getlogicseq@wf
getlogicseq@wf:	; 2 bytes @ 0x45
	ds	2
	global	getlogicseq@ccount
getlogicseq@ccount:	; 2 bytes @ 0x47
	ds	2
	global	getlogicseq@num
getlogicseq@num:	; 2 bytes @ 0x49
	ds	2
;;Data sizes: Strings 279, constant 5, data 35, bss 32, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     75      79
;; BANK1           80      0      63
;; BANK3           96      0       0
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
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; ?_itoaa	int  size(1) Largest target is 0
;;
;; ?_strcmp	int  size(1) Largest target is 0
;;
;; ?_strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK0[32]), lo(BANK1[5]), plo(BANK1[5]), logic_d4(BANK1[5]), 
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; ?_read_log	PTR unsigned char  size(1) Largest target is 5
;;		 -> read_log@logic(BANK0[5]), 
;;
;; strcpy@from	PTR const unsigned char  size(2) Largest target is 20
;;		 -> read_log@logic(BANK0[5]), STR_18(CODE[1]), STR_17(CODE[20]), STR_15(CODE[1]), 
;;		 -> STR_14(CODE[20]), STR_12(CODE[1]), STR_11(CODE[20]), STR_8(CODE[4]), 
;;		 -> lo(BANK1[5]), 
;;
;; strcpy@to	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK0[32]), lo(BANK1[5]), plo(BANK1[5]), logic_d4(BANK1[5]), 
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; strcpy@cp	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK0[32]), lo(BANK1[5]), plo(BANK1[5]), logic_d4(BANK1[5]), 
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; strcmp@s2	PTR const unsigned char  size(2) Largest target is 5
;;		 -> STR_35(CODE[5]), STR_34(CODE[5]), STR_33(CODE[5]), STR_32(CODE[5]), 
;;		 -> STR_31(CODE[5]), STR_30(CODE[5]), STR_29(CODE[5]), STR_28(CODE[5]), 
;;		 -> STR_27(CODE[5]), STR_26(CODE[5]), STR_25(CODE[5]), STR_24(CODE[5]), 
;;		 -> STR_23(CODE[5]), STR_22(CODE[5]), STR_21(CODE[5]), STR_20(CODE[5]), 
;;		 -> plo(BANK1[5]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 5
;;		 -> lo(BANK1[5]), 
;;
;; strcat@from	PTR const unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK0[16]), 
;;
;; strcat@to	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; strcat@cp	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; write_log@logic	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d4(BANK1[5]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; write@str	PTR unsigned char  size(2) Largest target is 32
;;		 -> STR_19(CODE[4]), STR_16(CODE[4]), STR_13(CODE[4]), getlogicseq@str(BANK0[32]), 
;;		 -> STR_10(CODE[27]), STR_9(CODE[17]), lo(BANK1[5]), STR_7(CODE[11]), 
;;		 -> STR_6(CODE[12]), STR_5(CODE[13]), logic_d3(BANK1[5]), logic_d2(BANK1[5]), 
;;		 -> logic_d1(BANK1[5]), STR_4(CODE[8]), STR_3(CODE[15]), STR_2(CODE[17]), 
;;		 -> STR_1(CODE[15]), 
;;
;; itoaa@ptr	PTR unsigned char  size(1) Largest target is 16
;;		 -> getlogicseq@snum(BANK0[16]), 
;;
;; sp__strcat	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; check@logic	PTR unsigned char  size(1) Largest target is 5
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; check@input	PTR unsigned char  size(1) Largest target is 5
;;		 -> lo(BANK1[5]), 
;;
;; sp__strcpy	PTR unsigned char  size(1) Largest target is 32
;;		 -> getlogicseq@str(BANK0[32]), lo(BANK1[5]), plo(BANK1[5]), logic_d4(BANK1[5]), 
;;		 -> logic_d3(BANK1[5]), logic_d2(BANK1[5]), logic_d1(BANK1[5]), 
;;
;; sp__read_log	PTR unsigned char  size(1) Largest target is 5
;;		 -> read_log@logic(BANK0[5]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _getlogicseq->_getlogic
;;   _startswitch->_write
;;   _init_fun->_write
;;   _getlogic->_read_eep
;;   _write->_cmd
;;   _write->_dat
;;   _clearlcd->_cmd
;;   _initlcd->_cmd
;;   _dat->_setLCD
;;   _cmd->_setLCD
;;   _setlogic->_write_log
;;   _read_log->_read_eep
;;   _write_log->_write_eep
;;   _scan->_actrow
;;   _actrow->_delay
;;   _setLCD->_getn
;;   _latch->_delay
;;   _itoaa->___awdiv
;;   _write_eep->_delay
;;   _read_eep->_strcpy
;;   _strcpy->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _start->_getlogicseq
;;   _startswitch->_write
;;   _init_fun->_write
;;   _getlogic->_read_log
;;   _read_log->_read_eep
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
;; (0) _main                                                 0     0      0    9222
;;                            _initlcd
;;                         _initkeypad
;;                              _start
;; ---------------------------------------------------------------------------------
;; (1) _start                                                0     0      0    8913
;;                              _write
;;                               _scan
;;                               _buzz
;;                        _startswitch
;;                        _getlogicseq
;; ---------------------------------------------------------------------------------
;; (2) _getlogicseq                                         62    62      0    5257
;;                                             13 BANK0     62    62      0
;;                           _getlogic
;;                              _write
;;                              _delay
;;                             _strcpy
;;                               _scan
;;                               _buzz
;;                              _itoaa
;;                             _strcat
;;                           _setlogic
;; ---------------------------------------------------------------------------------
;; (2) _startswitch                                          2     2      0    2463
;;                                             11 COMMON     2     2      0
;;                           _init_fun
;;                             _strcpy
;;                              _write
;;                               _buzz
;;                             _strcmp
;;                              _delay
;;                              _check
;; ---------------------------------------------------------------------------------
;; (3) _init_fun                                             0     0      0    1061
;;                              _write
;; ---------------------------------------------------------------------------------
;; (3) _getlogic                                             1     1      0    1564
;;                                             13 COMMON     1     1      0
;;                           _read_eep
;;                          _write_eep
;;                              _write
;;                              _delay
;;                           _read_log
;;                             _strcpy
;; ---------------------------------------------------------------------------------
;; (3) _write                                                8     2      6    1061
;;                                              9 COMMON     2     2      0
;;                                              0 BANK0      6     0      6
;;                           _clearlcd
;;                                _cmd
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (4) _clearlcd                                             0     0      0     309
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (1) _initlcd                                              0     0      0     309
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (4) _dat                                                  1     1      0     309
;;                                              8 COMMON     1     1      0
;;                             _setLCD
;;                               __dat
;; ---------------------------------------------------------------------------------
;; (4) _cmd                                                  1     1      0     309
;;                                              8 COMMON     1     1      0
;;                             _setLCD
;;                               __cmd
;; ---------------------------------------------------------------------------------
;; (3) _setlogic                                             1     1      0     265
;;                                             12 COMMON     1     1      0
;;                          _write_log
;; ---------------------------------------------------------------------------------
;; (5) __cmd                                                 0     0      0      22
;;                              _latch
;; ---------------------------------------------------------------------------------
;; (5) __dat                                                 0     0      0      22
;;                              _latch
;; ---------------------------------------------------------------------------------
;; (4) _read_log                                            11     9      2     275
;;                                              2 BANK0     11     9      2
;;                           _read_eep
;;                             _strcpy (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _write_log                                            7     4      3     265
;;                                              5 COMMON     7     4      3
;;                          _write_eep
;; ---------------------------------------------------------------------------------
;; (3) _scan                                                 2     0      2     110
;;                                              4 COMMON     2     0      2
;;                             _actrow
;; ---------------------------------------------------------------------------------
;; (4) _actrow                                               2     0      2     110
;;                                              2 COMMON     2     0      2
;;                           _resetout
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (5) _setLCD                                               3     3      0     265
;;                                              5 COMMON     3     3      0
;;                               _getn
;; ---------------------------------------------------------------------------------
;; (6) _latch                                                0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _itoaa                                                8     5      3    1078
;;                                              9 COMMON     4     1      3
;;                                              0 BANK0      4     4      0
;;                             ___wmul
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (5) _write_eep                                            3     0      3      66
;;                                              2 COMMON     3     0      3
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (5) _read_eep                                             6     4      2      67
;;                                              9 COMMON     4     2      2
;;                                              0 BANK0      2     2      0
;;                              _delay
;;                             _strcpy (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (4) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (4) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (5) _resetout                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (6) _getn                                                 5     4      1      89
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) _strcat                                               4     3      1      96
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (4) _strcmp                                               8     6      2      89
;;                                              0 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (3) _check                                                6     4      2     135
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (4) _strcpy                                               7     5      2      73
;;                                              2 COMMON     7     5      2
;;                              _delay (ARG)
;; ---------------------------------------------------------------------------------
;; (6) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _initkeypad                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _buzz                                                 2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initlcd
;;     _cmd
;;       _setLCD
;;         _getn
;;       __cmd
;;         _latch
;;           _delay
;;   _initkeypad
;;   _start
;;     _write
;;       _clearlcd
;;         _cmd
;;           _setLCD
;;             _getn
;;           __cmd
;;             _latch
;;               _delay
;;       _cmd
;;         _setLCD
;;           _getn
;;         __cmd
;;           _latch
;;             _delay
;;       _dat
;;         _setLCD
;;           _getn
;;         __dat
;;           _latch
;;             _delay
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
;;                 _getn
;;               __cmd
;;                 _latch
;;                   _delay
;;           _cmd
;;             _setLCD
;;               _getn
;;             __cmd
;;               _latch
;;                 _delay
;;           _dat
;;             _setLCD
;;               _getn
;;             __dat
;;               _latch
;;                 _delay
;;       _strcpy
;;         _delay (ARG)
;;       _write
;;         _clearlcd
;;           _cmd
;;             _setLCD
;;               _getn
;;             __cmd
;;               _latch
;;                 _delay
;;         _cmd
;;           _setLCD
;;             _getn
;;           __cmd
;;             _latch
;;               _delay
;;         _dat
;;           _setLCD
;;             _getn
;;           __dat
;;             _latch
;;               _delay
;;       _buzz
;;       _strcmp
;;       _delay
;;       _check
;;     _getlogicseq
;;       _getlogic
;;         _read_eep
;;           _delay
;;           _strcpy (ARG)
;;             _delay (ARG)
;;         _write_eep
;;           _delay
;;         _write
;;           _clearlcd
;;             _cmd
;;               _setLCD
;;                 _getn
;;               __cmd
;;                 _latch
;;                   _delay
;;           _cmd
;;             _setLCD
;;               _getn
;;             __cmd
;;               _latch
;;                 _delay
;;           _dat
;;             _setLCD
;;               _getn
;;             __dat
;;               _latch
;;                 _delay
;;         _delay
;;         _read_log
;;           _read_eep
;;             _delay
;;             _strcpy (ARG)
;;               _delay (ARG)
;;           _strcpy (ARG)
;;             _delay (ARG)
;;         _strcpy
;;           _delay (ARG)
;;       _write
;;         _clearlcd
;;           _cmd
;;             _setLCD
;;               _getn
;;             __cmd
;;               _latch
;;                 _delay
;;         _cmd
;;           _setLCD
;;             _getn
;;           __cmd
;;             _latch
;;               _delay
;;         _dat
;;           _setLCD
;;             _getn
;;           __dat
;;             _latch
;;               _delay
;;       _delay
;;       _strcpy
;;         _delay (ARG)
;;       _scan
;;         _actrow
;;           _resetout
;;           _delay
;;       _buzz
;;       _itoaa
;;         ___wmul
;;         ___awdiv
;;         ___awmod
;;       _strcat
;;       _setlogic
;;         _write_log
;;           _write_eep
;;             _delay
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
;;BANK1               50      0      3F       7       78.8%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      A5      12        0.0%
;;ABS                  0      0      9C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       9       2        0.0%
;;BANK0               50     4B      4F       5       98.8%
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
;;		line 103 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  1097[COMMON] int 
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_initlcd
;;		_initkeypad
;;		_start
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	103
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	107
	
l4192:	
;prev13.c: 107: TRISB = 0b00001111;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	109
	
l4194:	
;prev13.c: 109: initlcd();
	fcall	_initlcd
	line	110
	
l4196:	
;prev13.c: 110: initkeypad();
	fcall	_initkeypad
	line	131
	
l4198:	
;prev13.c: 131: start();
	fcall	_start
	line	138
	
l1098:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_start
psect	text746,local,class=CODE,delta=2
global __ptext746
__ptext746:

;; *************** function _start *****************
;; Defined at:
;;		line 141 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_write
;;		_scan
;;		_buzz
;;		_startswitch
;;		_getlogicseq
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text746
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	141
	global	__size_of_start
	__size_of_start	equ	__end_of_start-_start
	
_start:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _start: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	142
;prev13.c: 142: START:
	
l1101:	
	line	143
	
l4144:	
;prev13.c: 143: done_init=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_done_init)^080h
	clrf	(_done_init+1)^080h
	line	145
	
l4146:	
;prev13.c: 145: write("FP Home Atomn.",1,1);
	movlw	low(STR_1|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	line	146
	
l4148:	
;prev13.c: 146: write("Press 0 to Cont.",2,0);
	movlw	low(STR_2|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_2|8000h)
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
	line	149
;prev13.c: 149: while(scan()!=0);
	goto	l4150
	
l1103:	
	goto	l4150
	
l1102:	
	
l4150:	
	fcall	_scan
	movf	((1+(?_scan))),w
	iorwf	((0+(?_scan))),w
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l4150
u4940:
	goto	l4152
	
l1104:	
	line	152
	
l4152:	
;prev13.c: 152: write("1.SWT  2.REPRG",1,1);
	movlw	low(STR_3|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_3|8000h)
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
	line	153
;prev13.c: 153: write("3.RESET",2,0);
	movlw	low(STR_4|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_4|8000h)
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
	goto	l4154
	line	154
;prev13.c: 154: while(1)
	
l1105:	
	line	157
	
l4154:	
;prev13.c: 155: {
;prev13.c: 157: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_num+1)
	addwf	(_num+1)
	movf	(0+(?_scan)),w
	clrf	(_num)
	addwf	(_num)

	line	158
	
l4156:	
;prev13.c: 158: buzz(num);
	movf	(_num+1),w
	clrf	(?_buzz+1)
	addwf	(?_buzz+1)
	movf	(_num),w
	clrf	(?_buzz)
	addwf	(?_buzz)

	fcall	_buzz
	line	159
	
l4158:	
;prev13.c: 159: if(num==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_num),w
	iorwf	(_num+1),w
	skipz
	goto	u4951
	goto	u4950
u4951:
	goto	l1106
u4950:
	line	161
	
l4160:	
;prev13.c: 160: {
;prev13.c: 161: f1=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_f1)^080h
	movlw	high(01h)
	movwf	((_f1)^080h)+1
	line	162
	
l4162:	
;prev13.c: 162: f2=0;
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	line	163
	
l4164:	
;prev13.c: 163: f3=0;
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	164
	
l1106:	
	line	165
;prev13.c: 164: }
;prev13.c: 165: if(num==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_num),w
	iorwf	(_num+1),w
	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l1107
u4960:
	line	167
	
l4166:	
;prev13.c: 166: {
;prev13.c: 167: f1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	line	168
	
l4168:	
;prev13.c: 168: f2=1;
	movlw	low(01h)
	movwf	(_f2)^080h
	movlw	high(01h)
	movwf	((_f2)^080h)+1
	line	169
	
l4170:	
;prev13.c: 169: f3=0;
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	170
	
l1107:	
	line	171
;prev13.c: 170: }
;prev13.c: 171: if(num==3)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_num),w
	iorwf	(_num+1),w
	skipz
	goto	u4971
	goto	u4970
u4971:
	goto	l4178
u4970:
	line	173
	
l4172:	
;prev13.c: 172: {
;prev13.c: 173: f1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	line	174
;prev13.c: 174: f2=0;
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	line	175
	
l4174:	
;prev13.c: 175: f3=1;
	movlw	low(01h)
	movwf	(_f3)^080h
	movlw	high(01h)
	movwf	((_f3)^080h)+1
	line	176
	
l4176:	
;prev13.c: 176: retm=1;
	movlw	low(01h)
	movwf	(_retm)^080h
	movlw	high(01h)
	movwf	((_retm)^080h)+1
	goto	l4178
	line	177
	
l1108:	
	line	179
	
l4178:	
;prev13.c: 177: }
;prev13.c: 179: if(f1){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_f1+1)^080h,w
	iorwf	(_f1)^080h,w
	skipnz
	goto	u4981
	goto	u4980
u4981:
	goto	l4182
u4980:
	line	180
	
l4180:	
;prev13.c: 180: startswitch();
	fcall	_startswitch
	line	181
;prev13.c: 181: }
	goto	l4154
	line	182
	
l1109:	
	
l4182:	
;prev13.c: 182: else if(f2){ f1=0; f2=0; f3=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_f2+1)^080h,w
	iorwf	(_f2)^080h,w
	skipnz
	goto	u4991
	goto	u4990
u4991:
	goto	l4188
u4990:
	
l4184:	
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	183
	
l4186:	
;prev13.c: 183: getlogicseq();
	fcall	_getlogicseq
	line	184
;prev13.c: 184: }
	goto	l4154
	line	185
	
l1111:	
	
l4188:	
;prev13.c: 185: else if(f3){ f1=0; f2=0; f3=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_f3+1)^080h,w
	iorwf	(_f3)^080h,w
	skipnz
	goto	u5001
	goto	u5000
u5001:
	goto	l4154
u5000:
	
l4190:	
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	clrf	(_f3)^080h
	clrf	(_f3+1)^080h
	line	186
;prev13.c: 186: goto START;
	goto	l1101
	line	188
	
l1113:	
	goto	l4154
	line	189
	
l1112:	
	goto	l4154
	
l1110:	
	goto	l4154
	
l1114:	
	line	154
	goto	l4154
	
l1115:	
	line	192
	
l1116:	
	return
	opt stack 0
GLOBAL	__end_of_start
	__end_of_start:
;; =============== function _start ends ============

	signat	_start,88
	global	_getlogicseq
psect	text747,local,class=CODE,delta=2
global __ptext747
__ptext747:

;; *************** function _getlogicseq *****************
;; Defined at:
;;		line 317 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  str            32   17[BANK0 ] unsigned char [32]
;;  snum           16   51[BANK0 ] unsigned char [16]
;;  num             2   73[BANK0 ] int 
;;  ccount          2   71[BANK0 ] int 
;;  wf              2   69[BANK0 ] int 
;;  nf              2   67[BANK0 ] int 
;;  bf              2   49[BANK0 ] int 
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
;;      Locals:         0      58       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      62       0       0       0
;;Total ram usage:       62 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_getlogic
;;		_write
;;		_delay
;;		_strcpy
;;		_scan
;;		_buzz
;;		_itoaa
;;		_strcat
;;		_setlogic
;; This function is called by:
;;		_start
;; This function uses a non-reentrant model
;;
psect	text747
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	317
	global	__size_of_getlogicseq
	__size_of_getlogicseq	equ	__end_of_getlogicseq-_getlogicseq
	
_getlogicseq:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _getlogicseq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	323
	
l3980:	
;prev13.c: 322: int num ;
;prev13.c: 323: char snum[16]="";
	movlw	(getlogicseq@snum)&0ffh
	movwf	fsr0
	movlw	low(getlogicseq@F1874)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	fsr0,w
	movwf	((??_getlogicseq+0)+0+1)
	movlw	16
	movwf	((??_getlogicseq+0)+0+2)
u4690:
	movf	(??_getlogicseq+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_getlogicseq+0)+0+3)
	incf	(??_getlogicseq+0)+0,f
	movf	((??_getlogicseq+0)+0+1),w
	movwf	fsr0
	
	movf	((??_getlogicseq+0)+0+3),w
	movwf	indf
	incf	((??_getlogicseq+0)+0+1),f
	decfsz	((??_getlogicseq+0)+0+2),f
	goto	u4690
	line	324
	
l3982:	
;prev13.c: 324: int wf=0;
	clrf	(getlogicseq@wf)
	clrf	(getlogicseq@wf+1)
	line	325
	
l3984:	
;prev13.c: 325: int nf=0;
	clrf	(getlogicseq@nf)
	clrf	(getlogicseq@nf+1)
	line	326
	
l3986:	
;prev13.c: 326: int bf=0;
	clrf	(getlogicseq@bf)
	clrf	(getlogicseq@bf+1)
	line	327
	
l3988:	
;prev13.c: 327: int ccount=0;
	clrf	(getlogicseq@ccount)
	clrf	(getlogicseq@ccount+1)
	line	331
	
l3990:	
;prev13.c: 328: char str[32];
;prev13.c: 331: getlogic();
	fcall	_getlogic
	goto	l3992
	line	332
;prev13.c: 332: START_SEQ:
	
l1151:	
	line	333
	
l3992:	
;prev13.c: 333: write("Press 2. - Skip for Device",1,1);
	movlw	low(STR_10|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_10|8000h)
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
	line	334
	
l3994:	
;prev13.c: 334: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	336
	
l3996:	
;prev13.c: 336: wf=0;ccount=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getlogicseq@wf)
	clrf	(getlogicseq@wf+1)
	
l3998:	
	clrf	(getlogicseq@ccount)
	clrf	(getlogicseq@ccount+1)
	line	337
	
l4000:	
;prev13.c: 337: strcpy(str,"Enter Logic DEV1:  ");
	movlw	low(STR_11|8000h)
	movwf	(?_strcpy)
	movlw	high(STR_11|8000h)
	movwf	((?_strcpy))+1
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	338
	
l4002:	
;prev13.c: 338: write(str,1,1);
	movlw	(getlogicseq@str&0ffh)
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
	line	339
	
l4004:	
;prev13.c: 339: write(logic_d1,2,0);
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
	goto	l4006
	line	341
;prev13.c: 341: while(1)
	
l1152:	
	line	343
	
l4006:	
;prev13.c: 342: {
;prev13.c: 343: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getlogicseq@num+1)
	addwf	(getlogicseq@num+1)
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)
	addwf	(getlogicseq@num)

	line	344
	
l4008:	
;prev13.c: 344: buzz(num);
	movf	(getlogicseq@num+1),w
	clrf	(?_buzz+1)
	addwf	(?_buzz+1)
	movf	(getlogicseq@num),w
	clrf	(?_buzz)
	addwf	(?_buzz)

	fcall	_buzz
	line	345
	
l4010:	
;prev13.c: 345: if(num==1||num==0){
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getlogicseq@num),w
	iorwf	(getlogicseq@num+1),w
	skipnz
	goto	u4701
	goto	u4700
u4701:
	goto	l4014
u4700:
	
l4012:	
	movf	((getlogicseq@num+1)),w
	iorwf	((getlogicseq@num)),w
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l4028
u4710:
	goto	l4014
	
l1155:	
	line	346
	
l4014:	
;prev13.c: 346: if(wf==0)
	movf	((getlogicseq@wf+1)),w
	iorwf	((getlogicseq@wf)),w
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l4030
u4720:
	line	348
	
l4016:	
;prev13.c: 347: {
;prev13.c: 348: if(ccount==0)
	movf	((getlogicseq@ccount+1)),w
	iorwf	((getlogicseq@ccount)),w
	skipz
	goto	u4731
	goto	u4730
u4731:
	goto	l1157
u4730:
	line	349
	
l4018:	
;prev13.c: 349: strcpy(logic_d1,"");
	movlw	low(STR_12|8000h)
	movwf	(?_strcpy)
	movlw	high(STR_12|8000h)
	movwf	((?_strcpy))+1
	movlw	(_logic_d1)&0ffh
	fcall	_strcpy
	
l1157:	
	line	350
;prev13.c: 350: write("---",2,0);
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
	line	351
;prev13.c: 351: itoaa(num, snum);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getlogicseq@num+1),w
	clrf	(?_itoaa+1)
	addwf	(?_itoaa+1)
	movf	(getlogicseq@num),w
	clrf	(?_itoaa)
	addwf	(?_itoaa)

	movlw	(getlogicseq@snum)&0ffh
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	0+(?_itoaa)+02h
	fcall	_itoaa
	line	352
	
l4020:	
;prev13.c: 352: strcat(logic_d1,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d1)&0ffh
	fcall	_strcat
	line	353
	
l4022:	
;prev13.c: 353: write( logic_d1,2,0); ;
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
	line	354
	
l4024:	
;prev13.c: 354: wf=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getlogicseq@wf)
	movlw	high(01h)
	movwf	((getlogicseq@wf))+1
	line	355
	
l4026:	
;prev13.c: 355: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount),f
	skipnc
	incf	(getlogicseq@ccount+1),f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1),f
	goto	l4030
	line	356
	
l1156:	
	line	357
;prev13.c: 356: }
;prev13.c: 357: }
	goto	l4030
	line	358
	
l1153:	
	line	359
	
l4028:	
;prev13.c: 358: else{
;prev13.c: 359: wf=0;
	clrf	(getlogicseq@wf)
	clrf	(getlogicseq@wf+1)
	goto	l4030
	line	360
	
l1158:	
	line	361
	
l4030:	
;prev13.c: 360: }
;prev13.c: 361: if(ccount>=3)
	movf	(getlogicseq@ccount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4745
	movlw	low(03h)
	subwf	(getlogicseq@ccount),w
u4745:

	skipc
	goto	u4741
	goto	u4740
u4741:
	goto	l4034
u4740:
	goto	l4044
	line	362
	
l4032:	
;prev13.c: 362: break;
	goto	l4044
	
l1159:	
	line	365
	
l4034:	
;prev13.c: 365: if(num==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getlogicseq@num),w
	iorwf	(getlogicseq@num+1),w
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l4040
u4750:
	line	367
	
l4036:	
;prev13.c: 366: {
;prev13.c: 367: if(nf==0){
	movf	((getlogicseq@nf+1)),w
	iorwf	((getlogicseq@nf)),w
	skipz
	goto	u4761
	goto	u4760
u4761:
	goto	l4006
u4760:
	line	368
	
l4038:	
;prev13.c: 368: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)
	movlw	high(01h)
	movwf	((getlogicseq@nf))+1
	line	369
;prev13.c: 369: break;
	goto	l4044
	line	370
	
l1162:	
	line	371
;prev13.c: 370: }
;prev13.c: 371: }
	goto	l4006
	line	372
	
l1161:	
	
l4040:	
;prev13.c: 372: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num),w
	iorwf	(getlogicseq@num+1),w
	skipz
	goto	u4771
	goto	u4770
u4771:
	goto	l4006
u4770:
	line	373
	
l4042:	
;prev13.c: 373: nf=0;
	clrf	(getlogicseq@nf)
	clrf	(getlogicseq@nf+1)
	goto	l4006
	line	374
	
l1164:	
	goto	l4006
	line	375
	
l1163:	
	goto	l4006
	
l1165:	
	line	341
	goto	l4006
	
l1160:	
	line	378
	
l4044:	
;prev13.c: 374: }
;prev13.c: 375: }
;prev13.c: 378: wf=0;ccount=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getlogicseq@wf)
	clrf	(getlogicseq@wf+1)
	clrf	(getlogicseq@ccount)
	clrf	(getlogicseq@ccount+1)
	line	379
	
l4046:	
;prev13.c: 379: strcpy(str,"Enter Logic DEV2:  ");
	movlw	low(STR_14|8000h)
	movwf	(?_strcpy)
	movlw	high(STR_14|8000h)
	movwf	((?_strcpy))+1
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	380
	
l4048:	
;prev13.c: 380: write(str,1,1);
	movlw	(getlogicseq@str&0ffh)
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
	line	381
	
l4050:	
;prev13.c: 381: write(logic_d2,2,0);
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
	goto	l4052
	line	383
;prev13.c: 383: while(1)
	
l1166:	
	line	385
	
l4052:	
;prev13.c: 384: {
;prev13.c: 385: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getlogicseq@num+1)
	addwf	(getlogicseq@num+1)
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)
	addwf	(getlogicseq@num)

	line	386
	
l4054:	
;prev13.c: 386: buzz(num);
	movf	(getlogicseq@num+1),w
	clrf	(?_buzz+1)
	addwf	(?_buzz+1)
	movf	(getlogicseq@num),w
	clrf	(?_buzz)
	addwf	(?_buzz)

	fcall	_buzz
	line	387
	
l4056:	
;prev13.c: 387: if(num==1||num==0){
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getlogicseq@num),w
	iorwf	(getlogicseq@num+1),w
	skipnz
	goto	u4781
	goto	u4780
u4781:
	goto	l4060
u4780:
	
l4058:	
	movf	((getlogicseq@num+1)),w
	iorwf	((getlogicseq@num)),w
	skipz
	goto	u4791
	goto	u4790
u4791:
	goto	l4074
u4790:
	goto	l4060
	
l1169:	
	line	388
	
l4060:	
;prev13.c: 388: if(wf==0)
	movf	((getlogicseq@wf+1)),w
	iorwf	((getlogicseq@wf)),w
	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l4076
u4800:
	line	389
	
l4062:	
;prev13.c: 389: { if(ccount==0)
	movf	((getlogicseq@ccount+1)),w
	iorwf	((getlogicseq@ccount)),w
	skipz
	goto	u4811
	goto	u4810
u4811:
	goto	l1171
u4810:
	line	390
	
l4064:	
;prev13.c: 390: strcpy(logic_d2,"");
	movlw	low(STR_15|8000h)
	movwf	(?_strcpy)
	movlw	high(STR_15|8000h)
	movwf	((?_strcpy))+1
	movlw	(_logic_d2)&0ffh
	fcall	_strcpy
	
l1171:	
	line	391
;prev13.c: 391: write("---",2,0);
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
	line	392
;prev13.c: 392: itoaa(num, snum);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getlogicseq@num+1),w
	clrf	(?_itoaa+1)
	addwf	(?_itoaa+1)
	movf	(getlogicseq@num),w
	clrf	(?_itoaa)
	addwf	(?_itoaa)

	movlw	(getlogicseq@snum)&0ffh
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	0+(?_itoaa)+02h
	fcall	_itoaa
	line	393
	
l4066:	
;prev13.c: 393: strcat(logic_d2,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d2)&0ffh
	fcall	_strcat
	line	394
	
l4068:	
;prev13.c: 394: write( logic_d2,2,0); ;
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
	line	395
	
l4070:	
;prev13.c: 395: wf=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getlogicseq@wf)
	movlw	high(01h)
	movwf	((getlogicseq@wf))+1
	line	396
	
l4072:	
;prev13.c: 396: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount),f
	skipnc
	incf	(getlogicseq@ccount+1),f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1),f
	goto	l4076
	line	397
	
l1170:	
	line	398
;prev13.c: 397: }
;prev13.c: 398: }
	goto	l4076
	line	399
	
l1167:	
	line	400
	
l4074:	
;prev13.c: 399: else{
;prev13.c: 400: wf=0;
	clrf	(getlogicseq@wf)
	clrf	(getlogicseq@wf+1)
	goto	l4076
	line	401
	
l1172:	
	line	402
	
l4076:	
;prev13.c: 401: }
;prev13.c: 402: if(ccount>=3)
	movf	(getlogicseq@ccount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4825
	movlw	low(03h)
	subwf	(getlogicseq@ccount),w
u4825:

	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l4080
u4820:
	goto	l4090
	line	403
	
l4078:	
;prev13.c: 403: break;
	goto	l4090
	
l1173:	
	line	405
	
l4080:	
;prev13.c: 405: if(num==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getlogicseq@num),w
	iorwf	(getlogicseq@num+1),w
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l4086
u4830:
	line	407
	
l4082:	
;prev13.c: 406: {
;prev13.c: 407: if(nf==0){
	movf	((getlogicseq@nf+1)),w
	iorwf	((getlogicseq@nf)),w
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l4052
u4840:
	line	408
	
l4084:	
;prev13.c: 408: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)
	movlw	high(01h)
	movwf	((getlogicseq@nf))+1
	line	409
;prev13.c: 409: break;
	goto	l4090
	line	410
	
l1176:	
	line	411
;prev13.c: 410: }
;prev13.c: 411: }
	goto	l4052
	line	412
	
l1175:	
	
l4086:	
;prev13.c: 412: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num),w
	iorwf	(getlogicseq@num+1),w
	skipz
	goto	u4851
	goto	u4850
u4851:
	goto	l4052
u4850:
	line	413
	
l4088:	
;prev13.c: 413: nf=0;
	clrf	(getlogicseq@nf)
	clrf	(getlogicseq@nf+1)
	goto	l4052
	line	414
	
l1178:	
	goto	l4052
	line	415
	
l1177:	
	goto	l4052
	
l1179:	
	line	383
	goto	l4052
	
l1174:	
	line	418
	
l4090:	
;prev13.c: 414: }
;prev13.c: 415: }
;prev13.c: 418: wf=0;ccount=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getlogicseq@wf)
	clrf	(getlogicseq@wf+1)
	clrf	(getlogicseq@ccount)
	clrf	(getlogicseq@ccount+1)
	line	419
	
l4092:	
;prev13.c: 419: strcpy(str,"Enter Logic DEV3:  ");
	movlw	low(STR_17|8000h)
	movwf	(?_strcpy)
	movlw	high(STR_17|8000h)
	movwf	((?_strcpy))+1
	movlw	(getlogicseq@str)&0ffh
	fcall	_strcpy
	line	420
	
l4094:	
;prev13.c: 420: write(str,1,1);
	movlw	(getlogicseq@str&0ffh)
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
	line	421
	
l4096:	
;prev13.c: 421: write(logic_d3,2,0);
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
	goto	l4098
	line	423
;prev13.c: 423: while(1)
	
l1180:	
	line	425
	
l4098:	
;prev13.c: 424: {
;prev13.c: 425: num=scan();
	fcall	_scan
	movf	(1+(?_scan)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getlogicseq@num+1)
	addwf	(getlogicseq@num+1)
	movf	(0+(?_scan)),w
	clrf	(getlogicseq@num)
	addwf	(getlogicseq@num)

	line	426
	
l4100:	
;prev13.c: 426: buzz(num);
	movf	(getlogicseq@num+1),w
	clrf	(?_buzz+1)
	addwf	(?_buzz+1)
	movf	(getlogicseq@num),w
	clrf	(?_buzz)
	addwf	(?_buzz)

	fcall	_buzz
	line	427
	
l4102:	
;prev13.c: 427: if(num==1||num==0){
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getlogicseq@num),w
	iorwf	(getlogicseq@num+1),w
	skipnz
	goto	u4861
	goto	u4860
u4861:
	goto	l4106
u4860:
	
l4104:	
	movf	((getlogicseq@num+1)),w
	iorwf	((getlogicseq@num)),w
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l4120
u4870:
	goto	l4106
	
l1183:	
	line	428
	
l4106:	
;prev13.c: 428: if(wf==0)
	movf	((getlogicseq@wf+1)),w
	iorwf	((getlogicseq@wf)),w
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l4122
u4880:
	line	429
	
l4108:	
;prev13.c: 429: { if(ccount==0)
	movf	((getlogicseq@ccount+1)),w
	iorwf	((getlogicseq@ccount)),w
	skipz
	goto	u4891
	goto	u4890
u4891:
	goto	l1185
u4890:
	line	430
	
l4110:	
;prev13.c: 430: strcpy(logic_d3,"");
	movlw	low(STR_18|8000h)
	movwf	(?_strcpy)
	movlw	high(STR_18|8000h)
	movwf	((?_strcpy))+1
	movlw	(_logic_d3)&0ffh
	fcall	_strcpy
	
l1185:	
	line	431
;prev13.c: 431: write("---",2,0);
	movlw	low(STR_19|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_19|8000h)
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
	line	432
;prev13.c: 432: itoaa(num, snum);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getlogicseq@num+1),w
	clrf	(?_itoaa+1)
	addwf	(?_itoaa+1)
	movf	(getlogicseq@num),w
	clrf	(?_itoaa)
	addwf	(?_itoaa)

	movlw	(getlogicseq@snum)&0ffh
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	0+(?_itoaa)+02h
	fcall	_itoaa
	line	433
	
l4112:	
;prev13.c: 433: strcat(logic_d3,snum);
	movlw	(getlogicseq@snum)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getlogicseq+0)+0
	movf	(??_getlogicseq+0)+0,w
	movwf	(?_strcat)
	movlw	(_logic_d3)&0ffh
	fcall	_strcat
	line	434
	
l4114:	
;prev13.c: 434: write( logic_d3,2,0); ;
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
	line	435
	
l4116:	
;prev13.c: 435: wf=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getlogicseq@wf)
	movlw	high(01h)
	movwf	((getlogicseq@wf))+1
	line	436
	
l4118:	
;prev13.c: 436: ccount++;
	movlw	low(01h)
	addwf	(getlogicseq@ccount),f
	skipnc
	incf	(getlogicseq@ccount+1),f
	movlw	high(01h)
	addwf	(getlogicseq@ccount+1),f
	goto	l4122
	line	437
	
l1184:	
	line	438
;prev13.c: 437: }
;prev13.c: 438: }
	goto	l4122
	line	439
	
l1181:	
	line	440
	
l4120:	
;prev13.c: 439: else{
;prev13.c: 440: wf=0;
	clrf	(getlogicseq@wf)
	clrf	(getlogicseq@wf+1)
	goto	l4122
	line	441
	
l1186:	
	line	442
	
l4122:	
;prev13.c: 441: }
;prev13.c: 442: if(ccount>=3)
	movf	(getlogicseq@ccount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4905
	movlw	low(03h)
	subwf	(getlogicseq@ccount),w
u4905:

	skipc
	goto	u4901
	goto	u4900
u4901:
	goto	l4126
u4900:
	goto	l4136
	line	443
	
l4124:	
;prev13.c: 443: break;
	goto	l4136
	
l1187:	
	line	445
	
l4126:	
;prev13.c: 445: if(num==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getlogicseq@num),w
	iorwf	(getlogicseq@num+1),w
	skipz
	goto	u4911
	goto	u4910
u4911:
	goto	l4132
u4910:
	line	447
	
l4128:	
;prev13.c: 446: {
;prev13.c: 447: if(nf==0){
	movf	((getlogicseq@nf+1)),w
	iorwf	((getlogicseq@nf)),w
	skipz
	goto	u4921
	goto	u4920
u4921:
	goto	l4098
u4920:
	line	448
	
l4130:	
;prev13.c: 448: nf=1;
	movlw	low(01h)
	movwf	(getlogicseq@nf)
	movlw	high(01h)
	movwf	((getlogicseq@nf))+1
	line	449
;prev13.c: 449: break;
	goto	l4136
	line	450
	
l1190:	
	line	451
;prev13.c: 450: }
;prev13.c: 451: }
	goto	l4098
	line	452
	
l1189:	
	
l4132:	
;prev13.c: 452: else if(num==99){
	movlw	063h
	xorwf	(getlogicseq@num),w
	iorwf	(getlogicseq@num+1),w
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l4098
u4930:
	line	453
	
l4134:	
;prev13.c: 453: nf=0;
	clrf	(getlogicseq@nf)
	clrf	(getlogicseq@nf+1)
	goto	l4098
	line	454
	
l1192:	
	goto	l4098
	line	455
	
l1191:	
	goto	l4098
	
l1193:	
	line	423
	goto	l4098
	
l1188:	
	line	457
	
l4136:	
;prev13.c: 454: }
;prev13.c: 455: }
;prev13.c: 457: setlogic();
	fcall	_setlogic
	line	499
	
l4138:	
;prev13.c: 499: f1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_f1)^080h
	clrf	(_f1+1)^080h
	line	500
	
l4140:	
;prev13.c: 500: f2=0;
	clrf	(_f2)^080h
	clrf	(_f2+1)^080h
	line	501
	
l4142:	
;prev13.c: 501: f3=1;
	movlw	low(01h)
	movwf	(_f3)^080h
	movlw	high(01h)
	movwf	((_f3)^080h)+1
	line	503
	
l1194:	
	return
	opt stack 0
GLOBAL	__end_of_getlogicseq
	__end_of_getlogicseq:
;; =============== function _getlogicseq ends ============

	signat	_getlogicseq,88
	global	_startswitch
psect	text748,local,class=CODE,delta=2
global __ptext748
__ptext748:

;; *************** function _startswitch *****************
;; Defined at:
;;		line 260 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_init_fun
;;		_strcpy
;;		_write
;;		_buzz
;;		_strcmp
;;		_delay
;;		_check
;; This function is called by:
;;		_start
;; This function uses a non-reentrant model
;;
psect	text748
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	260
	global	__size_of_startswitch
	__size_of_startswitch	equ	__end_of_startswitch-_startswitch
	
_startswitch:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _startswitch: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	261
	
l3926:	
;prev13.c: 261: init_fun();
	fcall	_init_fun
	line	264
;prev13.c: 264: strcpy(plo,lo);
	movlw	(_lo&0ffh)
	movwf	(?_strcpy)
	movlw	(0x1/2)
	movwf	(?_strcpy+1)
	movlw	(_plo)&0ffh
	fcall	_strcpy
	line	265
;prev13.c: 265: strcpy(lo,"000");;
	movlw	low(STR_8|8000h)
	movwf	(?_strcpy)
	movlw	high(STR_8|8000h)
	movwf	((?_strcpy))+1
	movlw	(_lo)&0ffh
	fcall	_strcpy
	line	266
	
l3928:	
;prev13.c: 266: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u4541
	goto	u4540
u4541:
	goto	l3932
u4540:
	line	267
	
l3930:	
;prev13.c: 267: lo[0]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lo)^080h
	goto	l3932
	
l1136:	
	line	268
	
l3932:	
;prev13.c: 268: if(RA1==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(41/8),(41)&7
	goto	u4551
	goto	u4550
u4551:
	goto	l3936
u4550:
	line	269
	
l3934:	
;prev13.c: 269: lo[1]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_lo)^080h+01h
	goto	l3936
	
l1137:	
	line	270
	
l3936:	
;prev13.c: 270: if(RA2==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(42/8),(42)&7
	goto	u4561
	goto	u4560
u4561:
	goto	l3940
u4560:
	line	271
	
l3938:	
;prev13.c: 271: lo[2]='1';
	movlw	(031h)
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_lo)^080h+02h
	goto	l3940
	
l1138:	
	line	274
	
l3940:	
;prev13.c: 274: pdev=dev;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_dev+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pdev+1)^080h
	addwf	(_pdev+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dev),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pdev)^080h
	addwf	(_pdev)^080h

	line	275
	
l3942:	
;prev13.c: 275: dev=0b0000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_dev)
	clrf	(_dev+1)
	line	276
	
l3944:	
;prev13.c: 276: write("Press 2 to REPRG",2,0);
	movlw	low(STR_9|8000h)
	movwf	(?_write)
	movlw	high(STR_9|8000h)
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
	
l3946:	
;prev13.c: 277: buzz(99);
	movlw	low(063h)
	movwf	(?_buzz)
	movlw	high(063h)
	movwf	((?_buzz))+1
	fcall	_buzz
	line	279
	
l3948:	
;prev13.c: 279: if(strcmp(lo,plo)!=0)
	movlw	(_plo&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_lo)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	iorwf	(0+(?_strcmp)),w
	skipnz
	goto	u4571
	goto	u4570
u4571:
	goto	l1146
u4570:
	line	282
	
l3950:	
;prev13.c: 280: {
;prev13.c: 282: write(lo,1,1);
	movlw	(_lo&0ffh)
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
	
l3952:	
;prev13.c: 283: buzz(7);
	movlw	low(07h)
	movwf	(?_buzz)
	movlw	high(07h)
	movwf	((?_buzz))+1
	fcall	_buzz
	line	284
	
l3954:	
;prev13.c: 284: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	287
;prev13.c: 287: if(check(lo,logic_d1))
	movlw	(_logic_d1)&0ffh
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(?_check)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4581
	goto	u4580
u4581:
	goto	l3958
u4580:
	line	288
	
l3956:	
;prev13.c: 288: dev=dev|0b0001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(01h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3960
	line	289
	
l1140:	
	line	290
	
l3958:	
;prev13.c: 289: else
;prev13.c: 290: dev=dev&0b0110;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(06h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3960
	
l1141:	
	line	292
	
l3960:	
;prev13.c: 292: if(check(lo,logic_d2))
	movlw	(_logic_d2)&0ffh
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(?_check)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4591
	goto	u4590
u4591:
	goto	l3964
u4590:
	line	293
	
l3962:	
;prev13.c: 293: dev=dev|0b0010;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(02h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3966
	line	294
	
l1142:	
	line	295
	
l3964:	
;prev13.c: 294: else
;prev13.c: 295: dev=dev&0b0101;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(05h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3966
	
l1143:	
	line	298
	
l3966:	
;prev13.c: 298: if(check(lo,logic_d3))
	movlw	(_logic_d3)&0ffh
	movwf	(??_startswitch+0)+0
	movf	(??_startswitch+0)+0,w
	movwf	(?_check)
	movlw	(_lo)&0ffh
	fcall	_check
	movf	(1+(?_check)),w
	iorwf	(0+(?_check)),w
	skipnz
	goto	u4601
	goto	u4600
u4601:
	goto	l3970
u4600:
	line	299
	
l3968:	
;prev13.c: 299: dev=dev|0b0100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dev),w
	movwf	(_dev)
	movlw	high(04h)
	iorwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3972
	line	300
	
l1144:	
	line	301
	
l3970:	
;prev13.c: 300: else
;prev13.c: 301: dev=dev&0b0011;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_dev),w
	movwf	(_dev)
	movlw	high(03h)
	andwf	(_dev+1),w
	movwf	1+(_dev)
	goto	l3972
	
l1145:	
	line	306
	
l3972:	
;prev13.c: 306: RC4=dev&0b0001;
	btfsc	(_dev),0
	goto	u4611
	goto	u4610
	
u4611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	goto	u4624
u4610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
u4624:
	line	307
	
l3974:	
;prev13.c: 307: RC5=(dev>>1)&0b0001;
	movf	(_dev+1),w
	movwf	(??_startswitch+0)+0+1
	movf	(_dev),w
	movwf	(??_startswitch+0)+0
	movlw	01h
	movwf	btemp+1
u4635:
	rlf	(??_startswitch+0)+1,w
	rrf	(??_startswitch+0)+1,f
	rrf	(??_startswitch+0)+0,f
	decfsz	btemp+1,f
	goto	u4635
	btfsc	0+(??_startswitch+0)+0,0
	goto	u4641
	goto	u4640
	
u4641:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	goto	u4654
u4640:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
u4654:
	line	308
	
l3976:	
;prev13.c: 308: RC6=(dev>>2)&0b0001;
	movf	(_dev+1),w
	movwf	(??_startswitch+0)+0+1
	movf	(_dev),w
	movwf	(??_startswitch+0)+0
	movlw	02h
	movwf	btemp+1
u4665:
	rlf	(??_startswitch+0)+1,w
	rrf	(??_startswitch+0)+1,f
	rrf	(??_startswitch+0)+0,f
	decfsz	btemp+1,f
	goto	u4665
	btfsc	0+(??_startswitch+0)+0,0
	goto	u4671
	goto	u4670
	
u4671:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	goto	u4684
u4670:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
u4684:
	line	309
	
l3978:	
;prev13.c: 309: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l1146
	line	310
	
l1139:	
	line	313
	
l1146:	
	return
	opt stack 0
GLOBAL	__end_of_startswitch
	__end_of_startswitch:
;; =============== function _startswitch ends ============

	signat	_startswitch,88
	global	_init_fun
psect	text749,local,class=CODE,delta=2
global __ptext749
__ptext749:

;; *************** function _init_fun *****************
;; Defined at:
;;		line 249 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_write
;; This function is called by:
;;		_startswitch
;; This function uses a non-reentrant model
;;
psect	text749
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	249
	global	__size_of_init_fun
	__size_of_init_fun	equ	__end_of_init_fun-_init_fun
	
_init_fun:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _init_fun: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	250
	
l3916:	
;prev13.c: 250: if(done_init==0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((_done_init+1)^080h),w
	iorwf	((_done_init)^080h),w
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l1133
u4530:
	line	253
	
l3918:	
;prev13.c: 251: {
;prev13.c: 253: TRISA=0x0F;
	movlw	(0Fh)
	movwf	(133)^080h	;volatile
	line	254
	
l3920:	
;prev13.c: 254: ANSEL=0x0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	255
	
l3922:	
;prev13.c: 255: done_init=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_done_init)^080h
	movlw	high(01h)
	movwf	((_done_init)^080h)+1
	line	256
	
l3924:	
;prev13.c: 256: write("Sensing...",1,1);
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
	goto	l1133
	line	257
	
l1132:	
	line	258
	
l1133:	
	return
	opt stack 0
GLOBAL	__end_of_init_fun
	__end_of_init_fun:
;; =============== function _init_fun ends ============

	signat	_init_fun,88
	global	_getlogic
psect	text750,local,class=CODE,delta=2
global __ptext750
__ptext750:

;; *************** function _getlogic *****************
;; Defined at:
;;		line 217 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_read_eep
;;		_write_eep
;;		_write
;;		_delay
;;		_read_log
;;		_strcpy
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text750
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	217
	global	__size_of_getlogic
	__size_of_getlogic	equ	__end_of_getlogic-_getlogic
	
_getlogic:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _getlogic: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	218
	
l3894:	
;prev13.c: 218: if(read_eep(0xF0)!='X')
	movlw	low(0F0h)
	movwf	(?_read_eep)
	movlw	high(0F0h)
	movwf	((?_read_eep))+1
	fcall	_read_eep
	xorlw	058h
	skipnz
	goto	u4521
	goto	u4520
u4521:
	goto	l3904
u4520:
	line	220
	
l3896:	
;prev13.c: 219: {
;prev13.c: 220: write_eep(0xF0,'X');
	movlw	low(0F0h)
	movwf	(?_write_eep)
	movlw	high(0F0h)
	movwf	((?_write_eep))+1
	movlw	(058h)
	movwf	(??_getlogic+0)+0
	movf	(??_getlogic+0)+0,w
	movwf	0+(?_write_eep)+02h
	fcall	_write_eep
	line	221
	
l3898:	
;prev13.c: 221: write("CONFIGURED !",1,1);
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
	line	222
	
l3900:	
;prev13.c: 222: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l1123
	line	223
	
l3902:	
;prev13.c: 223: return;
	goto	l1123
	line	225
	
l1122:	
	line	226
	
l3904:	
;prev13.c: 225: }
;prev13.c: 226: write("READING.. !",1,1);
	movlw	low(STR_6|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_write)
	movlw	high(STR_6|8000h)
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
	line	227
	
l3906:	
;prev13.c: 227: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	228
	
l3908:	
;prev13.c: 228: strcpy(logic_d1,read_log(0));
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_read_log)
	movlw	high(0)
	movwf	((?_read_log))+1
	fcall	_read_log
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	(_logic_d1)&0ffh
	fcall	_strcpy
	line	229
	
l3910:	
;prev13.c: 229: strcpy(logic_d2,read_log(1));
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_read_log)
	movlw	high(01h)
	movwf	((?_read_log))+1
	fcall	_read_log
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	(_logic_d2)&0ffh
	fcall	_strcpy
	line	230
	
l3912:	
;prev13.c: 230: strcpy(logic_d3,read_log(2));
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_read_log)
	movlw	high(02h)
	movwf	((?_read_log))+1
	fcall	_read_log
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	(_logic_d3)&0ffh
	fcall	_strcpy
	line	231
	
l3914:	
;prev13.c: 231: strcpy(logic_d4,read_log(3));
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_read_log)
	movlw	high(03h)
	movwf	((?_read_log))+1
	fcall	_read_log
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	(_logic_d4)&0ffh
	fcall	_strcpy
	line	233
	
l1123:	
	return
	opt stack 0
GLOBAL	__end_of_getlogic
	__end_of_getlogic:
;; =============== function _getlogic ends ============

	signat	_getlogic,88
	global	_write
psect	text751,local,class=CODE,delta=2
global __ptext751
__ptext751:

;; *************** function _write *****************
;; Defined at:
;;		line 684 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;  str             2    0[BANK0 ] PTR unsigned char 
;;		 -> STR_19(4), STR_16(4), STR_13(4), getlogicseq@str(32), 
;;		 -> STR_10(27), STR_9(17), lo(5), STR_7(11), 
;;		 -> STR_6(12), STR_5(13), logic_d3(5), logic_d2(5), 
;;		 -> logic_d1(5), STR_4(8), STR_3(15), STR_2(17), 
;;		 -> STR_1(15), 
;;  line            2    2[BANK0 ] int 
;;  erase           2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2    9[COMMON] int 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_clearlcd
;;		_cmd
;;		_dat
;; This function is called by:
;;		_start
;;		_getlogic
;;		_init_fun
;;		_startswitch
;;		_getlogicseq
;;		_scroll
;; This function uses a non-reentrant model
;;
psect	text751
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	684
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
;; using string table level
	opt	stack 1
; Regs used in _write: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	685
	
l3876:	
;prev13.c: 685: if(erase==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@erase),w
	iorwf	(write@erase+1),w
	skipz
	goto	u4491
	goto	u4490
u4491:
	goto	l3880
u4490:
	line	686
	
l3878:	
;prev13.c: 686: clearlcd();
	fcall	_clearlcd
	goto	l3880
	
l1274:	
	line	688
	
l3880:	
;prev13.c: 688: if(line==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(write@line),w
	iorwf	(write@line+1),w
	skipz
	goto	u4501
	goto	u4500
u4501:
	goto	l3884
u4500:
	line	689
	
l3882:	
;prev13.c: 689: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	goto	l3886
	line	690
	
l1275:	
	line	691
	
l3884:	
;prev13.c: 690: else
;prev13.c: 691: cmd(0x2);
	movlw	(02h)
	fcall	_cmd
	goto	l3886
	
l1276:	
	line	693
	
l3886:	
;prev13.c: 693: int i=0;
	clrf	(write@i)
	clrf	(write@i+1)
	line	694
;prev13.c: 694: while(str[i]!='\0')
	goto	l3892
	
l1278:	
	line	696
	
l3888:	
;prev13.c: 695: {
;prev13.c: 696: dat(str[i]);
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
	fcall	_dat
	line	697
	
l3890:	
;prev13.c: 697: i++;
	movlw	low(01h)
	addwf	(write@i),f
	skipnc
	incf	(write@i+1),f
	movlw	high(01h)
	addwf	(write@i+1),f
	goto	l3892
	line	698
	
l1277:	
	line	694
	
l3892:	
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
	goto	u4511
	goto	u4510
u4511:
	goto	l3888
u4510:
	goto	l1280
	
l1279:	
	line	701
	
l1280:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,12408
	global	_clearlcd
psect	text752,local,class=CODE,delta=2
global __ptext752
__ptext752:

;; *************** function _clearlcd *****************
;; Defined at:
;;		line 614 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_cmd
;; This function is called by:
;;		_write
;; This function uses a non-reentrant model
;;
psect	text752
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	614
	global	__size_of_clearlcd
	__size_of_clearlcd	equ	__end_of_clearlcd-_clearlcd
	
_clearlcd:	
	opt	stack 0
; Regs used in _clearlcd: [wreg+status,2+status,0+pclath+cstack]
	line	615
	
l3874:	
;prev13.c: 615: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	616
	
l1250:	
	return
	opt stack 0
GLOBAL	__end_of_clearlcd
	__end_of_clearlcd:
;; =============== function _clearlcd ends ============

	signat	_clearlcd,88
	global	_initlcd
psect	text753,local,class=CODE,delta=2
global __ptext753
__ptext753:

;; *************** function _initlcd *****************
;; Defined at:
;;		line 596 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text753
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	596
	global	__size_of_initlcd
	__size_of_initlcd	equ	__end_of_initlcd-_initlcd
	
_initlcd:	
	opt	stack 3
; Regs used in _initlcd: [wreg+status,2+status,0+pclath+cstack]
	line	598
	
l3862:	
;prev13.c: 598: TRISC=0b0000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	600
	
l3864:	
;prev13.c: 600: TRISD=0b11000000;
	movlw	(0C0h)
	movwf	(136)^080h	;volatile
	line	602
	
l3866:	
;prev13.c: 602: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	604
	
l3868:	
;prev13.c: 604: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	606
	
l3870:	
;prev13.c: 606: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	608
	
l3872:	
;prev13.c: 608: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	612
	
l1247:	
	return
	opt stack 0
GLOBAL	__end_of_initlcd
	__end_of_initlcd:
;; =============== function _initlcd ends ============

	signat	_initlcd,88
	global	_dat
psect	text754,local,class=CODE,delta=2
global __ptext754
__ptext754:

;; *************** function _dat *****************
;; Defined at:
;;		line 651 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    8[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setLCD
;;		__dat
;; This function is called by:
;;		_write
;; This function uses a non-reentrant model
;;
psect	text754
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	651
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 1
; Regs used in _dat: [wreg+status,2+status,0+pclath+cstack]
;dat@Command stored from wreg
	movwf	(dat@Command)
	line	652
	
l3860:	
;prev13.c: 652: setLCD(Command);
	movf	(dat@Command),w
	fcall	_setLCD
	line	653
;prev13.c: 653: _dat();
	fcall	__dat
	line	659
	
l1265:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text755,local,class=CODE,delta=2
global __ptext755
__ptext755:

;; *************** function _cmd *****************
;; Defined at:
;;		line 643 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    8[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setLCD
;;		__cmd
;; This function is called by:
;;		_initlcd
;;		_clearlcd
;;		_write
;;		_scroll
;; This function uses a non-reentrant model
;;
psect	text755
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	643
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 1
; Regs used in _cmd: [wreg+status,2+status,0+pclath+cstack]
;cmd@Command stored from wreg
	line	645
	movwf	(cmd@Command)
	
l3858:	
;prev13.c: 645: setLCD(Command);
	movf	(cmd@Command),w
	fcall	_setLCD
	line	646
;prev13.c: 646: _cmd();
	fcall	__cmd
	line	648
	
l1262:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_setlogic
psect	text756,local,class=CODE,delta=2
global __ptext756
__ptext756:

;; *************** function _setlogic *****************
;; Defined at:
;;		line 210 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_write_log
;; This function is called by:
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text756
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	210
	global	__size_of_setlogic
	__size_of_setlogic	equ	__end_of_setlogic-_setlogic
	
_setlogic:	
	opt	stack 2
; Regs used in _setlogic: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	211
	
l3856:	
;prev13.c: 211: write_log(0,logic_d1);
	movlw	low(0)
	movwf	(?_write_log)
	movlw	high(0)
	movwf	((?_write_log))+1
	movlw	(_logic_d1)&0ffh
	movwf	(??_setlogic+0)+0
	movf	(??_setlogic+0)+0,w
	movwf	0+(?_write_log)+02h
	fcall	_write_log
	line	212
;prev13.c: 212: write_log(1,logic_d2);
	movlw	low(01h)
	movwf	(?_write_log)
	movlw	high(01h)
	movwf	((?_write_log))+1
	movlw	(_logic_d2)&0ffh
	movwf	(??_setlogic+0)+0
	movf	(??_setlogic+0)+0,w
	movwf	0+(?_write_log)+02h
	fcall	_write_log
	line	213
;prev13.c: 213: write_log(2,logic_d3);
	movlw	low(02h)
	movwf	(?_write_log)
	movlw	high(02h)
	movwf	((?_write_log))+1
	movlw	(_logic_d3)&0ffh
	movwf	(??_setlogic+0)+0
	movf	(??_setlogic+0)+0,w
	movwf	0+(?_write_log)+02h
	fcall	_write_log
	line	214
;prev13.c: 214: write_log(3,logic_d4);
	movlw	low(03h)
	movwf	(?_write_log)
	movlw	high(03h)
	movwf	((?_write_log))+1
	movlw	(_logic_d4)&0ffh
	movwf	(??_setlogic+0)+0
	movf	(??_setlogic+0)+0,w
	movwf	0+(?_write_log)+02h
	fcall	_write_log
	line	215
	
l1119:	
	return
	opt stack 0
GLOBAL	__end_of_setlogic
	__end_of_setlogic:
;; =============== function _setlogic ends ============

	signat	_setlogic,88
	global	__cmd
psect	text757,local,class=CODE,delta=2
global __ptext757
__ptext757:

;; *************** function __cmd *****************
;; Defined at:
;;		line 635 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_latch
;; This function is called by:
;;		_cmd
;; This function uses a non-reentrant model
;;
psect	text757
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	635
	global	__size_of__cmd
	__size_of__cmd	equ	__end_of__cmd-__cmd
	
__cmd:	
	opt	stack 1
; Regs used in __cmd: [wreg+status,2+status,0+pclath+cstack]
	line	636
	
l3852:	
;prev13.c: 636: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	line	637
	
l3854:	
;prev13.c: 637: latch();
	fcall	_latch
	line	638
	
l1259:	
	return
	opt stack 0
GLOBAL	__end_of__cmd
	__end_of__cmd:
;; =============== function __cmd ends ============

	signat	__cmd,88
	global	__dat
psect	text758,local,class=CODE,delta=2
global __ptext758
__ptext758:

;; *************** function __dat *****************
;; Defined at:
;;		line 629 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_latch
;; This function is called by:
;;		_dat
;; This function uses a non-reentrant model
;;
psect	text758
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	629
	global	__size_of__dat
	__size_of__dat	equ	__end_of__dat-__dat
	
__dat:	
	opt	stack 1
; Regs used in __dat: [wreg+status,2+status,0+pclath+cstack]
	line	630
	
l3848:	
;prev13.c: 630: RD5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	line	631
	
l3850:	
;prev13.c: 631: latch();
	fcall	_latch
	line	632
	
l1256:	
	return
	opt stack 0
GLOBAL	__end_of__dat
	__end_of__dat:
;; =============== function __dat ends ============

	signat	__dat,88
	global	_read_log
psect	text759,local,class=CODE,delta=2
global __ptext759
__ptext759:

;; *************** function _read_log *****************
;; Defined at:
;;		line 854 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;  devno           2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  logic           5    7[BANK0 ] unsigned char [5]
;;  ads             1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_read_eep
;; This function is called by:
;;		_getlogic
;; This function uses a non-reentrant model
;;
psect	text759
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	854
	global	__size_of_read_log
	__size_of_read_log	equ	__end_of_read_log-_read_log
	
_read_log:	
	opt	stack 2
; Regs used in _read_log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	855
	
l3832:	
;prev13.c: 855: char logic[]="0000";
	movlw	(read_log@logic)&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(read_log@F1918)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(read_log@F1918)^080h+1,w
	movwf	indf
	incf	fsr0,f
	movf	(read_log@F1918)^080h+2,w
	movwf	indf
	incf	fsr0,f
	movf	(read_log@F1918)^080h+3,w
	movwf	indf
	incf	fsr0,f
	movf	(read_log@F1918)^080h+4,w
	movwf	indf
	line	857
	
l3834:	
;prev13.c: 857: char ads=adr[devno];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(read_log@devno),w
	addlw	low(_adr|8000h)
	movwf	fsr0
	movlw	high(_adr|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_read_log+0)+0
	movf	(??_read_log+0)+0,w
	movwf	(read_log@ads)
	line	859
	
l3836:	
;prev13.c: 859: logic[0]=read_eep(ads);
	movf	(read_log@ads),w
	movwf	(??_read_log+0)+0
	clrf	(??_read_log+0)+0+1
	movf	0+(??_read_log+0)+0,w
	movwf	(?_read_eep)
	movf	1+(??_read_log+0)+0,w
	movwf	(?_read_eep+1)
	fcall	_read_eep
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_read_log+2)+0
	movf	(??_read_log+2)+0,w
	movwf	(read_log@logic)
	line	860
	
l3838:	
;prev13.c: 860: logic[1]=read_eep(ads+1);
	movf	(read_log@ads),w
	addlw	low(01h)
	movwf	(?_read_eep)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((?_read_eep))+1
	fcall	_read_eep
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_read_log+0)+0
	movf	(??_read_log+0)+0,w
	movwf	0+(read_log@logic)+01h
	line	861
	
l3840:	
;prev13.c: 861: logic[2]=read_eep(ads+2);
	movf	(read_log@ads),w
	addlw	low(02h)
	movwf	(?_read_eep)
	movlw	high(02h)
	skipnc
	movlw	(high(02h)+1)&0ffh
	movwf	((?_read_eep))+1
	fcall	_read_eep
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_read_log+0)+0
	movf	(??_read_log+0)+0,w
	movwf	0+(read_log@logic)+02h
	line	862
	
l3842:	
;prev13.c: 862: logic[3]=read_eep(ads+3);
	movf	(read_log@ads),w
	addlw	low(03h)
	movwf	(?_read_eep)
	movlw	high(03h)
	skipnc
	movlw	(high(03h)+1)&0ffh
	movwf	((?_read_eep))+1
	fcall	_read_eep
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_read_log+0)+0
	movf	(??_read_log+0)+0,w
	movwf	0+(read_log@logic)+03h
	line	864
	
l3844:	
;prev13.c: 864: return logic;
	movlw	(read_log@logic)&0ffh
	goto	l1347
	
l3846:	
	line	865
	
l1347:	
	return
	opt stack 0
GLOBAL	__end_of_read_log
	__end_of_read_log:
;; =============== function _read_log ends ============

	signat	_read_log,4217
	global	_write_log
psect	text760,local,class=CODE,delta=2
global __ptext760
__ptext760:

;; *************** function _write_log *****************
;; Defined at:
;;		line 884 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;  devno           2    5[COMMON] int 
;;  logic           1    7[COMMON] PTR unsigned char 
;;		 -> logic_d4(5), logic_d3(5), logic_d2(5), logic_d1(5), 
;; Auto vars:     Size  Location     Type
;;  ads             1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_write_eep
;; This function is called by:
;;		_setlogic
;; This function uses a non-reentrant model
;;
psect	text760
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	884
	global	__size_of_write_log
	__size_of_write_log	equ	__end_of_write_log-_write_log
	
_write_log:	
	opt	stack 2
; Regs used in _write_log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	887
	
l3822:	
;prev13.c: 887: char ads=adr[devno];
	movf	(write_log@devno),w
	addlw	low(_adr|8000h)
	movwf	fsr0
	movlw	high(_adr|8000h)
	skipnc
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_write_log+0)+0
	movf	(??_write_log+0)+0,w
	movwf	(write_log@ads)
	line	889
	
l3824:	
;prev13.c: 889: write_eep(ads,logic[0]);
	movf	(write_log@ads),w
	movwf	(??_write_log+0)+0
	clrf	(??_write_log+0)+0+1
	movf	0+(??_write_log+0)+0,w
	movwf	(?_write_eep)
	movf	1+(??_write_log+0)+0,w
	movwf	(?_write_eep+1)
	movf	(write_log@logic),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_write_log+2)+0
	movf	(??_write_log+2)+0,w
	movwf	0+(?_write_eep)+02h
	fcall	_write_eep
	line	890
	
l3826:	
;prev13.c: 890: write_eep(ads+1,logic[1]);
	movf	(write_log@ads),w
	addlw	low(01h)
	movwf	(?_write_eep)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((?_write_eep))+1
	movf	(write_log@logic),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_write_log+0)+0
	movf	(??_write_log+0)+0,w
	movwf	0+(?_write_eep)+02h
	fcall	_write_eep
	line	891
	
l3828:	
;prev13.c: 891: write_eep(ads+2,logic[2]);
	movf	(write_log@ads),w
	addlw	low(02h)
	movwf	(?_write_eep)
	movlw	high(02h)
	skipnc
	movlw	(high(02h)+1)&0ffh
	movwf	((?_write_eep))+1
	movf	(write_log@logic),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_write_log+0)+0
	movf	(??_write_log+0)+0,w
	movwf	0+(?_write_eep)+02h
	fcall	_write_eep
	line	892
	
l3830:	
;prev13.c: 892: write_eep(ads+3,logic[3]);
	movf	(write_log@ads),w
	addlw	low(03h)
	movwf	(?_write_eep)
	movlw	high(03h)
	skipnc
	movlw	(high(03h)+1)&0ffh
	movwf	((?_write_eep))+1
	movf	(write_log@logic),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_write_log+0)+0
	movf	(??_write_log+0)+0,w
	movwf	0+(?_write_eep)+02h
	fcall	_write_eep
	line	898
	
l1356:	
	return
	opt stack 0
GLOBAL	__end_of_write_log
	__end_of_write_log:
;; =============== function _write_log ends ============

	signat	_write_log,8312
	global	_scan
psect	text761,local,class=CODE,delta=2
global __ptext761
__ptext761:

;; *************** function _scan *****************
;; Defined at:
;;		line 766 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;		_start
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text761
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	766
	global	__size_of_scan
	__size_of_scan	equ	__end_of_scan-_scan
	
_scan:	
	opt	stack 3
; Regs used in _scan: [wreg+status,2+status,0+pclath+cstack]
	line	768
	
l3714:	
;prev13.c: 768: actrow(1) ;
	movlw	low(01h)
	movwf	(?_actrow)
	movlw	high(01h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	769
	
l3716:	
;prev13.c: 769: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l1301
u4330:
	line	770
	
l3718:	
;prev13.c: 770: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l1302
	
l3720:	
	goto	l1302
	
l3722:	
	goto	l3740
	line	771
	
l1301:	
;prev13.c: 771: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4341
	goto	u4340
u4341:
	goto	l1304
u4340:
	line	772
	
l3724:	
;prev13.c: 772: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l1302
	
l3726:	
	goto	l1302
	
l3728:	
	goto	l3740
	line	773
	
l1304:	
;prev13.c: 773: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4351
	goto	u4350
u4351:
	goto	l1306
u4350:
	line	774
	
l3730:	
;prev13.c: 774: return 2;
	movlw	low(02h)
	movwf	(?_scan)
	movlw	high(02h)
	movwf	((?_scan))+1
	goto	l1302
	
l3732:	
	goto	l1302
	
l3734:	
	goto	l3740
	line	775
	
l1306:	
;prev13.c: 775: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4361
	goto	u4360
u4361:
	goto	l3740
u4360:
	line	776
	
l3736:	
;prev13.c: 776: return 0;
	clrf	(?_scan)
	clrf	(?_scan+1)
	goto	l1302
	
l3738:	
	goto	l1302
	
l1308:	
	goto	l3740
	line	778
	
l1307:	
	goto	l3740
	
l1305:	
	goto	l3740
	
l1303:	
	
l3740:	
;prev13.c: 778: actrow(2) ;
	movlw	low(02h)
	movwf	(?_actrow)
	movlw	high(02h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	780
	
l3742:	
;prev13.c: 780: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l1309
u4370:
	line	781
	
l3744:	
;prev13.c: 781: return 4;
	movlw	low(04h)
	movwf	(?_scan)
	movlw	high(04h)
	movwf	((?_scan))+1
	goto	l1302
	
l3746:	
	goto	l1302
	
l3748:	
	goto	l3766
	line	782
	
l1309:	
;prev13.c: 782: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l1311
u4380:
	line	783
	
l3750:	
;prev13.c: 783: return 5;
	movlw	low(05h)
	movwf	(?_scan)
	movlw	high(05h)
	movwf	((?_scan))+1
	goto	l1302
	
l3752:	
	goto	l1302
	
l3754:	
	goto	l3766
	line	784
	
l1311:	
;prev13.c: 784: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l1313
u4390:
	line	785
	
l3756:	
;prev13.c: 785: return 6;
	movlw	low(06h)
	movwf	(?_scan)
	movlw	high(06h)
	movwf	((?_scan))+1
	goto	l1302
	
l3758:	
	goto	l1302
	
l3760:	
	goto	l3766
	line	786
	
l1313:	
;prev13.c: 786: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4401
	goto	u4400
u4401:
	goto	l3766
u4400:
	line	787
	
l3762:	
;prev13.c: 787: return 1;
	movlw	low(01h)
	movwf	(?_scan)
	movlw	high(01h)
	movwf	((?_scan))+1
	goto	l1302
	
l3764:	
	goto	l1302
	
l1315:	
	goto	l3766
	line	789
	
l1314:	
	goto	l3766
	
l1312:	
	goto	l3766
	
l1310:	
	
l3766:	
;prev13.c: 789: actrow(3) ;
	movlw	low(03h)
	movwf	(?_actrow)
	movlw	high(03h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	791
	
l3768:	
;prev13.c: 791: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l1316
u4410:
	line	792
	
l3770:	
;prev13.c: 792: return 8;
	movlw	low(08h)
	movwf	(?_scan)
	movlw	high(08h)
	movwf	((?_scan))+1
	goto	l1302
	
l3772:	
	goto	l1302
	
l3774:	
	goto	l3792
	line	793
	
l1316:	
;prev13.c: 793: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4421
	goto	u4420
u4421:
	goto	l1318
u4420:
	line	794
	
l3776:	
;prev13.c: 794: return 9;
	movlw	low(09h)
	movwf	(?_scan)
	movlw	high(09h)
	movwf	((?_scan))+1
	goto	l1302
	
l3778:	
	goto	l1302
	
l3780:	
	goto	l3792
	line	795
	
l1318:	
;prev13.c: 795: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l1320
u4430:
	line	796
	
l3782:	
;prev13.c: 796: return 10;
	movlw	low(0Ah)
	movwf	(?_scan)
	movlw	high(0Ah)
	movwf	((?_scan))+1
	goto	l1302
	
l3784:	
	goto	l1302
	
l3786:	
	goto	l3792
	line	797
	
l1320:	
;prev13.c: 797: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l3792
u4440:
	line	798
	
l3788:	
;prev13.c: 798: return 2;
	movlw	low(02h)
	movwf	(?_scan)
	movlw	high(02h)
	movwf	((?_scan))+1
	goto	l1302
	
l3790:	
	goto	l1302
	
l1322:	
	goto	l3792
	line	801
	
l1321:	
	goto	l3792
	
l1319:	
	goto	l3792
	
l1317:	
	
l3792:	
;prev13.c: 801: actrow(4) ;
	movlw	low(04h)
	movwf	(?_actrow)
	movlw	high(04h)
	movwf	((?_actrow))+1
	fcall	_actrow
	line	803
	
l3794:	
;prev13.c: 803: if( RD6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l1323
u4450:
	line	804
	
l3796:	
;prev13.c: 804: return 12;
	movlw	low(0Ch)
	movwf	(?_scan)
	movlw	high(0Ch)
	movwf	((?_scan))+1
	goto	l1302
	
l3798:	
	goto	l1302
	
l3800:	
	goto	l3818
	line	805
	
l1323:	
;prev13.c: 805: else if(RD7==1)
	btfss	(71/8),(71)&7
	goto	u4461
	goto	u4460
u4461:
	goto	l1325
u4460:
	line	806
	
l3802:	
;prev13.c: 806: return 13;
	movlw	low(0Dh)
	movwf	(?_scan)
	movlw	high(0Dh)
	movwf	((?_scan))+1
	goto	l1302
	
l3804:	
	goto	l1302
	
l3806:	
	goto	l3818
	line	807
	
l1325:	
;prev13.c: 807: else if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u4471
	goto	u4470
u4471:
	goto	l1327
u4470:
	line	808
	
l3808:	
;prev13.c: 808: return 14;
	movlw	low(0Eh)
	movwf	(?_scan)
	movlw	high(0Eh)
	movwf	((?_scan))+1
	goto	l1302
	
l3810:	
	goto	l1302
	
l3812:	
	goto	l3818
	line	809
	
l1327:	
;prev13.c: 809: else if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u4481
	goto	u4480
u4481:
	goto	l3818
u4480:
	line	810
	
l3814:	
;prev13.c: 810: return 3;
	movlw	low(03h)
	movwf	(?_scan)
	movlw	high(03h)
	movwf	((?_scan))+1
	goto	l1302
	
l3816:	
	goto	l1302
	
l1329:	
	goto	l3818
	line	814
	
l1328:	
	goto	l3818
	
l1326:	
	goto	l3818
	
l1324:	
	
l3818:	
;prev13.c: 814: return 99;
	movlw	low(063h)
	movwf	(?_scan)
	movlw	high(063h)
	movwf	((?_scan))+1
	goto	l1302
	
l3820:	
	line	818
	
l1302:	
	return
	opt stack 0
GLOBAL	__end_of_scan
	__end_of_scan:
;; =============== function _scan ends ============

	signat	_scan,90
	global	_actrow
psect	text762,local,class=CODE,delta=2
global __ptext762
__ptext762:

;; *************** function _actrow *****************
;; Defined at:
;;		line 827 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
psect	text762
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	827
	global	__size_of_actrow
	__size_of_actrow	equ	__end_of_actrow-_actrow
	
_actrow:	
	opt	stack 3
; Regs used in _actrow: [wreg+status,2+status,0+pclath+cstack]
	line	828
	
l3694:	
;prev13.c: 828: resetout();
	fcall	_resetout
	line	830
	
l3696:	
;prev13.c: 830: if(n==1)
	movlw	01h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4291
	goto	u4290
u4291:
	goto	l3700
u4290:
	line	832
	
l3698:	
;prev13.c: 831: {
;prev13.c: 832: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	833
;prev13.c: 833: }
	goto	l3712
	line	834
	
l1335:	
	
l3700:	
;prev13.c: 834: else if(n==2)
	movlw	02h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l3704
u4300:
	line	836
	
l3702:	
;prev13.c: 835: {
;prev13.c: 836: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	837
;prev13.c: 837: }
	goto	l3712
	line	838
	
l1337:	
	
l3704:	
;prev13.c: 838: else if(n==3)
	movlw	03h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4311
	goto	u4310
u4311:
	goto	l3708
u4310:
	line	840
	
l3706:	
;prev13.c: 839: {
;prev13.c: 840: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	841
;prev13.c: 841: }
	goto	l3712
	line	842
	
l1339:	
	
l3708:	
;prev13.c: 842: else if(n==4)
	movlw	04h
	xorwf	(actrow@n),w
	iorwf	(actrow@n+1),w
	skipz
	goto	u4321
	goto	u4320
u4321:
	goto	l3712
u4320:
	line	844
	
l3710:	
;prev13.c: 843: {
;prev13.c: 844: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	l3712
	line	845
	
l1341:	
	goto	l3712
	line	846
	
l1340:	
	goto	l3712
	
l1338:	
	goto	l3712
	
l1336:	
	
l3712:	
;prev13.c: 845: }
;prev13.c: 846: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	849
	
l1342:	
	return
	opt stack 0
GLOBAL	__end_of_actrow
	__end_of_actrow:
;; =============== function _actrow ends ============

	signat	_actrow,4216
	global	_setLCD
psect	text763,local,class=CODE,delta=2
global __ptext763
__ptext763:

;; *************** function _setLCD *****************
;; Defined at:
;;		line 669 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;  number          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  number          1    7[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_getn
;; This function is called by:
;;		_cmd
;;		_dat
;; This function uses a non-reentrant model
;;
psect	text763
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	669
	global	__size_of_setLCD
	__size_of_setLCD	equ	__end_of_setLCD-_setLCD
	
_setLCD:	
	opt	stack 2
; Regs used in _setLCD: [wreg+status,2+status,0+pclath+cstack]
;setLCD@number stored from wreg
	line	672
	movwf	(setLCD@number)
	
l3692:	
;prev13.c: 672: RD3=getn(number,0);
	clrf	(?_getn)
	movf	(setLCD@number),w
	fcall	_getn
	movwf	(??_setLCD+0)+0
	btfsc	0+(??_setLCD+0)+0,0
	goto	u4131
	goto	u4130
	
u4131:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	goto	u4144
u4130:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
u4144:
	line	673
;prev13.c: 673: RD2=getn(number,1);
	clrf	(?_getn)
	bsf	status,0
	rlf	(?_getn),f
	movf	(setLCD@number),w
	fcall	_getn
	movwf	(??_setLCD+0)+0
	btfsc	0+(??_setLCD+0)+0,0
	goto	u4151
	goto	u4150
	
u4151:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	goto	u4164
u4150:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
u4164:
	line	674
;prev13.c: 674: RD1=getn(number,2);
	movlw	(02h)
	movwf	(??_setLCD+0)+0
	movf	(??_setLCD+0)+0,w
	movwf	(?_getn)
	movf	(setLCD@number),w
	fcall	_getn
	movwf	(??_setLCD+1)+0
	btfsc	0+(??_setLCD+1)+0,0
	goto	u4171
	goto	u4170
	
u4171:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u4184
u4170:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u4184:
	line	675
;prev13.c: 675: RD0=getn(number,3);
	movlw	(03h)
	movwf	(??_setLCD+0)+0
	movf	(??_setLCD+0)+0,w
	movwf	(?_getn)
	movf	(setLCD@number),w
	fcall	_getn
	movwf	(??_setLCD+1)+0
	btfsc	0+(??_setLCD+1)+0,0
	goto	u4191
	goto	u4190
	
u4191:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u4204
u4190:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u4204:
	line	676
;prev13.c: 676: RC3=getn(number,4);
	movlw	(04h)
	movwf	(??_setLCD+0)+0
	movf	(??_setLCD+0)+0,w
	movwf	(?_getn)
	movf	(setLCD@number),w
	fcall	_getn
	movwf	(??_setLCD+1)+0
	btfsc	0+(??_setLCD+1)+0,0
	goto	u4211
	goto	u4210
	
u4211:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u4224
u4210:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u4224:
	line	677
;prev13.c: 677: RC2=getn(number,5);
	movlw	(05h)
	movwf	(??_setLCD+0)+0
	movf	(??_setLCD+0)+0,w
	movwf	(?_getn)
	movf	(setLCD@number),w
	fcall	_getn
	movwf	(??_setLCD+1)+0
	btfsc	0+(??_setLCD+1)+0,0
	goto	u4231
	goto	u4230
	
u4231:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u4244
u4230:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u4244:
	line	678
;prev13.c: 678: RC1=getn(number,6);
	movlw	(06h)
	movwf	(??_setLCD+0)+0
	movf	(??_setLCD+0)+0,w
	movwf	(?_getn)
	movf	(setLCD@number),w
	fcall	_getn
	movwf	(??_setLCD+1)+0
	btfsc	0+(??_setLCD+1)+0,0
	goto	u4251
	goto	u4250
	
u4251:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u4264
u4250:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u4264:
	line	679
;prev13.c: 679: RC0=getn(number,7);
	movlw	(07h)
	movwf	(??_setLCD+0)+0
	movf	(??_setLCD+0)+0,w
	movwf	(?_getn)
	movf	(setLCD@number),w
	fcall	_getn
	movwf	(??_setLCD+1)+0
	btfsc	0+(??_setLCD+1)+0,0
	goto	u4271
	goto	u4270
	
u4271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4284
u4270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4284:
	line	682
	
l1271:	
	return
	opt stack 0
GLOBAL	__end_of_setLCD
	__end_of_setLCD:
;; =============== function _setLCD ends ============

	signat	_setLCD,4216
	global	_latch
psect	text764,local,class=CODE,delta=2
global __ptext764
__ptext764:

;; *************** function _latch *****************
;; Defined at:
;;		line 620 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		__dat
;;		__cmd
;; This function uses a non-reentrant model
;;
psect	text764
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	620
	global	__size_of_latch
	__size_of_latch	equ	__end_of_latch-_latch
	
_latch:	
	opt	stack 1
; Regs used in _latch: [wreg+status,2+status,0+pclath+cstack]
	line	621
	
l3686:	
;prev13.c: 621: RD4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	line	622
	
l3688:	
;prev13.c: 622: delay(250);
	movlw	low(0FAh)
	movwf	(?_delay)
	movlw	high(0FAh)
	movwf	((?_delay))+1
	fcall	_delay
	line	623
	
l3690:	
;prev13.c: 623: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	624
;prev13.c: 624: delay(300);
	movlw	low(012Ch)
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	625
	
l1253:	
	return
	opt stack 0
GLOBAL	__end_of_latch
	__end_of_latch:
;; =============== function _latch ends ============

	signat	_latch,88
	global	_itoaa
psect	text765,local,class=CODE,delta=2
global __ptext765
__ptext765:

;; *************** function _itoaa *****************
;; Defined at:
;;		line 569 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
psect	text765
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	569
	global	__size_of_itoaa
	__size_of_itoaa	equ	__end_of_itoaa-_itoaa
	
_itoaa:	
	opt	stack 4
; Regs used in _itoaa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	570
	
l3638:	
;prev13.c: 570: int count=0,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@count)
	clrf	(itoaa@count+1)
	line	571
	
l3640:	
;prev13.c: 571: if(ptr==(0))
	movf	(itoaa@ptr),f
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l3644
u4060:
	goto	l1238
	line	572
	
l3642:	
;prev13.c: 572: return 0;
;	Return value of _itoaa is never used
	goto	l1238
	
l1237:	
	line	573
	
l3644:	
;prev13.c: 573: if(value==0)
	movf	((itoaa@value+1)),w
	iorwf	((itoaa@value)),w
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l1239
u4070:
	line	575
	
l3646:	
;prev13.c: 574: {
;prev13.c: 575: *ptr='0';
	movlw	(030h)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l1238
	line	576
	
l3648:	
;prev13.c: 576: return 1;
;	Return value of _itoaa is never used
	goto	l1238
	line	577
	
l1239:	
	line	579
;prev13.c: 577: }
;prev13.c: 579: if(value<0)
	btfss	(itoaa@value+1),7
	goto	u4081
	goto	u4080
u4081:
	goto	l3658
u4080:
	line	581
	
l3650:	
;prev13.c: 580: {
;prev13.c: 581: value*=(-1);
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

	line	582
	
l3652:	
;prev13.c: 582: *ptr++='-';
	movlw	(02Dh)
	movwf	(??_itoaa+0)+0
	movf	(itoaa@ptr),w
	movwf	fsr0
	movf	(??_itoaa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3654:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	line	583
	
l3656:	
;prev13.c: 583: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	goto	l3658
	line	584
	
l1240:	
	line	585
	
l3658:	
;prev13.c: 584: }
;prev13.c: 585: for(temp=value;temp>0;temp/=10,ptr++);
	movf	(itoaa@value+1),w
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3660:	
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
	goto	l3664
u4090:
	goto	l3670
	
l3662:	
	goto	l3670
	
l1241:	
	
l3664:	
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

	
l3666:	
	movlw	(01h)
	movwf	(??_itoaa+0)+0
	movf	(??_itoaa+0)+0,w
	addwf	(itoaa@ptr),f
	
l3668:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4105
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4105:

	skipnc
	goto	u4101
	goto	u4100
u4101:
	goto	l3664
u4100:
	goto	l3670
	
l1242:	
	line	586
	
l3670:	
;prev13.c: 586: *ptr='\0';
	movf	(itoaa@ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	587
	
l3672:	
;prev13.c: 587: for(temp=value;temp>0;temp/=10)
	movf	(itoaa@value+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(itoaa@temp+1)
	addwf	(itoaa@temp+1)
	movf	(itoaa@value),w
	clrf	(itoaa@temp)
	addwf	(itoaa@temp)

	
l3674:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4115
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4115:

	skipnc
	goto	u4111
	goto	u4110
u4111:
	goto	l3678
u4110:
	goto	l1238
	
l3676:	
	goto	l1238
	line	588
	
l1243:	
	line	589
	
l3678:	
;prev13.c: 588: {
;prev13.c: 589: *--ptr=temp%10+'0';
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
	line	590
	
l3680:	
;prev13.c: 590: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(itoaa@count),f
	skipnc
	incf	(itoaa@count+1),f
	movlw	high(01h)
	addwf	(itoaa@count+1),f
	line	587
	
l3682:	
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

	
l3684:	
	movf	(itoaa@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4125
	movlw	low(01h)
	subwf	(itoaa@temp),w
u4125:

	skipnc
	goto	u4121
	goto	u4120
u4121:
	goto	l3678
u4120:
	goto	l1238
	
l1244:	
	line	593
;prev13.c: 591: }
;prev13.c: 592: return count;
;	Return value of _itoaa is never used
	
l1238:	
	return
	opt stack 0
GLOBAL	__end_of_itoaa
	__end_of_itoaa:
;; =============== function _itoaa ends ============

	signat	_itoaa,8314
	global	_write_eep
psect	text766,local,class=CODE,delta=2
global __ptext766
__ptext766:

;; *************** function _write_eep *****************
;; Defined at:
;;		line 903 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;  x               2    2[COMMON] unsigned int 
;;  y               1    4[COMMON] unsigned char 
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
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_getlogic
;;		_write_log
;; This function uses a non-reentrant model
;;
psect	text766
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	903
	global	__size_of_write_eep
	__size_of_write_eep	equ	__end_of_write_eep-_write_eep
	
_write_eep:	
	opt	stack 2
; Regs used in _write_eep: [wreg+status,2+status,0+pclath+cstack]
	line	904
;prev13.c: 904: again:
	
l1359:	
	line	905
;prev13.c: 905: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	906
	
l3626:	
;prev13.c: 906: EEADR=x;
	movf	(write_eep@x),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	907
;prev13.c: 907: EEDAT=y;
	movf	(write_eep@y),w
	movwf	(268)^0100h	;volatile
	line	908
	
l3628:	
;prev13.c: 908: WRERR=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3171/8)^0180h,(3171)&7
	line	909
	
l3630:	
;prev13.c: 909: WREN=1;
	bsf	(3170/8)^0180h,(3170)&7
	line	910
;prev13.c: 910: EECON2=0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	911
;prev13.c: 911: EECON2=0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	912
	
l3632:	
;prev13.c: 912: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	line	913
;prev13.c: 913: while(WR==1);
	goto	l1360
	
l1361:	
	
l1360:	
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l1360
u4040:
	
l1362:	
	line	914
;prev13.c: 914: if(WRERR==1)
	btfss	(3171/8)^0180h,(3171)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l3636
u4050:
	goto	l1359
	line	915
	
l3634:	
;prev13.c: 915: goto again;
	goto	l1359
	
l1363:	
	line	916
	
l3636:	
;prev13.c: 916: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	917
	
l1364:	
	return
	opt stack 0
GLOBAL	__end_of_write_eep
	__end_of_write_eep:
;; =============== function _write_eep ends ============

	signat	_write_eep,8312
	global	_read_eep
psect	text767,local,class=CODE,delta=2
global __ptext767
__ptext767:

;; *************** function _read_eep *****************
;; Defined at:
;;		line 869 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;  a               2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  d               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_getlogic
;;		_read_log
;; This function uses a non-reentrant model
;;
psect	text767
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	869
	global	__size_of_read_eep
	__size_of_read_eep	equ	__end_of_read_eep-_read_eep
	
_read_eep:	
	opt	stack 2
; Regs used in _read_eep: [wreg+status,2+status,0+pclath+cstack]
	line	871
	
l3608:	
;prev13.c: 870: int d;
;prev13.c: 871: EEADR=a;
	movf	(read_eep@a),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	873
	
l3610:	
;prev13.c: 873: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	874
	
l3612:	
;prev13.c: 874: EEIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(108/8),(108)&7
	line	875
	
l3614:	
;prev13.c: 875: RD=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3168/8)^0180h,(3168)&7
	line	876
	
l3616:	
;prev13.c: 876: WREN=0;
	bcf	(3170/8)^0180h,(3170)&7
	line	877
;prev13.c: 877: while(RD==1);
	goto	l1350
	
l1351:	
	
l1350:	
	btfsc	(3168/8)^0180h,(3168)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l1350
u4030:
	goto	l3618
	
l1352:	
	line	878
	
l3618:	
;prev13.c: 878: d=EEDAT;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	movwf	(??_read_eep+0)+0
	clrf	(??_read_eep+0)+0+1
	movf	0+(??_read_eep+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_eep@d)
	movf	1+(??_read_eep+0)+0,w
	movwf	(read_eep@d+1)
	line	879
	
l3620:	
;prev13.c: 879: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	880
	
l3622:	
;prev13.c: 880: return d;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(read_eep@d),w
	goto	l1353
	
l3624:	
	line	881
	
l1353:	
	return
	opt stack 0
GLOBAL	__end_of_read_eep
	__end_of_read_eep:
;; =============== function _read_eep ends ============

	signat	_read_eep,4217
	global	___awmod
psect	text768,local,class=CODE,delta=2
global __ptext768
__ptext768:

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
psect	text768
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3574:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3941
	goto	u3940
u3941:
	goto	l3578
u3940:
	line	10
	
l3576:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3578
	line	12
	
l1604:	
	line	13
	
l3578:	
	btfss	(___awmod@divisor+1),7
	goto	u3951
	goto	u3950
u3951:
	goto	l3582
u3950:
	line	14
	
l3580:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3582
	
l1605:	
	line	15
	
l3582:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3961
	goto	u3960
u3961:
	goto	l3600
u3960:
	line	16
	
l3584:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3590
	
l1608:	
	line	18
	
l3586:	
	movlw	01h
	
u3975:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3975
	line	19
	
l3588:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3590
	line	20
	
l1607:	
	line	17
	
l3590:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l3586
u3980:
	goto	l3592
	
l1609:	
	goto	l3592
	line	21
	
l1610:	
	line	22
	
l3592:	
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
	goto	l3596
u3990:
	line	23
	
l3594:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3596
	
l1611:	
	line	24
	
l3596:	
	movlw	01h
	
u4005:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4005
	line	25
	
l3598:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l3592
u4010:
	goto	l3600
	
l1612:	
	goto	l3600
	line	26
	
l1606:	
	line	27
	
l3600:	
	movf	(___awmod@sign),w
	skipz
	goto	u4020
	goto	l3604
u4020:
	line	28
	
l3602:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3604
	
l1613:	
	line	29
	
l3604:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1614
	
l3606:	
	line	30
	
l1614:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text769,local,class=CODE,delta=2
global __ptext769
__ptext769:

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
psect	text769
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3534:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3841
	goto	u3840
u3841:
	goto	l3538
u3840:
	line	11
	
l3536:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3538
	line	13
	
l1536:	
	line	14
	
l3538:	
	btfss	(___awdiv@dividend+1),7
	goto	u3851
	goto	u3850
u3851:
	goto	l3544
u3850:
	line	15
	
l3540:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3542:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3544
	line	17
	
l1537:	
	line	18
	
l3544:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3546:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3861
	goto	u3860
u3861:
	goto	l3566
u3860:
	line	20
	
l3548:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3554
	
l1540:	
	line	22
	
l3550:	
	movlw	01h
	
u3875:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3875
	line	23
	
l3552:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3554
	line	24
	
l1539:	
	line	21
	
l3554:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l3550
u3880:
	goto	l3556
	
l1541:	
	goto	l3556
	line	25
	
l1542:	
	line	26
	
l3556:	
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
	goto	l3562
u3900:
	line	28
	
l3558:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3560:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3562
	line	30
	
l1543:	
	line	31
	
l3562:	
	movlw	01h
	
u3915:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3915
	line	32
	
l3564:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l3556
u3920:
	goto	l3566
	
l1544:	
	goto	l3566
	line	33
	
l1538:	
	line	34
	
l3566:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3930
	goto	l3570
u3930:
	line	35
	
l3568:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3570
	
l1545:	
	line	36
	
l3570:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1546
	
l3572:	
	line	37
	
l1546:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text770,local,class=CODE,delta=2
global __ptext770
__ptext770:

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
psect	text770
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3522:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3524
	line	6
	
l1396:	
	line	7
	
l3524:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l1397
u3800:
	line	8
	
l3526:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1397:	
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
	
l3528:	
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
	goto	l3524
u3830:
	goto	l3530
	
l1398:	
	line	12
	
l3530:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1399
	
l3532:	
	line	13
	
l1399:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_resetout
psect	text771,local,class=CODE,delta=2
global __ptext771
__ptext771:

;; *************** function _resetout *****************
;; Defined at:
;;		line 823 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
psect	text771
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	823
	global	__size_of_resetout
	__size_of_resetout	equ	__end_of_resetout-_resetout
	
_resetout:	
	opt	stack 3
; Regs used in _resetout: []
	line	824
	
l3520:	
;prev13.c: 824: RD6=0;RD7=0;RB6=0;RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	bcf	(71/8),(71)&7
	bcf	(54/8),(54)&7
	bcf	(55/8),(55)&7
	line	825
	
l1332:	
	return
	opt stack 0
GLOBAL	__end_of_resetout
	__end_of_resetout:
;; =============== function _resetout ends ============

	signat	_resetout,88
	global	_getn
psect	text772,local,class=CODE,delta=2
global __ptext772
__ptext772:

;; *************** function _getn *****************
;; Defined at:
;;		line 663 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  n               1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[COMMON] unsigned char 
;;  tmp             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setLCD
;; This function uses a non-reentrant model
;;
psect	text772
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	663
	global	__size_of_getn
	__size_of_getn	equ	__end_of_getn-_getn
	
_getn:	
	opt	stack 2
; Regs used in _getn: [wreg+status,2+status,0]
;getn@c stored from wreg
	movwf	(getn@c)
	line	664
	
l3480:	
;prev13.c: 664: unsigned char tmp=1<<n;
	movlw	(01h)
	movwf	(??_getn+0)+0
	incf	(getn@n),w
	goto	u3734
u3735:
	clrc
	rlf	(??_getn+0)+0,f
u3734:
	addlw	-1
	skipz
	goto	u3735
	movf	0+(??_getn+0)+0,w
	movwf	(??_getn+1)+0
	movf	(??_getn+1)+0,w
	movwf	(getn@tmp)
	line	665
;prev13.c: 665: return (c & tmp)>>n;
	movf	(getn@c),w
	andwf	(getn@tmp),w
	movwf	(??_getn+0)+0
	incf	(getn@n),w
	goto	u3744
u3745:
	clrc
	rrf	(??_getn+0)+0,f
u3744:
	addlw	-1
	skipz
	goto	u3745
	movf	0+(??_getn+0)+0,w
	goto	l1268
	
l3482:	
	line	666
	
l1268:	
	return
	opt stack 0
GLOBAL	__end_of_getn
	__end_of_getn:
;; =============== function _getn ends ============

	signat	_getn,8313
	global	_strcat
psect	text773,local,class=CODE,delta=2
global __ptext773
__ptext773:

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
psect	text773
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcat.c"
	line	10
	global	__size_of_strcat
	__size_of_strcat	equ	__end_of_strcat-_strcat
	
_strcat:	
	opt	stack 5
; Regs used in _strcat: [wreg-fsr0h+status,2+status,0]
;strcat@to stored from wreg
	line	18
	movwf	(strcat@to)
	
l3404:	
	movf	(strcat@to),w
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	movwf	(strcat@cp)
	line	19
	goto	l3408
	
l1368:	
	line	20
	
l3406:	
	movlw	(01h)
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	addwf	(strcat@cp),f
	goto	l3408
	
l1367:	
	line	19
	
l3408:	
	movf	(strcat@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l3406
u3550:
	goto	l3410
	
l1369:	
	line	21
	goto	l3410
	
l1371:	
	line	22
	goto	l3410
	
l1370:	
	line	21
	
l3410:	
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
	goto	u3561
	goto	u3560
u3561:
	goto	l3410
u3560:
	goto	l1373
	
l1372:	
	line	24
;	Return value of _strcat is never used
	
l1373:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
;; =============== function _strcat ends ============

	signat	_strcat,8313
	global	_strcmp
psect	text774,local,class=CODE,delta=2
global __ptext774
__ptext774:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> lo(5), 
;;  s2              2    0[COMMON] PTR const unsigned char 
;;		 -> STR_35(5), STR_34(5), STR_33(5), STR_32(5), 
;;		 -> STR_31(5), STR_30(5), STR_29(5), STR_28(5), 
;;		 -> STR_27(5), STR_26(5), STR_25(5), STR_24(5), 
;;		 -> STR_23(5), STR_22(5), STR_21(5), STR_20(5), 
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
psect	text774
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
	
l3394:	
	goto	l3396
	
l1377:	
	line	38
	goto	l3396
	
l1376:	
	line	37
	
l3396:	
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
	goto	l3400
u3530:
	
l3398:	
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
	goto	l3396
u3540:
	goto	l3400
	
l1379:	
	goto	l3400
	
l1380:	
	line	39
	
l3400:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l1381
	
l3402:	
	line	40
	
l1381:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_check
psect	text775,local,class=CODE,delta=2
global __ptext775
__ptext775:

;; *************** function _check *****************
;; Defined at:
;;		line 237 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
psect	text775
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	237
	global	__size_of_check
	__size_of_check	equ	__end_of_check-_check
	
_check:	
	opt	stack 5
; Regs used in _check: [wreg-fsr0h+status,2+status,0+btemp+1]
;check@input stored from wreg
	line	239
	movwf	(check@input)
	
l3372:	
;prev13.c: 239: int i=0;
	clrf	(check@i)
	clrf	(check@i+1)
	line	241
;prev13.c: 241: for(i=0;i<4;i++)
	clrf	(check@i)
	clrf	(check@i+1)
	
l3374:	
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
	goto	l3378
u3490:
	goto	l3390
	
l3376:	
	goto	l3390
	line	242
	
l1126:	
	line	243
	
l3378:	
;prev13.c: 242: {
;prev13.c: 243: if(input[i]=='0'&&logic[i]=='1')
	movf	(check@i),w
	addwf	(check@input),w
	movwf	(??_check+0)+0
	movf	0+(??_check+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	030h
	skipz
	goto	u3501
	goto	u3500
u3501:
	goto	l3386
u3500:
	
l3380:	
	movf	(check@i),w
	addwf	(check@logic),w
	movwf	(??_check+0)+0
	movf	0+(??_check+0)+0,w
	movwf	fsr0
	movf	indf,w
	xorlw	031h
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l3386
u3510:
	line	244
	
l3382:	
;prev13.c: 244: return 0;
	clrf	(?_check)
	clrf	(?_check+1)
	goto	l1129
	
l3384:	
	goto	l1129
	
l1128:	
	line	241
	
l3386:	
	movlw	low(01h)
	addwf	(check@i),f
	skipnc
	incf	(check@i+1),f
	movlw	high(01h)
	addwf	(check@i+1),f
	
l3388:	
	movf	(check@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3525
	movlw	low(04h)
	subwf	(check@i),w
u3525:

	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l3378
u3520:
	goto	l3390
	
l1127:	
	line	246
	
l3390:	
;prev13.c: 245: }
;prev13.c: 246: return 1;
	movlw	low(01h)
	movwf	(?_check)
	movlw	high(01h)
	movwf	((?_check))+1
	goto	l1129
	
l3392:	
	line	247
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_check
	__end_of_check:
;; =============== function _check ends ============

	signat	_check,8314
	global	_strcpy
psect	text776,local,class=CODE,delta=2
global __ptext776
__ptext776:

;; *************** function _strcpy *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> getlogicseq@str(32), lo(5), plo(5), logic_d4(5), 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
;;  from            2    2[COMMON] PTR const unsigned char 
;;		 -> read_log@logic(5), STR_18(1), STR_17(20), STR_15(1), 
;;		 -> STR_14(20), STR_12(1), STR_11(20), STR_8(4), 
;;		 -> lo(5), 
;; Auto vars:     Size  Location     Type
;;  to              1    7[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), lo(5), plo(5), logic_d4(5), 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
;;  cp              1    8[COMMON] PTR unsigned char 
;;		 -> getlogicseq@str(32), lo(5), plo(5), logic_d4(5), 
;;		 -> logic_d3(5), logic_d2(5), logic_d1(5), 
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
;;		_getlogic
;;		_startswitch
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text776
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
	
l3368:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l3370
	
l1385:	
	line	20
	goto	l3370
	
l1384:	
	line	19
	
l3370:	
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
	goto	u3481
	goto	u3480
u3481:
	goto	l3370
u3480:
	goto	l1387
	
l1386:	
	line	22
;	Return value of _strcpy is never used
	
l1387:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_delay
psect	text777,local,class=CODE,delta=2
global __ptext777
__ptext777:

;; *************** function _delay *****************
;; Defined at:
;;		line 563 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;		_getlogic
;;		_startswitch
;;		_getlogicseq
;;		_latch
;;		_actrow
;;		_read_eep
;;		_write_eep
;;		_scroll
;; This function uses a non-reentrant model
;;
psect	text777
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	563
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 2
; Regs used in _delay: [wreg]
	line	564
	
l3364:	
;prev13.c: 564: while(x-->0);
	goto	l3366
	
l1232:	
	goto	l3366
	
l1231:	
	
l3366:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u3475
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u3475:

	skipz
	goto	u3471
	goto	u3470
u3471:
	goto	l3366
u3470:
	goto	l1234
	
l1233:	
	line	565
	
l1234:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_initkeypad
psect	text778,local,class=CODE,delta=2
global __ptext778
__ptext778:

;; *************** function _initkeypad *****************
;; Defined at:
;;		line 759 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
psect	text778
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	759
	global	__size_of_initkeypad
	__size_of_initkeypad	equ	__end_of_initkeypad-_initkeypad
	
_initkeypad:	
	opt	stack 7
; Regs used in _initkeypad: [wreg+status,2]
	line	760
	
l1820:	
;prev13.c: 760: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	761
	
l1822:	
;prev13.c: 761: TRISB = 0b11010000;
	movlw	(0D0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	763
	
l1298:	
	return
	opt stack 0
GLOBAL	__end_of_initkeypad
	__end_of_initkeypad:
;; =============== function _initkeypad ends ============

	signat	_initkeypad,88
	global	_buzz
psect	text779,local,class=CODE,delta=2
global __ptext779
__ptext779:

;; *************** function _buzz *****************
;; Defined at:
;;		line 42 in file "C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
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
;;		_start
;;		_startswitch
;;		_getlogicseq
;; This function uses a non-reentrant model
;;
psect	text779
	file	"C:\PIC\PROJECTS\Training_Project\Code\prev1\prev13.c"
	line	42
	global	__size_of_buzz
	__size_of_buzz	equ	__end_of_buzz-_buzz
	
_buzz:	
	opt	stack 5
; Regs used in _buzz: [wreg]
	line	43
	
l3360:	
;prev13.c: 43: if(val!=99)
	movlw	063h
	xorwf	(buzz@val),w
	iorwf	(buzz@val+1),w
	skipnz
	goto	u3461
	goto	u3460
u3461:
	goto	l1093
u3460:
	line	44
	
l3362:	
;prev13.c: 44: RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	l1095
	line	45
	
l1093:	
	line	46
;prev13.c: 45: else
;prev13.c: 46: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	goto	l1095
	
l1094:	
	line	47
	
l1095:	
	return
	opt stack 0
GLOBAL	__end_of_buzz
	__end_of_buzz:
;; =============== function _buzz ends ============

	signat	_buzz,4216
psect	text780,local,class=CODE,delta=2
global __ptext780
__ptext780:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
