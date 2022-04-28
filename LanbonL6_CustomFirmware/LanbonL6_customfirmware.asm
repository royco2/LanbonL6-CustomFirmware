;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module LanbonL6_customfirmware
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Reset
	.globl _GetGangType
	.globl _relay2_state
	.globl _relay1_state
	.globl _relay0_state
	.globl _button2_action
	.globl _button1_action
	.globl _button0_action
	.globl _blueLEDAllFlash
	.globl _redLEDAllFlash
	.globl _blueLEDOn
	.globl _blueLEDAllOn
	.globl _delay_ms
	.globl _TouchDelay
	.globl _Delay
	.globl _SendNumber
	.globl _SendString
	.globl _UART1_int
	.globl _ReceiveData
	.globl _SendData
	.globl _Uart1_init
	.globl _Delay2400
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P_SW1
	.globl _AUXR1
	.globl _AUXR
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _P7M1
	.globl _P7M0
	.globl _P6M1
	.globl _P6M0
	.globl _P5M1
	.globl _P5M0
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _T2L
	.globl _T2H
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _B_TX1_Busy
	.globl _RX1_Buffer
	.globl _RX1_Cnt
	.globl _TX1_Cnt
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2H	=	0x00d6
_T2L	=	0x00d7
_P0M0	=	0x0094
_P0M1	=	0x0093
_P1M0	=	0x0092
_P1M1	=	0x0091
_P2M0	=	0x0096
_P2M1	=	0x0095
_P3M0	=	0x00b2
_P3M1	=	0x00b1
_P4M0	=	0x00b4
_P4M1	=	0x00b3
_P5M0	=	0x00ca
_P5M1	=	0x00c9
_P6M0	=	0x00cc
_P6M1	=	0x00cb
_P7M0	=	0x00e2
_P7M1	=	0x00e1
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_P_SW1	=	0x00a2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P5_0	=	0x00c8
_P5_1	=	0x00c9
_P5_2	=	0x00ca
_P5_3	=	0x00cb
_P5_4	=	0x00cc
_P5_5	=	0x00cd
_P5_6	=	0x00ce
_P5_7	=	0x00cf
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_TX1_Cnt::
	.ds 2
_RX1_Cnt::
	.ds 2
_RX1_Buffer::
	.ds 64
_B_TX1_Busy::
	.ds 1
_SendNumber_a_65536_29:
	.ds 2
_main_button2_state_65537_70:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_main_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_UART1_int
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:59: unsigned char B_TX1_Busy = 0;
	mov	_B_TX1_Busy,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay2400'
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:61: void Delay2400(){	// 1 bit time for 2400 baud at 12 MHz
;	-----------------------------------------
;	 function Delay2400
;	-----------------------------------------
_Delay2400:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:72: __endasm;
	push	0x30
	push	0x31
	mov	0x30,#4
	mov	0x31,#220
	NEXT:
	djnz	0x31,NEXT
	djnz	0x30,NEXT
	pop	0x31
	pop	0x30
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1_init'
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:76: void Uart1_init(void)
;	-----------------------------------------
;	 function Uart1_init
;	-----------------------------------------
_Uart1_init:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:78: SCON  = 0x50; //(SCON & 0x3f) | 0x40; //
	mov	_SCON,#0x50
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:79: S1_USE_P30P31();
	anl	_P_SW1,#0x3f
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:80: Timer2_1T(); //The clock source of Timer 2 is SYSclk/1.
	orl	_AUXR,#0x04
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:81: Timer2_AsTimer(); // TMOD &= ~(1<<6) 
	anl	_AUXR,#0xf7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:82: S1_BRT_UseTimer2(); //Select Timer 1 as the baud-rate generator
	orl	_AUXR,#0x01
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:83: T2L = (65536 - (FOSC/4/BAUD)); //Set the preload value
	mov	_T2L,#0xe8
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:84: T2H = (65536 - (FOSC/4/BAUD))>>8; 
	mov	_T2H,#0xff
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:86: EA = 1;
;	assignBit
	setb	_EA
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:87: ES = 1;
;	assignBit
	setb	_ES
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:88: B_TX1_Busy = 0;
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:89: TX1_Cnt = 0;
	clr	a
	mov	_B_TX1_Busy,a
	mov	_TX1_Cnt,a
	mov	(_TX1_Cnt + 1),a
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:90: RX1_Cnt = 0;
	mov	_RX1_Cnt,a
	mov	(_RX1_Cnt + 1),a
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:91: Timer2_Run(); // 
	orl	_AUXR,#0x10
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:92: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendData'
;------------------------------------------------------------
;dat                       Allocated to registers 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:94: void SendData(BYTE dat)
;	-----------------------------------------
;	 function SendData
;	-----------------------------------------
_SendData:
	mov	_SBUF,dpl
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:97: B_TX1_Busy = 1;
	mov	_B_TX1_Busy,#0x01
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:98: while(!TI);
00101$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:99: TI = 0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReceiveData'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:102: void ReceiveData(int i)
;	-----------------------------------------
;	 function ReceiveData
;	-----------------------------------------
_ReceiveData:
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:104: RX1_Buffer[i] = SBUF;
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	a,r6
	add	a,#_RX1_Buffer
	mov	r1,a
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:105: while(!RI);
00101$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:106: RI = 0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART1_int'
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:109: void UART1_int (void) __interrupt UART1_VECTOR __using 1
;	-----------------------------------------
;	 function UART1_int
;	-----------------------------------------
_UART1_int:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:112: if(RI)
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:114: RI = 0;
;	assignBit
	jbc	_RI,00121$
	sjmp	00104$
00121$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:115: SendData(SBUF);
	mov	dpl,_SBUF
	mov	psw,#0x00
	lcall	_SendData
	mov	psw,#0x08
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:116: if(++RX1_Cnt >= UART1_BUF_LENGTH)	RX1_Cnt = 0;	//Anti overflow
	inc	_RX1_Cnt
	clr	a
	cjne	a,_RX1_Cnt,00122$
	inc	(_RX1_Cnt + 1)
00122$:
	clr	c
	mov	a,_RX1_Cnt
	subb	a,#0x20
	mov	a,(_RX1_Cnt + 1)
	subb	a,#0x00
	jc	00104$
	clr	a
	mov	_RX1_Cnt,a
	mov	(_RX1_Cnt + 1),a
00104$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:119: if(TI) 
	jnb	_TI,00107$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:122: B_TX1_Busy = 0;
	mov	_B_TX1_Busy,#0x00
00107$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:124: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'SendString'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:128: void SendString(char *s)
;	-----------------------------------------
;	 function SendString
;	-----------------------------------------
_SendString:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:130: while (*s)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:132: SendData(*s++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_SendData
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendNumber'
;------------------------------------------------------------
;num                       Allocated to registers r4 r5 r6 r7 
;a                         Allocated with name '_SendNumber_a_65536_29'
;b                         Allocated to registers 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:136: void SendNumber(float num)
;	-----------------------------------------
;	 function SendNumber
;	-----------------------------------------
_SendNumber:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:139: a = (int)num;
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___fs2sint
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:140: b = (int)((num-a)*10);
	mov	_SendNumber_a_65536_29,dpl
	mov  (_SendNumber_a_65536_29 + 1),dph
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	r7,dpl
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:141: SendData((unsigned char)(a+48));
	mov	r2,_SendNumber_a_65536_29
	mov	a,#0x30
	add	a,r2
	mov	dpl,a
	push	ar7
	lcall	_SendData
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:142: SendData('.');
	mov	dpl,#0x2e
	lcall	_SendData
	pop	ar7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:143: SendData((unsigned char)(b+48));
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_SendData
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:144: SendData('\r');
	mov	dpl,#0x0d
	lcall	_SendData
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:145: SendData('\n');
	mov	dpl,#0x0a
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:146: }
	ljmp	_SendData
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;delayCtr                  Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:148: void Delay()
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:151: for(delayCtr = 2400;delayCtr > 0;delayCtr--)	//wait 1 second
	mov	r6,#0x60
	mov	r7,#0x09
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:153: Delay2400();
	push	ar7
	push	ar6
	lcall	_Delay2400
	pop	ar6
	pop	ar7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:151: for(delayCtr = 2400;delayCtr > 0;delayCtr--)	//wait 1 second
	dec	r6
	cjne	r6,#0xff,00114$
	dec	r7
00114$:
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:155: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TouchDelay'
;------------------------------------------------------------
;delayCtr                  Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:157: void TouchDelay()
;	-----------------------------------------
;	 function TouchDelay
;	-----------------------------------------
_TouchDelay:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:160: for(delayCtr = 600;delayCtr > 0;delayCtr--)	//wait 250msecond
	mov	r6,#0x58
	mov	r7,#0x02
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:162: Delay2400();
	push	ar7
	push	ar6
	lcall	_Delay2400
	pop	ar6
	pop	ar7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:160: for(delayCtr = 600;delayCtr > 0;delayCtr--)	//wait 250msecond
	dec	r6
	cjne	r6,#0xff,00114$
	dec	r7
00114$:
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:164: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated to registers 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:166: void  delay_ms(unsigned int ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:171: while(--i)	;   //14T per loop
00109$:
	mov	r4,#0x52
	mov	r5,#0x03
00101$:
	dec	r4
	cjne	r4,#0xff,00123$
	dec	r5
00123$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:172: }while(--ms);
	dec	r6
	cjne	r6,#0xff,00125$
	dec	r7
00125$:
	mov	a,r6
	orl	a,r7
	jnz	00109$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:173: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blueLEDAllOn'
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:175: void blueLEDAllOn()
;	-----------------------------------------
;	 function blueLEDAllOn
;	-----------------------------------------
_blueLEDAllOn:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:177: led0b = 0; //blue
;	assignBit
	clr	_P2_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:178: led1b = 0; //blue
;	assignBit
	clr	_P2_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:179: led2b = 0; //blue
;	assignBit
	clr	_P3_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:180: led0g = 1; //green off
;	assignBit
	setb	_P2_2
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:181: led1g = 1; //green off
;	assignBit
	setb	_P2_1
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:182: led2g = 1; //green off
;	assignBit
	setb	_P2_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:183: led0r = 1; //red off
;	assignBit
	setb	_P1_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:184: led1r = 1; //red off
;	assignBit
	setb	_P1_4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:185: led2r = 1; //red off	
;	assignBit
	setb	_P3_7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:186: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blueLEDOn'
;------------------------------------------------------------
;gangtype                  Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:188: void blueLEDOn(int gangtype)
;	-----------------------------------------
;	 function blueLEDOn
;	-----------------------------------------
_blueLEDOn:
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:190: if (gangtype == 3 || gangtype == 0)
	cjne	r6,#0x03,00124$
	cjne	r7,#0x00,00124$
	sjmp	00106$
00124$:
	mov	a,r6
	orl	a,r7
	jnz	00107$
00106$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:192: led0b = 0; //blue
;	assignBit
	clr	_P2_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:193: led0g = 1; //green off
;	assignBit
	setb	_P2_2
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:194: led0r = 1; //red off
;	assignBit
	setb	_P1_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:196: led1b = 0; //blue
;	assignBit
	clr	_P2_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:197: led1g = 1; //green off
;	assignBit
	setb	_P2_1
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:198: led1r = 1; //red off
;	assignBit
	setb	_P1_4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:200: led2b = 0; //blue
;	assignBit
	clr	_P3_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:201: led2g = 1; //green off
;	assignBit
	setb	_P2_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:202: led2r = 1; //red off	
;	assignBit
	setb	_P3_7
	ret
00107$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:205: else if (gangtype == 2)
	cjne	r6,#0x02,00104$
	cjne	r7,#0x00,00104$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:207: led0b = 0; //blue
;	assignBit
	clr	_P2_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:208: led0g = 1; //green off
;	assignBit
	setb	_P2_2
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:209: led0r = 1; //red off
;	assignBit
	setb	_P1_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:211: led1b = 1; //blue off
;	assignBit
	setb	_P2_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:212: led1g = 1; //green off
;	assignBit
	setb	_P2_1
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:213: led1r = 1; //red off
;	assignBit
	setb	_P1_4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:215: led2b = 0; //blue
;	assignBit
	clr	_P3_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:216: led2g = 1; //green off
;	assignBit
	setb	_P2_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:217: led2r = 1; //red off			
;	assignBit
	setb	_P3_7
	ret
00104$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:220: else if (gangtype == 1)
	cjne	r6,#0x01,00110$
	cjne	r7,#0x00,00110$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:222: led0b = 1; //blue
;	assignBit
	setb	_P2_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:223: led0g = 1; //green off
;	assignBit
	setb	_P2_2
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:224: led0r = 1; //red off
;	assignBit
	setb	_P1_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:226: led1b = 0; //blue off
;	assignBit
	clr	_P2_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:227: led1g = 1; //green off
;	assignBit
	setb	_P2_1
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:228: led1r = 1; //red off
;	assignBit
	setb	_P1_4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:230: led2b = 1; //blue
;	assignBit
	setb	_P3_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:231: led2g = 1; //green off
;	assignBit
	setb	_P2_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:232: led2r = 1; //red off			
;	assignBit
	setb	_P3_7
00110$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:236: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'redLEDAllFlash'
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:238: void redLEDAllFlash()
;	-----------------------------------------
;	 function redLEDAllFlash
;	-----------------------------------------
_redLEDAllFlash:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:240: led0b = 1; //blue
;	assignBit
	setb	_P2_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:241: led1b = 1; //blue
;	assignBit
	setb	_P2_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:242: led2b = 1; //blue
;	assignBit
	setb	_P3_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:243: led0g = 1; //green off
;	assignBit
	setb	_P2_2
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:244: led1g = 1; //green off
;	assignBit
	setb	_P2_1
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:245: led2g = 1; //green off
;	assignBit
	setb	_P2_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:246: led0r = 0; //red 
;	assignBit
	clr	_P1_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:247: led1r = 0; //red 
;	assignBit
	clr	_P1_4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:248: led2r = 0; //red 	
;	assignBit
	clr	_P3_7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:249: Delay();
	lcall	_Delay
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:250: led0r = 1; //red off
;	assignBit
	setb	_P1_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:251: led1r = 1; //red off
;	assignBit
	setb	_P1_4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:252: led2r = 1; //red off	
;	assignBit
	setb	_P3_7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:253: Delay();
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:254: }
	ljmp	_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'blueLEDAllFlash'
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:256: void blueLEDAllFlash()
;	-----------------------------------------
;	 function blueLEDAllFlash
;	-----------------------------------------
_blueLEDAllFlash:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:258: led0b = 0; //blue
;	assignBit
	clr	_P2_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:259: led1b = 0; //blue
;	assignBit
	clr	_P2_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:260: led2b = 0; //blue
;	assignBit
	clr	_P3_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:261: led0g = 1; //green off
;	assignBit
	setb	_P2_2
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:262: led1g = 1; //green off
;	assignBit
	setb	_P2_1
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:263: led2g = 1; //green off
;	assignBit
	setb	_P2_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:264: led0r = 1; //red off
;	assignBit
	setb	_P1_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:265: led1r = 1; //red off
;	assignBit
	setb	_P1_4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:266: led2r = 1; //red off	
;	assignBit
	setb	_P3_7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:267: Delay();
	lcall	_Delay
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:268: led0b = 1;
;	assignBit
	setb	_P2_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:269: led1b = 1;
;	assignBit
	setb	_P2_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:270: led2b = 1;
;	assignBit
	setb	_P3_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:271: Delay();
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:272: }
	ljmp	_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'button0_action'
;------------------------------------------------------------
;button_state              Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:274: void button0_action(unsigned char button_state)
;	-----------------------------------------
;	 function button0_action
;	-----------------------------------------
_button0_action:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:276: if (button_state)
	mov	a,dpl
	jz	00102$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:278: led0b = 1;
;	assignBit
	setb	_P2_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:279: led0g = 0; //green on	
;	assignBit
	clr	_P2_2
	ret
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:283: led0b = 0; //blue on
;	assignBit
	clr	_P2_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:284: led0g = 1; 
;	assignBit
	setb	_P2_2
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:287: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'button1_action'
;------------------------------------------------------------
;button_state              Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:289: void button1_action(unsigned char button_state)
;	-----------------------------------------
;	 function button1_action
;	-----------------------------------------
_button1_action:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:291: if (button_state)
	mov	a,dpl
	jz	00102$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:293: led1b = 1;
;	assignBit
	setb	_P2_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:294: led1g = 0; //green on
;	assignBit
	clr	_P2_1
	ret
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:299: led1b = 0; //blue on
;	assignBit
	clr	_P2_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:300: led1g = 1; 
;	assignBit
	setb	_P2_1
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:302: }	
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'button2_action'
;------------------------------------------------------------
;button_state              Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:304: void button2_action(unsigned char button_state)
;	-----------------------------------------
;	 function button2_action
;	-----------------------------------------
_button2_action:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:306: if (button_state)
	mov	a,dpl
	jz	00102$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:308: led2b = 1;
;	assignBit
	setb	_P3_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:309: led2g = 0; //green on
;	assignBit
	clr	_P2_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:310: led2r = 1; 
;	assignBit
	setb	_P3_7
	ret
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:314: led2b = 0; //blue on
;	assignBit
	clr	_P3_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:315: led2g = 1; 
;	assignBit
	setb	_P2_0
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:316: led2r = 1; 
;	assignBit
	setb	_P3_7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:318: }			
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'relay0_state'
;------------------------------------------------------------
;button_state              Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:322: unsigned char relay0_state(unsigned char button_state)
;	-----------------------------------------
;	 function relay0_state
;	-----------------------------------------
_relay0_state:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:324: if (!button_state) relay0 = 1; //closed
	mov	a,dpl
	jnz	00102$
;	assignBit
	setb	_P3_3
	sjmp	00103$
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:325: else relay0 = 0; //open
;	assignBit
	clr	_P3_3
00103$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:326: SendString("Relay 0: ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_SendString
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:327: SendNumber(relay0);
	mov	c,_P3_3
	clr	a
	rlc	a
	mov	dpl,a
	lcall	___uchar2fs
	lcall	_SendNumber
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:328: return relay0;
	mov	c,_P3_3
	clr	a
	rlc	a
	mov	dpl,a
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:329: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'relay1_state'
;------------------------------------------------------------
;button_state              Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:331: unsigned char relay1_state(unsigned char button_state)
;	-----------------------------------------
;	 function relay1_state
;	-----------------------------------------
_relay1_state:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:333: if (!button_state) relay1 = 1; //closed
	mov	a,dpl
	jnz	00102$
;	assignBit
	setb	_P3_5
	sjmp	00103$
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:334: else relay1 = 0; //open
;	assignBit
	clr	_P3_5
00103$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:335: SendString("Relay 1: ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_SendString
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:336: SendNumber(relay1);
	mov	c,_P3_5
	clr	a
	rlc	a
	mov	dpl,a
	lcall	___uchar2fs
	lcall	_SendNumber
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:337: return relay1;
	mov	c,_P3_5
	clr	a
	rlc	a
	mov	dpl,a
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:338: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'relay2_state'
;------------------------------------------------------------
;button_state              Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:340: unsigned char relay2_state(unsigned char button_state)
;	-----------------------------------------
;	 function relay2_state
;	-----------------------------------------
_relay2_state:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:342: if (!button_state) relay2 = 1; //closed
	mov	a,dpl
	jnz	00102$
;	assignBit
	setb	_P3_4
	sjmp	00103$
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:343: else relay2 = 0; //open
;	assignBit
	clr	_P3_4
00103$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:344: SendString("Relay 2: ");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_SendString
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:345: SendNumber(relay2);
	mov	c,_P3_4
	clr	a
	rlc	a
	mov	dpl,a
	lcall	___uchar2fs
	lcall	_SendNumber
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:346: return relay2;
	mov	c,_P3_4
	clr	a
	rlc	a
	mov	dpl,a
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:347: }			
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetGangType'
;------------------------------------------------------------
;gangtype                  Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:351: int GetGangType()
;	-----------------------------------------
;	 function GetGangType
;	-----------------------------------------
_GetGangType:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:355: if (B0 && B1) gangtype = 3;
	jnb	_P0_1,00110$
	jnb	_P0_0,00110$
	mov	r6,#0x03
	mov	r7,#0x00
	sjmp	00111$
00110$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:356: else if (!B0 && B1) gangtype = 2;
	jb	_P0_1,00106$
	jnb	_P0_0,00106$
	mov	r6,#0x02
	mov	r7,#0x00
	sjmp	00111$
00106$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:357: else if (B0 && !B1) gangtype = 1;
	jnb	_P0_1,00102$
	jb	_P0_0,00102$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00111$
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:358: else gangtype = 0;
	mov	r6,#0x00
	mov	r7,#0x00
00111$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:360: return gangtype;
	mov	dpl,r6
	mov	dph,r7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:361: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Reset'
;------------------------------------------------------------
;gangtype                  Allocated to registers 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:364: void Reset()
;	-----------------------------------------
;	 function Reset
;	-----------------------------------------
_Reset:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:368: relay0 = 1;
;	assignBit
	setb	_P3_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:369: relay1 = 1;
;	assignBit
	setb	_P3_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:370: relay2 = 1;
;	assignBit
	setb	_P3_4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:373: SC04A_disable;
;	assignBit
	setb	_P2_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:374: for (int i = 0; i<10; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:376: redLEDAllFlash();
	push	ar7
	push	ar6
	lcall	_redLEDAllFlash
	pop	ar6
	pop	ar7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:374: for (int i = 0; i<10; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:379: SC04A_enable;
;	assignBit
	clr	_P2_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:380: gangtype = GetGangType();
	lcall	_GetGangType
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:381: blueLEDOn(gangtype);
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:386: }
	ljmp	_blueLEDOn
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;gangtype                  Allocated to registers r6 r7 
;button0_state             Allocated to registers r5 
;button1_state             Allocated to registers r4 
;button2_state             Allocated with name '_main_button2_state_65537_70'
;stage                     Allocated to registers 
;------------------------------------------------------------
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:390: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:394: gangtype = GetGangType();
	lcall	_GetGangType
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:396: unsigned char button0_state = 0;
	mov	r5,#0x00
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:397: unsigned char button1_state = 0;
	mov	r4,#0x00
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:398: unsigned char button2_state = 0;
;	1-genFromRTrack replaced	mov	_main_button2_state_65537_70,#0x00
	mov	_main_button2_state_65537_70,r5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:403: Uart1_init();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Uart1_init
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:404: SendString("STC15W408AS\r\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_SendString
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:409: P3M1 = 0x0;
	mov	_P3M1,#0x00
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:410: P3M0 = 0x38; 
	mov	_P3M0,#0x38
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:413: P0 = 0xFF;
	mov	_P0,#0xff
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:414: P1 = 0xFF;
	mov	_P1,#0xff
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:415: P2 = 0xFF;
	mov	_P2,#0xff
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:416: P3 = 0xFF;
	mov	_P3,#0xff
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:419: SC04A_enable;
;	assignBit
	clr	_P2_6
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:421: Delay(); //if to short after setting ports relay is open regardless of setting? Might be missing something.
	lcall	_Delay
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:423: relay0 = 1;
;	assignBit
	setb	_P3_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:424: relay1 = 1;
;	assignBit
	setb	_P3_5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:425: relay2 = 1;
;	assignBit
	setb	_P3_4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:427: redLEDAllFlash();
	lcall	_redLEDAllFlash
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:428: blueLEDOn(gangtype);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_blueLEDOn
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:431: P1_3 = 1;
;	assignBit
	setb	_P1_3
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:432: SendString("nReady-P1_1:");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_SendString
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:433: SendNumber(P1_1);	
	mov	c,_P1_1
	clr	a
	rlc	a
	mov	dpl,a
	lcall	___uchar2fs
	lcall	_SendNumber
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:434: SendString("nReload-P1_2:");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_SendString
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:435: SendNumber(P1_2);	
	mov	c,_P1_2
	clr	a
	rlc	a
	mov	dpl,a
	lcall	___uchar2fs
	lcall	_SendNumber
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:436: SendString("Reset-P1_3:");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_SendString
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:437: SendNumber(P1_3);
	mov	c,_P1_3
	clr	a
	rlc	a
	mov	dpl,a
	lcall	___uchar2fs
	lcall	_SendNumber
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:439: SendString("+++");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_SendString
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:440: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:442: while(1)
00119$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:461: if (!button_reset)
	jb	_P2_4,00102$
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:463: nreset = 0;
;	assignBit
	clr	_P1_1
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:464: nreload = 0;
;	assignBit
	clr	_P1_2
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:467: gangtype = GetGangType();
	lcall	_GetGangType
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:468: Reset();
	push	ar7
	push	ar6
	lcall	_Reset
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:469: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:471: button0_state = 0;
	mov	r5,#0x00
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:472: button1_state = 0;
	mov	r4,#0x00
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:473: button2_state = 0;
;	1-genFromRTrack replaced	mov	_main_button2_state_65537_70,#0x00
	mov	_main_button2_state_65537_70,r5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:474: nreset = 1;
;	assignBit
	setb	_P1_1
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:475: nreload = 1;
;	assignBit
	setb	_P1_2
00102$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:479: if (!button_0 && ((gangtype == 0) || (gangtype == 2) || (gangtype == 3)) )
	jb	_P1_6,00104$
	mov	a,r6
	orl	a,r7
	jz	00103$
	cjne	r6,#0x02,00170$
	cjne	r7,#0x00,00170$
	sjmp	00103$
00170$:
	cjne	r6,#0x03,00104$
	cjne	r7,#0x00,00104$
00103$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:481: button0_state = !button0_state;
	mov	a,r5
	cjne	a,#0x01,00173$
00173$:
	mov  _main_sloc0_1_0,c
	clr	a
	rlc	a
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:482: button0_action(button0_state);
	mov	r5,a
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_button0_action
	pop	ar4
	pop	ar5
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:483: relay0_state(button0_state);
	mov	dpl,r5
	push	ar5
	push	ar4
	lcall	_relay0_state
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:484: TouchDelay();
	lcall	_TouchDelay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00104$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:488: if (!button_1 && ((gangtype == 0) || (gangtype == 1) || (gangtype == 3)) )
	jb	_P1_5,00109$
	mov	a,r6
	orl	a,r7
	jz	00108$
	cjne	r6,#0x01,00176$
	cjne	r7,#0x00,00176$
	sjmp	00108$
00176$:
	cjne	r6,#0x03,00109$
	cjne	r7,#0x00,00109$
00108$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:490: button1_state = !button1_state;
	mov	a,r4
	cjne	a,#0x01,00179$
00179$:
	mov  _main_sloc0_1_0,c
	clr	a
	rlc	a
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:491: button1_action(button1_state);
	mov	r4,a
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_button1_action
	pop	ar4
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:492: relay1_state(button1_state);	
	mov	dpl,r4
	push	ar4
	lcall	_relay1_state
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:493: TouchDelay();
	lcall	_TouchDelay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00109$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:496: if (!button_2 && ((gangtype == 0) || (gangtype == 2) || (gangtype == 3)) )
	jnb	_P1_7,00180$
	ljmp	00119$
00180$:
	mov	a,r6
	orl	a,r7
	jz	00113$
	cjne	r6,#0x02,00182$
	cjne	r7,#0x00,00182$
	sjmp	00113$
00182$:
	cjne	r6,#0x03,00183$
	cjne	r7,#0x00,00183$
	sjmp	00184$
00183$:
	ljmp	00119$
00184$:
00113$:
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:498: button2_state = !button2_state;
	mov	a,_main_button2_state_65537_70
	cjne	a,#0x01,00185$
00185$:
	mov  _main_sloc0_1_0,c
	clr	a
	rlc	a
	mov	_main_button2_state_65537_70,a
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:499: button2_action(button2_state);
	mov	dpl,_main_button2_state_65537_70
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_button2_action
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:500: relay2_state(button2_state);
	mov	dpl,_main_button2_state_65537_70
	lcall	_relay2_state
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:501: TouchDelay();
	lcall	_TouchDelay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:516: }	  
	ljmp	00119$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Relay 0: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Relay 1: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Relay 2: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "STC15W408AS"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "nReady-P1_1:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "nReload-P1_2:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Reset-P1_3:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "+++"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
