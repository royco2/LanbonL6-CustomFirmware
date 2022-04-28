                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module LanbonL6_customfirmware
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Reset
                                     13 	.globl _GetGangType
                                     14 	.globl _relay2_state
                                     15 	.globl _relay1_state
                                     16 	.globl _relay0_state
                                     17 	.globl _button2_action
                                     18 	.globl _button1_action
                                     19 	.globl _button0_action
                                     20 	.globl _blueLEDAllFlash
                                     21 	.globl _redLEDAllFlash
                                     22 	.globl _blueLEDOn
                                     23 	.globl _blueLEDAllOn
                                     24 	.globl _delay_ms
                                     25 	.globl _TouchDelay
                                     26 	.globl _Delay
                                     27 	.globl _SendNumber
                                     28 	.globl _SendString
                                     29 	.globl _UART1_int
                                     30 	.globl _ReceiveData
                                     31 	.globl _SendData
                                     32 	.globl _Uart1_init
                                     33 	.globl _Delay2400
                                     34 	.globl _F0
                                     35 	.globl _RS1
                                     36 	.globl _RS0
                                     37 	.globl _OV
                                     38 	.globl _F1
                                     39 	.globl _P
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _P5_7
                                     46 	.globl _P5_6
                                     47 	.globl _P5_5
                                     48 	.globl _P5_4
                                     49 	.globl _P5_3
                                     50 	.globl _P5_2
                                     51 	.globl _P5_1
                                     52 	.globl _P5_0
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD
                                     60 	.globl _RXD
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _EA
                                     70 	.globl _ES
                                     71 	.globl _ET1
                                     72 	.globl _EX1
                                     73 	.globl _ET0
                                     74 	.globl _EX0
                                     75 	.globl _P2_7
                                     76 	.globl _P2_6
                                     77 	.globl _P2_5
                                     78 	.globl _P2_4
                                     79 	.globl _P2_3
                                     80 	.globl _P2_2
                                     81 	.globl _P2_1
                                     82 	.globl _P2_0
                                     83 	.globl _SM0
                                     84 	.globl _SM1
                                     85 	.globl _SM2
                                     86 	.globl _REN
                                     87 	.globl _TB8
                                     88 	.globl _RB8
                                     89 	.globl _TI
                                     90 	.globl _RI
                                     91 	.globl _P1_7
                                     92 	.globl _P1_6
                                     93 	.globl _P1_5
                                     94 	.globl _P1_4
                                     95 	.globl _P1_3
                                     96 	.globl _P1_2
                                     97 	.globl _P1_1
                                     98 	.globl _P1_0
                                     99 	.globl _TF1
                                    100 	.globl _TR1
                                    101 	.globl _TF0
                                    102 	.globl _TR0
                                    103 	.globl _IE1
                                    104 	.globl _IT1
                                    105 	.globl _IE0
                                    106 	.globl _IT0
                                    107 	.globl _P0_7
                                    108 	.globl _P0_6
                                    109 	.globl _P0_5
                                    110 	.globl _P0_4
                                    111 	.globl _P0_3
                                    112 	.globl _P0_2
                                    113 	.globl _P0_1
                                    114 	.globl _P0_0
                                    115 	.globl _P_SW1
                                    116 	.globl _AUXR1
                                    117 	.globl _AUXR
                                    118 	.globl _IAP_CONTR
                                    119 	.globl _IAP_TRIG
                                    120 	.globl _IAP_CMD
                                    121 	.globl _IAP_ADDRL
                                    122 	.globl _IAP_ADDRH
                                    123 	.globl _IAP_DATA
                                    124 	.globl _P7M1
                                    125 	.globl _P7M0
                                    126 	.globl _P6M1
                                    127 	.globl _P6M0
                                    128 	.globl _P5M1
                                    129 	.globl _P5M0
                                    130 	.globl _P4M1
                                    131 	.globl _P4M0
                                    132 	.globl _P3M1
                                    133 	.globl _P3M0
                                    134 	.globl _P2M1
                                    135 	.globl _P2M0
                                    136 	.globl _P1M1
                                    137 	.globl _P1M0
                                    138 	.globl _P0M1
                                    139 	.globl _P0M0
                                    140 	.globl _T2L
                                    141 	.globl _T2H
                                    142 	.globl _B
                                    143 	.globl _ACC
                                    144 	.globl _PSW
                                    145 	.globl _IP
                                    146 	.globl _P3
                                    147 	.globl _IE
                                    148 	.globl _P2
                                    149 	.globl _SBUF
                                    150 	.globl _SCON
                                    151 	.globl _P1
                                    152 	.globl _TH1
                                    153 	.globl _TH0
                                    154 	.globl _TL1
                                    155 	.globl _TL0
                                    156 	.globl _TMOD
                                    157 	.globl _TCON
                                    158 	.globl _PCON
                                    159 	.globl _DPH
                                    160 	.globl _DPL
                                    161 	.globl _SP
                                    162 	.globl _P0
                                    163 	.globl _B_TX1_Busy
                                    164 	.globl _RX1_Buffer
                                    165 	.globl _RX1_Cnt
                                    166 	.globl _TX1_Cnt
                                    167 ;--------------------------------------------------------
                                    168 ; special function registers
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000080   172 _P0	=	0x0080
                           000081   173 _SP	=	0x0081
                           000082   174 _DPL	=	0x0082
                           000083   175 _DPH	=	0x0083
                           000087   176 _PCON	=	0x0087
                           000088   177 _TCON	=	0x0088
                           000089   178 _TMOD	=	0x0089
                           00008A   179 _TL0	=	0x008a
                           00008B   180 _TL1	=	0x008b
                           00008C   181 _TH0	=	0x008c
                           00008D   182 _TH1	=	0x008d
                           000090   183 _P1	=	0x0090
                           000098   184 _SCON	=	0x0098
                           000099   185 _SBUF	=	0x0099
                           0000A0   186 _P2	=	0x00a0
                           0000A8   187 _IE	=	0x00a8
                           0000B0   188 _P3	=	0x00b0
                           0000B8   189 _IP	=	0x00b8
                           0000D0   190 _PSW	=	0x00d0
                           0000E0   191 _ACC	=	0x00e0
                           0000F0   192 _B	=	0x00f0
                           0000D6   193 _T2H	=	0x00d6
                           0000D7   194 _T2L	=	0x00d7
                           000094   195 _P0M0	=	0x0094
                           000093   196 _P0M1	=	0x0093
                           000092   197 _P1M0	=	0x0092
                           000091   198 _P1M1	=	0x0091
                           000096   199 _P2M0	=	0x0096
                           000095   200 _P2M1	=	0x0095
                           0000B2   201 _P3M0	=	0x00b2
                           0000B1   202 _P3M1	=	0x00b1
                           0000B4   203 _P4M0	=	0x00b4
                           0000B3   204 _P4M1	=	0x00b3
                           0000CA   205 _P5M0	=	0x00ca
                           0000C9   206 _P5M1	=	0x00c9
                           0000CC   207 _P6M0	=	0x00cc
                           0000CB   208 _P6M1	=	0x00cb
                           0000E2   209 _P7M0	=	0x00e2
                           0000E1   210 _P7M1	=	0x00e1
                           0000C2   211 _IAP_DATA	=	0x00c2
                           0000C3   212 _IAP_ADDRH	=	0x00c3
                           0000C4   213 _IAP_ADDRL	=	0x00c4
                           0000C5   214 _IAP_CMD	=	0x00c5
                           0000C6   215 _IAP_TRIG	=	0x00c6
                           0000C7   216 _IAP_CONTR	=	0x00c7
                           00008E   217 _AUXR	=	0x008e
                           0000A2   218 _AUXR1	=	0x00a2
                           0000A2   219 _P_SW1	=	0x00a2
                                    220 ;--------------------------------------------------------
                                    221 ; special function bits
                                    222 ;--------------------------------------------------------
                                    223 	.area RSEG    (ABS,DATA)
      000000                        224 	.org 0x0000
                           000080   225 _P0_0	=	0x0080
                           000081   226 _P0_1	=	0x0081
                           000082   227 _P0_2	=	0x0082
                           000083   228 _P0_3	=	0x0083
                           000084   229 _P0_4	=	0x0084
                           000085   230 _P0_5	=	0x0085
                           000086   231 _P0_6	=	0x0086
                           000087   232 _P0_7	=	0x0087
                           000088   233 _IT0	=	0x0088
                           000089   234 _IE0	=	0x0089
                           00008A   235 _IT1	=	0x008a
                           00008B   236 _IE1	=	0x008b
                           00008C   237 _TR0	=	0x008c
                           00008D   238 _TF0	=	0x008d
                           00008E   239 _TR1	=	0x008e
                           00008F   240 _TF1	=	0x008f
                           000090   241 _P1_0	=	0x0090
                           000091   242 _P1_1	=	0x0091
                           000092   243 _P1_2	=	0x0092
                           000093   244 _P1_3	=	0x0093
                           000094   245 _P1_4	=	0x0094
                           000095   246 _P1_5	=	0x0095
                           000096   247 _P1_6	=	0x0096
                           000097   248 _P1_7	=	0x0097
                           000098   249 _RI	=	0x0098
                           000099   250 _TI	=	0x0099
                           00009A   251 _RB8	=	0x009a
                           00009B   252 _TB8	=	0x009b
                           00009C   253 _REN	=	0x009c
                           00009D   254 _SM2	=	0x009d
                           00009E   255 _SM1	=	0x009e
                           00009F   256 _SM0	=	0x009f
                           0000A0   257 _P2_0	=	0x00a0
                           0000A1   258 _P2_1	=	0x00a1
                           0000A2   259 _P2_2	=	0x00a2
                           0000A3   260 _P2_3	=	0x00a3
                           0000A4   261 _P2_4	=	0x00a4
                           0000A5   262 _P2_5	=	0x00a5
                           0000A6   263 _P2_6	=	0x00a6
                           0000A7   264 _P2_7	=	0x00a7
                           0000A8   265 _EX0	=	0x00a8
                           0000A9   266 _ET0	=	0x00a9
                           0000AA   267 _EX1	=	0x00aa
                           0000AB   268 _ET1	=	0x00ab
                           0000AC   269 _ES	=	0x00ac
                           0000AF   270 _EA	=	0x00af
                           0000B0   271 _P3_0	=	0x00b0
                           0000B1   272 _P3_1	=	0x00b1
                           0000B2   273 _P3_2	=	0x00b2
                           0000B3   274 _P3_3	=	0x00b3
                           0000B4   275 _P3_4	=	0x00b4
                           0000B5   276 _P3_5	=	0x00b5
                           0000B6   277 _P3_6	=	0x00b6
                           0000B7   278 _P3_7	=	0x00b7
                           0000B0   279 _RXD	=	0x00b0
                           0000B1   280 _TXD	=	0x00b1
                           0000B2   281 _INT0	=	0x00b2
                           0000B3   282 _INT1	=	0x00b3
                           0000B4   283 _T0	=	0x00b4
                           0000B5   284 _T1	=	0x00b5
                           0000B6   285 _WR	=	0x00b6
                           0000B7   286 _RD	=	0x00b7
                           0000C8   287 _P5_0	=	0x00c8
                           0000C9   288 _P5_1	=	0x00c9
                           0000CA   289 _P5_2	=	0x00ca
                           0000CB   290 _P5_3	=	0x00cb
                           0000CC   291 _P5_4	=	0x00cc
                           0000CD   292 _P5_5	=	0x00cd
                           0000CE   293 _P5_6	=	0x00ce
                           0000CF   294 _P5_7	=	0x00cf
                           0000B8   295 _PX0	=	0x00b8
                           0000B9   296 _PT0	=	0x00b9
                           0000BA   297 _PX1	=	0x00ba
                           0000BB   298 _PT1	=	0x00bb
                           0000BC   299 _PS	=	0x00bc
                           0000D0   300 _P	=	0x00d0
                           0000D1   301 _F1	=	0x00d1
                           0000D2   302 _OV	=	0x00d2
                           0000D3   303 _RS0	=	0x00d3
                           0000D4   304 _RS1	=	0x00d4
                           0000D5   305 _F0	=	0x00d5
                                    306 ;--------------------------------------------------------
                                    307 ; overlayable register banks
                                    308 ;--------------------------------------------------------
                                    309 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        310 	.ds 8
                                    311 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        312 	.ds 8
                                    313 ;--------------------------------------------------------
                                    314 ; overlayable bit register bank
                                    315 ;--------------------------------------------------------
                                    316 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        317 bits:
      000021                        318 	.ds 1
                           008000   319 	b0 = bits[0]
                           008100   320 	b1 = bits[1]
                           008200   321 	b2 = bits[2]
                           008300   322 	b3 = bits[3]
                           008400   323 	b4 = bits[4]
                           008500   324 	b5 = bits[5]
                           008600   325 	b6 = bits[6]
                           008700   326 	b7 = bits[7]
                                    327 ;--------------------------------------------------------
                                    328 ; internal ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area DSEG    (DATA)
      000022                        331 _TX1_Cnt::
      000022                        332 	.ds 2
      000024                        333 _RX1_Cnt::
      000024                        334 	.ds 2
      000026                        335 _RX1_Buffer::
      000026                        336 	.ds 64
      000066                        337 _B_TX1_Busy::
      000066                        338 	.ds 1
      000067                        339 _SendNumber_a_65536_29:
      000067                        340 	.ds 2
      000069                        341 _main_button2_state_65537_70:
      000069                        342 	.ds 1
                                    343 ;--------------------------------------------------------
                                    344 ; overlayable items in internal ram
                                    345 ;--------------------------------------------------------
                                    346 	.area	OSEG    (OVR,DATA)
                                    347 	.area	OSEG    (OVR,DATA)
                                    348 	.area	OSEG    (OVR,DATA)
                                    349 	.area	OSEG    (OVR,DATA)
                                    350 	.area	OSEG    (OVR,DATA)
                                    351 	.area	OSEG    (OVR,DATA)
                                    352 	.area	OSEG    (OVR,DATA)
                                    353 	.area	OSEG    (OVR,DATA)
                                    354 ;--------------------------------------------------------
                                    355 ; Stack segment in internal ram
                                    356 ;--------------------------------------------------------
                                    357 	.area	SSEG
      00006A                        358 __start__stack:
      00006A                        359 	.ds	1
                                    360 
                                    361 ;--------------------------------------------------------
                                    362 ; indirectly addressable internal ram data
                                    363 ;--------------------------------------------------------
                                    364 	.area ISEG    (DATA)
                                    365 ;--------------------------------------------------------
                                    366 ; absolute internal ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area IABS    (ABS,DATA)
                                    369 	.area IABS    (ABS,DATA)
                                    370 ;--------------------------------------------------------
                                    371 ; bit data
                                    372 ;--------------------------------------------------------
                                    373 	.area BSEG    (BIT)
      000000                        374 _main_sloc0_1_0:
      000000                        375 	.ds 1
                                    376 ;--------------------------------------------------------
                                    377 ; paged external ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area PSEG    (PAG,XDATA)
                                    380 ;--------------------------------------------------------
                                    381 ; external ram data
                                    382 ;--------------------------------------------------------
                                    383 	.area XSEG    (XDATA)
                                    384 ;--------------------------------------------------------
                                    385 ; absolute external ram data
                                    386 ;--------------------------------------------------------
                                    387 	.area XABS    (ABS,XDATA)
                                    388 ;--------------------------------------------------------
                                    389 ; external initialized ram data
                                    390 ;--------------------------------------------------------
                                    391 	.area XISEG   (XDATA)
                                    392 	.area HOME    (CODE)
                                    393 	.area GSINIT0 (CODE)
                                    394 	.area GSINIT1 (CODE)
                                    395 	.area GSINIT2 (CODE)
                                    396 	.area GSINIT3 (CODE)
                                    397 	.area GSINIT4 (CODE)
                                    398 	.area GSINIT5 (CODE)
                                    399 	.area GSINIT  (CODE)
                                    400 	.area GSFINAL (CODE)
                                    401 	.area CSEG    (CODE)
                                    402 ;--------------------------------------------------------
                                    403 ; interrupt vector
                                    404 ;--------------------------------------------------------
                                    405 	.area HOME    (CODE)
      000000                        406 __interrupt_vect:
      000000 02 00 29         [24]  407 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  408 	reti
      000004                        409 	.ds	7
      00000B 32               [24]  410 	reti
      00000C                        411 	.ds	7
      000013 32               [24]  412 	reti
      000014                        413 	.ds	7
      00001B 32               [24]  414 	reti
      00001C                        415 	.ds	7
      000023 02 00 ED         [24]  416 	ljmp	_UART1_int
                                    417 ;--------------------------------------------------------
                                    418 ; global & static initialisations
                                    419 ;--------------------------------------------------------
                                    420 	.area HOME    (CODE)
                                    421 	.area GSINIT  (CODE)
                                    422 	.area GSFINAL (CODE)
                                    423 	.area GSINIT  (CODE)
                                    424 	.globl __sdcc_gsinit_startup
                                    425 	.globl __sdcc_program_startup
                                    426 	.globl __start__stack
                                    427 	.globl __mcs51_genXINIT
                                    428 	.globl __mcs51_genXRAMCLEAR
                                    429 	.globl __mcs51_genRAMCLEAR
                                    430 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:59: unsigned char B_TX1_Busy = 0;
      000082 75 66 00         [24]  431 	mov	_B_TX1_Busy,#0x00
                                    432 	.area GSFINAL (CODE)
      000085 02 00 26         [24]  433 	ljmp	__sdcc_program_startup
                                    434 ;--------------------------------------------------------
                                    435 ; Home
                                    436 ;--------------------------------------------------------
                                    437 	.area HOME    (CODE)
                                    438 	.area HOME    (CODE)
      000026                        439 __sdcc_program_startup:
      000026 02 04 0F         [24]  440 	ljmp	_main
                                    441 ;	return from main will return to caller
                                    442 ;--------------------------------------------------------
                                    443 ; code
                                    444 ;--------------------------------------------------------
                                    445 	.area CSEG    (CODE)
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function 'Delay2400'
                                    448 ;------------------------------------------------------------
                                    449 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:61: void Delay2400(){	// 1 bit time for 2400 baud at 12 MHz
                                    450 ;	-----------------------------------------
                                    451 ;	 function Delay2400
                                    452 ;	-----------------------------------------
      000088                        453 _Delay2400:
                           000007   454 	ar7 = 0x07
                           000006   455 	ar6 = 0x06
                           000005   456 	ar5 = 0x05
                           000004   457 	ar4 = 0x04
                           000003   458 	ar3 = 0x03
                           000002   459 	ar2 = 0x02
                           000001   460 	ar1 = 0x01
                           000000   461 	ar0 = 0x00
                                    462 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:72: __endasm;
      000088 C0 30            [24]  463 	push	0x30
      00008A C0 31            [24]  464 	push	0x31
      00008C 75 30 04         [24]  465 	mov	0x30,#4
      00008F 75 31 DC         [24]  466 	mov	0x31,#220
      000092                        467 	NEXT:
      000092 D5 31 FD         [24]  468 	djnz	0x31,NEXT
      000095 D5 30 FA         [24]  469 	djnz	0x30,NEXT
      000098 D0 31            [24]  470 	pop	0x31
      00009A D0 30            [24]  471 	pop	0x30
                                    472 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:73: }
      00009C 22               [24]  473 	ret
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'Uart1_init'
                                    476 ;------------------------------------------------------------
                                    477 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:76: void Uart1_init(void)
                                    478 ;	-----------------------------------------
                                    479 ;	 function Uart1_init
                                    480 ;	-----------------------------------------
      00009D                        481 _Uart1_init:
                                    482 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:78: SCON  = 0x50; //(SCON & 0x3f) | 0x40; //
      00009D 75 98 50         [24]  483 	mov	_SCON,#0x50
                                    484 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:79: S1_USE_P30P31();
      0000A0 53 A2 3F         [24]  485 	anl	_P_SW1,#0x3f
                                    486 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:80: Timer2_1T(); //The clock source of Timer 2 is SYSclk/1.
      0000A3 43 8E 04         [24]  487 	orl	_AUXR,#0x04
                                    488 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:81: Timer2_AsTimer(); // TMOD &= ~(1<<6) 
      0000A6 53 8E F7         [24]  489 	anl	_AUXR,#0xf7
                                    490 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:82: S1_BRT_UseTimer2(); //Select Timer 1 as the baud-rate generator
      0000A9 43 8E 01         [24]  491 	orl	_AUXR,#0x01
                                    492 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:83: T2L = (65536 - (FOSC/4/BAUD)); //Set the preload value
      0000AC 75 D7 E8         [24]  493 	mov	_T2L,#0xe8
                                    494 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:84: T2H = (65536 - (FOSC/4/BAUD))>>8; 
      0000AF 75 D6 FF         [24]  495 	mov	_T2H,#0xff
                                    496 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:86: EA = 1;
                                    497 ;	assignBit
      0000B2 D2 AF            [12]  498 	setb	_EA
                                    499 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:87: ES = 1;
                                    500 ;	assignBit
      0000B4 D2 AC            [12]  501 	setb	_ES
                                    502 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:88: B_TX1_Busy = 0;
                                    503 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:89: TX1_Cnt = 0;
      0000B6 E4               [12]  504 	clr	a
      0000B7 F5 66            [12]  505 	mov	_B_TX1_Busy,a
      0000B9 F5 22            [12]  506 	mov	_TX1_Cnt,a
      0000BB F5 23            [12]  507 	mov	(_TX1_Cnt + 1),a
                                    508 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:90: RX1_Cnt = 0;
      0000BD F5 24            [12]  509 	mov	_RX1_Cnt,a
      0000BF F5 25            [12]  510 	mov	(_RX1_Cnt + 1),a
                                    511 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:91: Timer2_Run(); // 
      0000C1 43 8E 10         [24]  512 	orl	_AUXR,#0x10
                                    513 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:92: }
      0000C4 22               [24]  514 	ret
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'SendData'
                                    517 ;------------------------------------------------------------
                                    518 ;dat                       Allocated to registers 
                                    519 ;------------------------------------------------------------
                                    520 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:94: void SendData(BYTE dat)
                                    521 ;	-----------------------------------------
                                    522 ;	 function SendData
                                    523 ;	-----------------------------------------
      0000C5                        524 _SendData:
      0000C5 85 82 99         [24]  525 	mov	_SBUF,dpl
                                    526 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:97: B_TX1_Busy = 1;
      0000C8 75 66 01         [24]  527 	mov	_B_TX1_Busy,#0x01
                                    528 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:98: while(!TI);
      0000CB                        529 00101$:
                                    530 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:99: TI = 0;
                                    531 ;	assignBit
      0000CB 10 99 02         [24]  532 	jbc	_TI,00114$
      0000CE 80 FB            [24]  533 	sjmp	00101$
      0000D0                        534 00114$:
                                    535 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:100: }
      0000D0 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'ReceiveData'
                                    539 ;------------------------------------------------------------
                                    540 ;i                         Allocated to registers r6 r7 
                                    541 ;------------------------------------------------------------
                                    542 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:102: void ReceiveData(int i)
                                    543 ;	-----------------------------------------
                                    544 ;	 function ReceiveData
                                    545 ;	-----------------------------------------
      0000D1                        546 _ReceiveData:
      0000D1 AE 82            [24]  547 	mov	r6,dpl
      0000D3 AF 83            [24]  548 	mov	r7,dph
                                    549 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:104: RX1_Buffer[i] = SBUF;
      0000D5 EE               [12]  550 	mov	a,r6
      0000D6 2E               [12]  551 	add	a,r6
      0000D7 FE               [12]  552 	mov	r6,a
      0000D8 EF               [12]  553 	mov	a,r7
      0000D9 33               [12]  554 	rlc	a
      0000DA EE               [12]  555 	mov	a,r6
      0000DB 24 26            [12]  556 	add	a,#_RX1_Buffer
      0000DD F9               [12]  557 	mov	r1,a
      0000DE AE 99            [24]  558 	mov	r6,_SBUF
      0000E0 7F 00            [12]  559 	mov	r7,#0x00
      0000E2 A7 06            [24]  560 	mov	@r1,ar6
      0000E4 09               [12]  561 	inc	r1
      0000E5 A7 07            [24]  562 	mov	@r1,ar7
                                    563 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:105: while(!RI);
      0000E7                        564 00101$:
                                    565 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:106: RI = 0;
                                    566 ;	assignBit
      0000E7 10 98 02         [24]  567 	jbc	_RI,00114$
      0000EA 80 FB            [24]  568 	sjmp	00101$
      0000EC                        569 00114$:
                                    570 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:107: }
      0000EC 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'UART1_int'
                                    574 ;------------------------------------------------------------
                                    575 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:109: void UART1_int (void) __interrupt UART1_VECTOR __using 1
                                    576 ;	-----------------------------------------
                                    577 ;	 function UART1_int
                                    578 ;	-----------------------------------------
      0000ED                        579 _UART1_int:
                           00000F   580 	ar7 = 0x0f
                           00000E   581 	ar6 = 0x0e
                           00000D   582 	ar5 = 0x0d
                           00000C   583 	ar4 = 0x0c
                           00000B   584 	ar3 = 0x0b
                           00000A   585 	ar2 = 0x0a
                           000009   586 	ar1 = 0x09
                           000008   587 	ar0 = 0x08
      0000ED C0 21            [24]  588 	push	bits
      0000EF C0 E0            [24]  589 	push	acc
      0000F1 C0 F0            [24]  590 	push	b
      0000F3 C0 82            [24]  591 	push	dpl
      0000F5 C0 83            [24]  592 	push	dph
      0000F7 C0 07            [24]  593 	push	(0+7)
      0000F9 C0 06            [24]  594 	push	(0+6)
      0000FB C0 05            [24]  595 	push	(0+5)
      0000FD C0 04            [24]  596 	push	(0+4)
      0000FF C0 03            [24]  597 	push	(0+3)
      000101 C0 02            [24]  598 	push	(0+2)
      000103 C0 01            [24]  599 	push	(0+1)
      000105 C0 00            [24]  600 	push	(0+0)
      000107 C0 D0            [24]  601 	push	psw
      000109 75 D0 08         [24]  602 	mov	psw,#0x08
                                    603 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:112: if(RI)
                                    604 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:114: RI = 0;
                                    605 ;	assignBit
      00010C 10 98 02         [24]  606 	jbc	_RI,00121$
      00010F 80 24            [24]  607 	sjmp	00104$
      000111                        608 00121$:
                                    609 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:115: SendData(SBUF);
      000111 85 99 82         [24]  610 	mov	dpl,_SBUF
      000114 75 D0 00         [24]  611 	mov	psw,#0x00
      000117 12 00 C5         [24]  612 	lcall	_SendData
      00011A 75 D0 08         [24]  613 	mov	psw,#0x08
                                    614 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:116: if(++RX1_Cnt >= UART1_BUF_LENGTH)	RX1_Cnt = 0;	//Anti overflow
      00011D 05 24            [12]  615 	inc	_RX1_Cnt
      00011F E4               [12]  616 	clr	a
      000120 B5 24 02         [24]  617 	cjne	a,_RX1_Cnt,00122$
      000123 05 25            [12]  618 	inc	(_RX1_Cnt + 1)
      000125                        619 00122$:
      000125 C3               [12]  620 	clr	c
      000126 E5 24            [12]  621 	mov	a,_RX1_Cnt
      000128 94 20            [12]  622 	subb	a,#0x20
      00012A E5 25            [12]  623 	mov	a,(_RX1_Cnt + 1)
      00012C 94 00            [12]  624 	subb	a,#0x00
      00012E 40 05            [24]  625 	jc	00104$
      000130 E4               [12]  626 	clr	a
      000131 F5 24            [12]  627 	mov	_RX1_Cnt,a
      000133 F5 25            [12]  628 	mov	(_RX1_Cnt + 1),a
      000135                        629 00104$:
                                    630 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:119: if(TI) 
      000135 30 99 03         [24]  631 	jnb	_TI,00107$
                                    632 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:122: B_TX1_Busy = 0;
      000138 75 66 00         [24]  633 	mov	_B_TX1_Busy,#0x00
      00013B                        634 00107$:
                                    635 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:124: }
      00013B D0 D0            [24]  636 	pop	psw
      00013D D0 00            [24]  637 	pop	(0+0)
      00013F D0 01            [24]  638 	pop	(0+1)
      000141 D0 02            [24]  639 	pop	(0+2)
      000143 D0 03            [24]  640 	pop	(0+3)
      000145 D0 04            [24]  641 	pop	(0+4)
      000147 D0 05            [24]  642 	pop	(0+5)
      000149 D0 06            [24]  643 	pop	(0+6)
      00014B D0 07            [24]  644 	pop	(0+7)
      00014D D0 83            [24]  645 	pop	dph
      00014F D0 82            [24]  646 	pop	dpl
      000151 D0 F0            [24]  647 	pop	b
      000153 D0 E0            [24]  648 	pop	acc
      000155 D0 21            [24]  649 	pop	bits
      000157 32               [24]  650 	reti
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function 'SendString'
                                    653 ;------------------------------------------------------------
                                    654 ;s                         Allocated to registers 
                                    655 ;------------------------------------------------------------
                                    656 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:128: void SendString(char *s)
                                    657 ;	-----------------------------------------
                                    658 ;	 function SendString
                                    659 ;	-----------------------------------------
      000158                        660 _SendString:
                           000007   661 	ar7 = 0x07
                           000006   662 	ar6 = 0x06
                           000005   663 	ar5 = 0x05
                           000004   664 	ar4 = 0x04
                           000003   665 	ar3 = 0x03
                           000002   666 	ar2 = 0x02
                           000001   667 	ar1 = 0x01
                           000000   668 	ar0 = 0x00
      000158 AD 82            [24]  669 	mov	r5,dpl
      00015A AE 83            [24]  670 	mov	r6,dph
      00015C AF F0            [24]  671 	mov	r7,b
                                    672 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:130: while (*s)
      00015E                        673 00101$:
      00015E 8D 82            [24]  674 	mov	dpl,r5
      000160 8E 83            [24]  675 	mov	dph,r6
      000162 8F F0            [24]  676 	mov	b,r7
      000164 12 07 C6         [24]  677 	lcall	__gptrget
      000167 FC               [12]  678 	mov	r4,a
      000168 60 18            [24]  679 	jz	00104$
                                    680 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:132: SendData(*s++);
      00016A 8C 82            [24]  681 	mov	dpl,r4
      00016C 0D               [12]  682 	inc	r5
      00016D BD 00 01         [24]  683 	cjne	r5,#0x00,00116$
      000170 0E               [12]  684 	inc	r6
      000171                        685 00116$:
      000171 C0 07            [24]  686 	push	ar7
      000173 C0 06            [24]  687 	push	ar6
      000175 C0 05            [24]  688 	push	ar5
      000177 12 00 C5         [24]  689 	lcall	_SendData
      00017A D0 05            [24]  690 	pop	ar5
      00017C D0 06            [24]  691 	pop	ar6
      00017E D0 07            [24]  692 	pop	ar7
      000180 80 DC            [24]  693 	sjmp	00101$
      000182                        694 00104$:
                                    695 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:134: }
      000182 22               [24]  696 	ret
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'SendNumber'
                                    699 ;------------------------------------------------------------
                                    700 ;num                       Allocated to registers r4 r5 r6 r7 
                                    701 ;a                         Allocated with name '_SendNumber_a_65536_29'
                                    702 ;b                         Allocated to registers 
                                    703 ;------------------------------------------------------------
                                    704 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:136: void SendNumber(float num)
                                    705 ;	-----------------------------------------
                                    706 ;	 function SendNumber
                                    707 ;	-----------------------------------------
      000183                        708 _SendNumber:
                                    709 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:139: a = (int)num;
      000183 AC 82            [24]  710 	mov	r4,dpl
      000185 AD 83            [24]  711 	mov	r5,dph
      000187 AE F0            [24]  712 	mov	r6,b
      000189 FF               [12]  713 	mov	r7,a
      00018A C0 07            [24]  714 	push	ar7
      00018C C0 06            [24]  715 	push	ar6
      00018E C0 05            [24]  716 	push	ar5
      000190 C0 04            [24]  717 	push	ar4
      000192 12 07 1C         [24]  718 	lcall	___fs2sint
                                    719 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:140: b = (int)((num-a)*10);
      000195 85 82 67         [24]  720 	mov	_SendNumber_a_65536_29,dpl
      000198 85 83 68         [24]  721 	mov  (_SendNumber_a_65536_29 + 1),dph
      00019B 12 07 50         [24]  722 	lcall	___sint2fs
      00019E A8 82            [24]  723 	mov	r0,dpl
      0001A0 A9 83            [24]  724 	mov	r1,dph
      0001A2 AA F0            [24]  725 	mov	r2,b
      0001A4 FB               [12]  726 	mov	r3,a
      0001A5 D0 04            [24]  727 	pop	ar4
      0001A7 D0 05            [24]  728 	pop	ar5
      0001A9 D0 06            [24]  729 	pop	ar6
      0001AB D0 07            [24]  730 	pop	ar7
      0001AD C0 00            [24]  731 	push	ar0
      0001AF C0 01            [24]  732 	push	ar1
      0001B1 C0 02            [24]  733 	push	ar2
      0001B3 C0 03            [24]  734 	push	ar3
      0001B5 8C 82            [24]  735 	mov	dpl,r4
      0001B7 8D 83            [24]  736 	mov	dph,r5
      0001B9 8E F0            [24]  737 	mov	b,r6
      0001BB EF               [12]  738 	mov	a,r7
      0001BC 12 05 B4         [24]  739 	lcall	___fssub
      0001BF AC 82            [24]  740 	mov	r4,dpl
      0001C1 AD 83            [24]  741 	mov	r5,dph
      0001C3 AE F0            [24]  742 	mov	r6,b
      0001C5 FF               [12]  743 	mov	r7,a
      0001C6 E5 81            [12]  744 	mov	a,sp
      0001C8 24 FC            [12]  745 	add	a,#0xfc
      0001CA F5 81            [12]  746 	mov	sp,a
      0001CC C0 04            [24]  747 	push	ar4
      0001CE C0 05            [24]  748 	push	ar5
      0001D0 C0 06            [24]  749 	push	ar6
      0001D2 C0 07            [24]  750 	push	ar7
      0001D4 90 00 00         [24]  751 	mov	dptr,#0x0000
      0001D7 75 F0 20         [24]  752 	mov	b,#0x20
      0001DA 74 41            [12]  753 	mov	a,#0x41
      0001DC 12 05 BF         [24]  754 	lcall	___fsmul
      0001DF AC 82            [24]  755 	mov	r4,dpl
      0001E1 AD 83            [24]  756 	mov	r5,dph
      0001E3 AE F0            [24]  757 	mov	r6,b
      0001E5 FF               [12]  758 	mov	r7,a
      0001E6 E5 81            [12]  759 	mov	a,sp
      0001E8 24 FC            [12]  760 	add	a,#0xfc
      0001EA F5 81            [12]  761 	mov	sp,a
      0001EC 8C 82            [24]  762 	mov	dpl,r4
      0001EE 8D 83            [24]  763 	mov	dph,r5
      0001F0 8E F0            [24]  764 	mov	b,r6
      0001F2 EF               [12]  765 	mov	a,r7
      0001F3 12 07 1C         [24]  766 	lcall	___fs2sint
      0001F6 AF 82            [24]  767 	mov	r7,dpl
                                    768 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:141: SendData((unsigned char)(a+48));
      0001F8 AA 67            [24]  769 	mov	r2,_SendNumber_a_65536_29
      0001FA 74 30            [12]  770 	mov	a,#0x30
      0001FC 2A               [12]  771 	add	a,r2
      0001FD F5 82            [12]  772 	mov	dpl,a
      0001FF C0 07            [24]  773 	push	ar7
      000201 12 00 C5         [24]  774 	lcall	_SendData
                                    775 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:142: SendData('.');
      000204 75 82 2E         [24]  776 	mov	dpl,#0x2e
      000207 12 00 C5         [24]  777 	lcall	_SendData
      00020A D0 07            [24]  778 	pop	ar7
                                    779 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:143: SendData((unsigned char)(b+48));
      00020C 74 30            [12]  780 	mov	a,#0x30
      00020E 2F               [12]  781 	add	a,r7
      00020F F5 82            [12]  782 	mov	dpl,a
      000211 12 00 C5         [24]  783 	lcall	_SendData
                                    784 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:144: SendData('\r');
      000214 75 82 0D         [24]  785 	mov	dpl,#0x0d
      000217 12 00 C5         [24]  786 	lcall	_SendData
                                    787 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:145: SendData('\n');
      00021A 75 82 0A         [24]  788 	mov	dpl,#0x0a
                                    789 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:146: }
      00021D 02 00 C5         [24]  790 	ljmp	_SendData
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'Delay'
                                    793 ;------------------------------------------------------------
                                    794 ;delayCtr                  Allocated to registers r6 r7 
                                    795 ;------------------------------------------------------------
                                    796 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:148: void Delay()
                                    797 ;	-----------------------------------------
                                    798 ;	 function Delay
                                    799 ;	-----------------------------------------
      000220                        800 _Delay:
                                    801 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:151: for(delayCtr = 2400;delayCtr > 0;delayCtr--)	//wait 1 second
      000220 7E 60            [12]  802 	mov	r6,#0x60
      000222 7F 09            [12]  803 	mov	r7,#0x09
      000224                        804 00102$:
                                    805 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:153: Delay2400();
      000224 C0 07            [24]  806 	push	ar7
      000226 C0 06            [24]  807 	push	ar6
      000228 12 00 88         [24]  808 	lcall	_Delay2400
      00022B D0 06            [24]  809 	pop	ar6
      00022D D0 07            [24]  810 	pop	ar7
                                    811 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:151: for(delayCtr = 2400;delayCtr > 0;delayCtr--)	//wait 1 second
      00022F 1E               [12]  812 	dec	r6
      000230 BE FF 01         [24]  813 	cjne	r6,#0xff,00114$
      000233 1F               [12]  814 	dec	r7
      000234                        815 00114$:
      000234 EE               [12]  816 	mov	a,r6
      000235 4F               [12]  817 	orl	a,r7
      000236 70 EC            [24]  818 	jnz	00102$
                                    819 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:155: }
      000238 22               [24]  820 	ret
                                    821 ;------------------------------------------------------------
                                    822 ;Allocation info for local variables in function 'TouchDelay'
                                    823 ;------------------------------------------------------------
                                    824 ;delayCtr                  Allocated to registers r6 r7 
                                    825 ;------------------------------------------------------------
                                    826 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:157: void TouchDelay()
                                    827 ;	-----------------------------------------
                                    828 ;	 function TouchDelay
                                    829 ;	-----------------------------------------
      000239                        830 _TouchDelay:
                                    831 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:160: for(delayCtr = 600;delayCtr > 0;delayCtr--)	//wait 250msecond
      000239 7E 58            [12]  832 	mov	r6,#0x58
      00023B 7F 02            [12]  833 	mov	r7,#0x02
      00023D                        834 00102$:
                                    835 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:162: Delay2400();
      00023D C0 07            [24]  836 	push	ar7
      00023F C0 06            [24]  837 	push	ar6
      000241 12 00 88         [24]  838 	lcall	_Delay2400
      000244 D0 06            [24]  839 	pop	ar6
      000246 D0 07            [24]  840 	pop	ar7
                                    841 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:160: for(delayCtr = 600;delayCtr > 0;delayCtr--)	//wait 250msecond
      000248 1E               [12]  842 	dec	r6
      000249 BE FF 01         [24]  843 	cjne	r6,#0xff,00114$
      00024C 1F               [12]  844 	dec	r7
      00024D                        845 00114$:
      00024D EE               [12]  846 	mov	a,r6
      00024E 4F               [12]  847 	orl	a,r7
      00024F 70 EC            [24]  848 	jnz	00102$
                                    849 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:164: }
      000251 22               [24]  850 	ret
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'delay_ms'
                                    853 ;------------------------------------------------------------
                                    854 ;ms                        Allocated to registers 
                                    855 ;i                         Allocated to registers r4 r5 
                                    856 ;------------------------------------------------------------
                                    857 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:166: void  delay_ms(unsigned int ms)
                                    858 ;	-----------------------------------------
                                    859 ;	 function delay_ms
                                    860 ;	-----------------------------------------
      000252                        861 _delay_ms:
      000252 AE 82            [24]  862 	mov	r6,dpl
      000254 AF 83            [24]  863 	mov	r7,dph
                                    864 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:171: while(--i)	;   //14T per loop
      000256                        865 00109$:
      000256 7C 52            [12]  866 	mov	r4,#0x52
      000258 7D 03            [12]  867 	mov	r5,#0x03
      00025A                        868 00101$:
      00025A 1C               [12]  869 	dec	r4
      00025B BC FF 01         [24]  870 	cjne	r4,#0xff,00123$
      00025E 1D               [12]  871 	dec	r5
      00025F                        872 00123$:
      00025F EC               [12]  873 	mov	a,r4
      000260 4D               [12]  874 	orl	a,r5
      000261 70 F7            [24]  875 	jnz	00101$
                                    876 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:172: }while(--ms);
      000263 1E               [12]  877 	dec	r6
      000264 BE FF 01         [24]  878 	cjne	r6,#0xff,00125$
      000267 1F               [12]  879 	dec	r7
      000268                        880 00125$:
      000268 EE               [12]  881 	mov	a,r6
      000269 4F               [12]  882 	orl	a,r7
      00026A 70 EA            [24]  883 	jnz	00109$
                                    884 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:173: }
      00026C 22               [24]  885 	ret
                                    886 ;------------------------------------------------------------
                                    887 ;Allocation info for local variables in function 'blueLEDAllOn'
                                    888 ;------------------------------------------------------------
                                    889 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:175: void blueLEDAllOn()
                                    890 ;	-----------------------------------------
                                    891 ;	 function blueLEDAllOn
                                    892 ;	-----------------------------------------
      00026D                        893 _blueLEDAllOn:
                                    894 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:177: led0b = 0; //blue
                                    895 ;	assignBit
      00026D C2 A5            [12]  896 	clr	_P2_5
                                    897 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:178: led1b = 0; //blue
                                    898 ;	assignBit
      00026F C2 A3            [12]  899 	clr	_P2_3
                                    900 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:179: led2b = 0; //blue
                                    901 ;	assignBit
      000271 C2 B6            [12]  902 	clr	_P3_6
                                    903 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:180: led0g = 1; //green off
                                    904 ;	assignBit
      000273 D2 A2            [12]  905 	setb	_P2_2
                                    906 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:181: led1g = 1; //green off
                                    907 ;	assignBit
      000275 D2 A1            [12]  908 	setb	_P2_1
                                    909 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:182: led2g = 1; //green off
                                    910 ;	assignBit
      000277 D2 A0            [12]  911 	setb	_P2_0
                                    912 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:183: led0r = 1; //red off
                                    913 ;	assignBit
      000279 D2 90            [12]  914 	setb	_P1_0
                                    915 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:184: led1r = 1; //red off
                                    916 ;	assignBit
      00027B D2 94            [12]  917 	setb	_P1_4
                                    918 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:185: led2r = 1; //red off	
                                    919 ;	assignBit
      00027D D2 B7            [12]  920 	setb	_P3_7
                                    921 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:186: }
      00027F 22               [24]  922 	ret
                                    923 ;------------------------------------------------------------
                                    924 ;Allocation info for local variables in function 'blueLEDOn'
                                    925 ;------------------------------------------------------------
                                    926 ;gangtype                  Allocated to registers r6 r7 
                                    927 ;------------------------------------------------------------
                                    928 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:188: void blueLEDOn(int gangtype)
                                    929 ;	-----------------------------------------
                                    930 ;	 function blueLEDOn
                                    931 ;	-----------------------------------------
      000280                        932 _blueLEDOn:
      000280 AE 82            [24]  933 	mov	r6,dpl
      000282 AF 83            [24]  934 	mov	r7,dph
                                    935 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:190: if (gangtype == 3 || gangtype == 0)
      000284 BE 03 05         [24]  936 	cjne	r6,#0x03,00124$
      000287 BF 00 02         [24]  937 	cjne	r7,#0x00,00124$
      00028A 80 04            [24]  938 	sjmp	00106$
      00028C                        939 00124$:
      00028C EE               [12]  940 	mov	a,r6
      00028D 4F               [12]  941 	orl	a,r7
      00028E 70 13            [24]  942 	jnz	00107$
      000290                        943 00106$:
                                    944 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:192: led0b = 0; //blue
                                    945 ;	assignBit
      000290 C2 A5            [12]  946 	clr	_P2_5
                                    947 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:193: led0g = 1; //green off
                                    948 ;	assignBit
      000292 D2 A2            [12]  949 	setb	_P2_2
                                    950 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:194: led0r = 1; //red off
                                    951 ;	assignBit
      000294 D2 90            [12]  952 	setb	_P1_0
                                    953 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:196: led1b = 0; //blue
                                    954 ;	assignBit
      000296 C2 A3            [12]  955 	clr	_P2_3
                                    956 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:197: led1g = 1; //green off
                                    957 ;	assignBit
      000298 D2 A1            [12]  958 	setb	_P2_1
                                    959 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:198: led1r = 1; //red off
                                    960 ;	assignBit
      00029A D2 94            [12]  961 	setb	_P1_4
                                    962 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:200: led2b = 0; //blue
                                    963 ;	assignBit
      00029C C2 B6            [12]  964 	clr	_P3_6
                                    965 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:201: led2g = 1; //green off
                                    966 ;	assignBit
      00029E D2 A0            [12]  967 	setb	_P2_0
                                    968 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:202: led2r = 1; //red off	
                                    969 ;	assignBit
      0002A0 D2 B7            [12]  970 	setb	_P3_7
      0002A2 22               [24]  971 	ret
      0002A3                        972 00107$:
                                    973 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:205: else if (gangtype == 2)
      0002A3 BE 02 16         [24]  974 	cjne	r6,#0x02,00104$
      0002A6 BF 00 13         [24]  975 	cjne	r7,#0x00,00104$
                                    976 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:207: led0b = 0; //blue
                                    977 ;	assignBit
      0002A9 C2 A5            [12]  978 	clr	_P2_5
                                    979 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:208: led0g = 1; //green off
                                    980 ;	assignBit
      0002AB D2 A2            [12]  981 	setb	_P2_2
                                    982 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:209: led0r = 1; //red off
                                    983 ;	assignBit
      0002AD D2 90            [12]  984 	setb	_P1_0
                                    985 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:211: led1b = 1; //blue off
                                    986 ;	assignBit
      0002AF D2 A3            [12]  987 	setb	_P2_3
                                    988 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:212: led1g = 1; //green off
                                    989 ;	assignBit
      0002B1 D2 A1            [12]  990 	setb	_P2_1
                                    991 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:213: led1r = 1; //red off
                                    992 ;	assignBit
      0002B3 D2 94            [12]  993 	setb	_P1_4
                                    994 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:215: led2b = 0; //blue
                                    995 ;	assignBit
      0002B5 C2 B6            [12]  996 	clr	_P3_6
                                    997 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:216: led2g = 1; //green off
                                    998 ;	assignBit
      0002B7 D2 A0            [12]  999 	setb	_P2_0
                                   1000 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:217: led2r = 1; //red off			
                                   1001 ;	assignBit
      0002B9 D2 B7            [12] 1002 	setb	_P3_7
      0002BB 22               [24] 1003 	ret
      0002BC                       1004 00104$:
                                   1005 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:220: else if (gangtype == 1)
      0002BC BE 01 15         [24] 1006 	cjne	r6,#0x01,00110$
      0002BF BF 00 12         [24] 1007 	cjne	r7,#0x00,00110$
                                   1008 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:222: led0b = 1; //blue
                                   1009 ;	assignBit
      0002C2 D2 A5            [12] 1010 	setb	_P2_5
                                   1011 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:223: led0g = 1; //green off
                                   1012 ;	assignBit
      0002C4 D2 A2            [12] 1013 	setb	_P2_2
                                   1014 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:224: led0r = 1; //red off
                                   1015 ;	assignBit
      0002C6 D2 90            [12] 1016 	setb	_P1_0
                                   1017 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:226: led1b = 0; //blue off
                                   1018 ;	assignBit
      0002C8 C2 A3            [12] 1019 	clr	_P2_3
                                   1020 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:227: led1g = 1; //green off
                                   1021 ;	assignBit
      0002CA D2 A1            [12] 1022 	setb	_P2_1
                                   1023 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:228: led1r = 1; //red off
                                   1024 ;	assignBit
      0002CC D2 94            [12] 1025 	setb	_P1_4
                                   1026 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:230: led2b = 1; //blue
                                   1027 ;	assignBit
      0002CE D2 B6            [12] 1028 	setb	_P3_6
                                   1029 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:231: led2g = 1; //green off
                                   1030 ;	assignBit
      0002D0 D2 A0            [12] 1031 	setb	_P2_0
                                   1032 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:232: led2r = 1; //red off			
                                   1033 ;	assignBit
      0002D2 D2 B7            [12] 1034 	setb	_P3_7
      0002D4                       1035 00110$:
                                   1036 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:236: }
      0002D4 22               [24] 1037 	ret
                                   1038 ;------------------------------------------------------------
                                   1039 ;Allocation info for local variables in function 'redLEDAllFlash'
                                   1040 ;------------------------------------------------------------
                                   1041 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:238: void redLEDAllFlash()
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function redLEDAllFlash
                                   1044 ;	-----------------------------------------
      0002D5                       1045 _redLEDAllFlash:
                                   1046 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:240: led0b = 1; //blue
                                   1047 ;	assignBit
      0002D5 D2 A5            [12] 1048 	setb	_P2_5
                                   1049 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:241: led1b = 1; //blue
                                   1050 ;	assignBit
      0002D7 D2 A3            [12] 1051 	setb	_P2_3
                                   1052 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:242: led2b = 1; //blue
                                   1053 ;	assignBit
      0002D9 D2 B6            [12] 1054 	setb	_P3_6
                                   1055 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:243: led0g = 1; //green off
                                   1056 ;	assignBit
      0002DB D2 A2            [12] 1057 	setb	_P2_2
                                   1058 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:244: led1g = 1; //green off
                                   1059 ;	assignBit
      0002DD D2 A1            [12] 1060 	setb	_P2_1
                                   1061 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:245: led2g = 1; //green off
                                   1062 ;	assignBit
      0002DF D2 A0            [12] 1063 	setb	_P2_0
                                   1064 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:246: led0r = 0; //red 
                                   1065 ;	assignBit
      0002E1 C2 90            [12] 1066 	clr	_P1_0
                                   1067 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:247: led1r = 0; //red 
                                   1068 ;	assignBit
      0002E3 C2 94            [12] 1069 	clr	_P1_4
                                   1070 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:248: led2r = 0; //red 	
                                   1071 ;	assignBit
      0002E5 C2 B7            [12] 1072 	clr	_P3_7
                                   1073 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:249: Delay();
      0002E7 12 02 20         [24] 1074 	lcall	_Delay
                                   1075 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:250: led0r = 1; //red off
                                   1076 ;	assignBit
      0002EA D2 90            [12] 1077 	setb	_P1_0
                                   1078 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:251: led1r = 1; //red off
                                   1079 ;	assignBit
      0002EC D2 94            [12] 1080 	setb	_P1_4
                                   1081 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:252: led2r = 1; //red off	
                                   1082 ;	assignBit
      0002EE D2 B7            [12] 1083 	setb	_P3_7
                                   1084 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:253: Delay();
                                   1085 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:254: }
      0002F0 02 02 20         [24] 1086 	ljmp	_Delay
                                   1087 ;------------------------------------------------------------
                                   1088 ;Allocation info for local variables in function 'blueLEDAllFlash'
                                   1089 ;------------------------------------------------------------
                                   1090 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:256: void blueLEDAllFlash()
                                   1091 ;	-----------------------------------------
                                   1092 ;	 function blueLEDAllFlash
                                   1093 ;	-----------------------------------------
      0002F3                       1094 _blueLEDAllFlash:
                                   1095 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:258: led0b = 0; //blue
                                   1096 ;	assignBit
      0002F3 C2 A5            [12] 1097 	clr	_P2_5
                                   1098 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:259: led1b = 0; //blue
                                   1099 ;	assignBit
      0002F5 C2 A3            [12] 1100 	clr	_P2_3
                                   1101 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:260: led2b = 0; //blue
                                   1102 ;	assignBit
      0002F7 C2 B6            [12] 1103 	clr	_P3_6
                                   1104 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:261: led0g = 1; //green off
                                   1105 ;	assignBit
      0002F9 D2 A2            [12] 1106 	setb	_P2_2
                                   1107 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:262: led1g = 1; //green off
                                   1108 ;	assignBit
      0002FB D2 A1            [12] 1109 	setb	_P2_1
                                   1110 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:263: led2g = 1; //green off
                                   1111 ;	assignBit
      0002FD D2 A0            [12] 1112 	setb	_P2_0
                                   1113 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:264: led0r = 1; //red off
                                   1114 ;	assignBit
      0002FF D2 90            [12] 1115 	setb	_P1_0
                                   1116 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:265: led1r = 1; //red off
                                   1117 ;	assignBit
      000301 D2 94            [12] 1118 	setb	_P1_4
                                   1119 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:266: led2r = 1; //red off	
                                   1120 ;	assignBit
      000303 D2 B7            [12] 1121 	setb	_P3_7
                                   1122 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:267: Delay();
      000305 12 02 20         [24] 1123 	lcall	_Delay
                                   1124 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:268: led0b = 1;
                                   1125 ;	assignBit
      000308 D2 A5            [12] 1126 	setb	_P2_5
                                   1127 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:269: led1b = 1;
                                   1128 ;	assignBit
      00030A D2 A3            [12] 1129 	setb	_P2_3
                                   1130 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:270: led2b = 1;
                                   1131 ;	assignBit
      00030C D2 B6            [12] 1132 	setb	_P3_6
                                   1133 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:271: Delay();
                                   1134 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:272: }
      00030E 02 02 20         [24] 1135 	ljmp	_Delay
                                   1136 ;------------------------------------------------------------
                                   1137 ;Allocation info for local variables in function 'button0_action'
                                   1138 ;------------------------------------------------------------
                                   1139 ;button_state              Allocated to registers r7 
                                   1140 ;------------------------------------------------------------
                                   1141 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:274: void button0_action(unsigned char button_state)
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function button0_action
                                   1144 ;	-----------------------------------------
      000311                       1145 _button0_action:
                                   1146 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:276: if (button_state)
      000311 E5 82            [12] 1147 	mov	a,dpl
      000313 60 05            [24] 1148 	jz	00102$
                                   1149 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:278: led0b = 1;
                                   1150 ;	assignBit
      000315 D2 A5            [12] 1151 	setb	_P2_5
                                   1152 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:279: led0g = 0; //green on	
                                   1153 ;	assignBit
      000317 C2 A2            [12] 1154 	clr	_P2_2
      000319 22               [24] 1155 	ret
      00031A                       1156 00102$:
                                   1157 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:283: led0b = 0; //blue on
                                   1158 ;	assignBit
      00031A C2 A5            [12] 1159 	clr	_P2_5
                                   1160 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:284: led0g = 1; 
                                   1161 ;	assignBit
      00031C D2 A2            [12] 1162 	setb	_P2_2
                                   1163 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:287: }
      00031E 22               [24] 1164 	ret
                                   1165 ;------------------------------------------------------------
                                   1166 ;Allocation info for local variables in function 'button1_action'
                                   1167 ;------------------------------------------------------------
                                   1168 ;button_state              Allocated to registers r7 
                                   1169 ;------------------------------------------------------------
                                   1170 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:289: void button1_action(unsigned char button_state)
                                   1171 ;	-----------------------------------------
                                   1172 ;	 function button1_action
                                   1173 ;	-----------------------------------------
      00031F                       1174 _button1_action:
                                   1175 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:291: if (button_state)
      00031F E5 82            [12] 1176 	mov	a,dpl
      000321 60 05            [24] 1177 	jz	00102$
                                   1178 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:293: led1b = 1;
                                   1179 ;	assignBit
      000323 D2 A3            [12] 1180 	setb	_P2_3
                                   1181 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:294: led1g = 0; //green on
                                   1182 ;	assignBit
      000325 C2 A1            [12] 1183 	clr	_P2_1
      000327 22               [24] 1184 	ret
      000328                       1185 00102$:
                                   1186 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:299: led1b = 0; //blue on
                                   1187 ;	assignBit
      000328 C2 A3            [12] 1188 	clr	_P2_3
                                   1189 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:300: led1g = 1; 
                                   1190 ;	assignBit
      00032A D2 A1            [12] 1191 	setb	_P2_1
                                   1192 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:302: }	
      00032C 22               [24] 1193 	ret
                                   1194 ;------------------------------------------------------------
                                   1195 ;Allocation info for local variables in function 'button2_action'
                                   1196 ;------------------------------------------------------------
                                   1197 ;button_state              Allocated to registers r7 
                                   1198 ;------------------------------------------------------------
                                   1199 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:304: void button2_action(unsigned char button_state)
                                   1200 ;	-----------------------------------------
                                   1201 ;	 function button2_action
                                   1202 ;	-----------------------------------------
      00032D                       1203 _button2_action:
                                   1204 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:306: if (button_state)
      00032D E5 82            [12] 1205 	mov	a,dpl
      00032F 60 07            [24] 1206 	jz	00102$
                                   1207 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:308: led2b = 1;
                                   1208 ;	assignBit
      000331 D2 B6            [12] 1209 	setb	_P3_6
                                   1210 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:309: led2g = 0; //green on
                                   1211 ;	assignBit
      000333 C2 A0            [12] 1212 	clr	_P2_0
                                   1213 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:310: led2r = 1; 
                                   1214 ;	assignBit
      000335 D2 B7            [12] 1215 	setb	_P3_7
      000337 22               [24] 1216 	ret
      000338                       1217 00102$:
                                   1218 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:314: led2b = 0; //blue on
                                   1219 ;	assignBit
      000338 C2 B6            [12] 1220 	clr	_P3_6
                                   1221 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:315: led2g = 1; 
                                   1222 ;	assignBit
      00033A D2 A0            [12] 1223 	setb	_P2_0
                                   1224 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:316: led2r = 1; 
                                   1225 ;	assignBit
      00033C D2 B7            [12] 1226 	setb	_P3_7
                                   1227 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:318: }			
      00033E 22               [24] 1228 	ret
                                   1229 ;------------------------------------------------------------
                                   1230 ;Allocation info for local variables in function 'relay0_state'
                                   1231 ;------------------------------------------------------------
                                   1232 ;button_state              Allocated to registers r7 
                                   1233 ;------------------------------------------------------------
                                   1234 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:322: unsigned char relay0_state(unsigned char button_state)
                                   1235 ;	-----------------------------------------
                                   1236 ;	 function relay0_state
                                   1237 ;	-----------------------------------------
      00033F                       1238 _relay0_state:
                                   1239 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:324: if (!button_state) relay0 = 1; //closed
      00033F E5 82            [12] 1240 	mov	a,dpl
      000341 70 04            [24] 1241 	jnz	00102$
                                   1242 ;	assignBit
      000343 D2 B3            [12] 1243 	setb	_P3_3
      000345 80 02            [24] 1244 	sjmp	00103$
      000347                       1245 00102$:
                                   1246 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:325: else relay0 = 0; //open
                                   1247 ;	assignBit
      000347 C2 B3            [12] 1248 	clr	_P3_3
      000349                       1249 00103$:
                                   1250 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:326: SendString("Relay 0: ");
      000349 90 08 E1         [24] 1251 	mov	dptr,#___str_0
      00034C 75 F0 80         [24] 1252 	mov	b,#0x80
      00034F 12 01 58         [24] 1253 	lcall	_SendString
                                   1254 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:327: SendNumber(relay0);
      000352 A2 B3            [12] 1255 	mov	c,_P3_3
      000354 E4               [12] 1256 	clr	a
      000355 33               [12] 1257 	rlc	a
      000356 F5 82            [12] 1258 	mov	dpl,a
      000358 12 07 E2         [24] 1259 	lcall	___uchar2fs
      00035B 12 01 83         [24] 1260 	lcall	_SendNumber
                                   1261 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:328: return relay0;
      00035E A2 B3            [12] 1262 	mov	c,_P3_3
      000360 E4               [12] 1263 	clr	a
      000361 33               [12] 1264 	rlc	a
      000362 F5 82            [12] 1265 	mov	dpl,a
                                   1266 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:329: }
      000364 22               [24] 1267 	ret
                                   1268 ;------------------------------------------------------------
                                   1269 ;Allocation info for local variables in function 'relay1_state'
                                   1270 ;------------------------------------------------------------
                                   1271 ;button_state              Allocated to registers r7 
                                   1272 ;------------------------------------------------------------
                                   1273 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:331: unsigned char relay1_state(unsigned char button_state)
                                   1274 ;	-----------------------------------------
                                   1275 ;	 function relay1_state
                                   1276 ;	-----------------------------------------
      000365                       1277 _relay1_state:
                                   1278 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:333: if (!button_state) relay1 = 1; //closed
      000365 E5 82            [12] 1279 	mov	a,dpl
      000367 70 04            [24] 1280 	jnz	00102$
                                   1281 ;	assignBit
      000369 D2 B5            [12] 1282 	setb	_P3_5
      00036B 80 02            [24] 1283 	sjmp	00103$
      00036D                       1284 00102$:
                                   1285 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:334: else relay1 = 0; //open
                                   1286 ;	assignBit
      00036D C2 B5            [12] 1287 	clr	_P3_5
      00036F                       1288 00103$:
                                   1289 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:335: SendString("Relay 1: ");
      00036F 90 08 EB         [24] 1290 	mov	dptr,#___str_1
      000372 75 F0 80         [24] 1291 	mov	b,#0x80
      000375 12 01 58         [24] 1292 	lcall	_SendString
                                   1293 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:336: SendNumber(relay1);
      000378 A2 B5            [12] 1294 	mov	c,_P3_5
      00037A E4               [12] 1295 	clr	a
      00037B 33               [12] 1296 	rlc	a
      00037C F5 82            [12] 1297 	mov	dpl,a
      00037E 12 07 E2         [24] 1298 	lcall	___uchar2fs
      000381 12 01 83         [24] 1299 	lcall	_SendNumber
                                   1300 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:337: return relay1;
      000384 A2 B5            [12] 1301 	mov	c,_P3_5
      000386 E4               [12] 1302 	clr	a
      000387 33               [12] 1303 	rlc	a
      000388 F5 82            [12] 1304 	mov	dpl,a
                                   1305 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:338: }
      00038A 22               [24] 1306 	ret
                                   1307 ;------------------------------------------------------------
                                   1308 ;Allocation info for local variables in function 'relay2_state'
                                   1309 ;------------------------------------------------------------
                                   1310 ;button_state              Allocated to registers r7 
                                   1311 ;------------------------------------------------------------
                                   1312 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:340: unsigned char relay2_state(unsigned char button_state)
                                   1313 ;	-----------------------------------------
                                   1314 ;	 function relay2_state
                                   1315 ;	-----------------------------------------
      00038B                       1316 _relay2_state:
                                   1317 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:342: if (!button_state) relay2 = 1; //closed
      00038B E5 82            [12] 1318 	mov	a,dpl
      00038D 70 04            [24] 1319 	jnz	00102$
                                   1320 ;	assignBit
      00038F D2 B4            [12] 1321 	setb	_P3_4
      000391 80 02            [24] 1322 	sjmp	00103$
      000393                       1323 00102$:
                                   1324 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:343: else relay2 = 0; //open
                                   1325 ;	assignBit
      000393 C2 B4            [12] 1326 	clr	_P3_4
      000395                       1327 00103$:
                                   1328 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:344: SendString("Relay 2: ");
      000395 90 08 F5         [24] 1329 	mov	dptr,#___str_2
      000398 75 F0 80         [24] 1330 	mov	b,#0x80
      00039B 12 01 58         [24] 1331 	lcall	_SendString
                                   1332 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:345: SendNumber(relay2);
      00039E A2 B4            [12] 1333 	mov	c,_P3_4
      0003A0 E4               [12] 1334 	clr	a
      0003A1 33               [12] 1335 	rlc	a
      0003A2 F5 82            [12] 1336 	mov	dpl,a
      0003A4 12 07 E2         [24] 1337 	lcall	___uchar2fs
      0003A7 12 01 83         [24] 1338 	lcall	_SendNumber
                                   1339 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:346: return relay2;
      0003AA A2 B4            [12] 1340 	mov	c,_P3_4
      0003AC E4               [12] 1341 	clr	a
      0003AD 33               [12] 1342 	rlc	a
      0003AE F5 82            [12] 1343 	mov	dpl,a
                                   1344 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:347: }			
      0003B0 22               [24] 1345 	ret
                                   1346 ;------------------------------------------------------------
                                   1347 ;Allocation info for local variables in function 'GetGangType'
                                   1348 ;------------------------------------------------------------
                                   1349 ;gangtype                  Allocated to registers r6 r7 
                                   1350 ;------------------------------------------------------------
                                   1351 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:351: int GetGangType()
                                   1352 ;	-----------------------------------------
                                   1353 ;	 function GetGangType
                                   1354 ;	-----------------------------------------
      0003B1                       1355 _GetGangType:
                                   1356 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:355: if (B0 && B1) gangtype = 3;
      0003B1 30 81 09         [24] 1357 	jnb	_P0_1,00110$
      0003B4 30 80 06         [24] 1358 	jnb	_P0_0,00110$
      0003B7 7E 03            [12] 1359 	mov	r6,#0x03
      0003B9 7F 00            [12] 1360 	mov	r7,#0x00
      0003BB 80 1C            [24] 1361 	sjmp	00111$
      0003BD                       1362 00110$:
                                   1363 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:356: else if (!B0 && B1) gangtype = 2;
      0003BD 20 81 09         [24] 1364 	jb	_P0_1,00106$
      0003C0 30 80 06         [24] 1365 	jnb	_P0_0,00106$
      0003C3 7E 02            [12] 1366 	mov	r6,#0x02
      0003C5 7F 00            [12] 1367 	mov	r7,#0x00
      0003C7 80 10            [24] 1368 	sjmp	00111$
      0003C9                       1369 00106$:
                                   1370 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:357: else if (B0 && !B1) gangtype = 1;
      0003C9 30 81 09         [24] 1371 	jnb	_P0_1,00102$
      0003CC 20 80 06         [24] 1372 	jb	_P0_0,00102$
      0003CF 7E 01            [12] 1373 	mov	r6,#0x01
      0003D1 7F 00            [12] 1374 	mov	r7,#0x00
      0003D3 80 04            [24] 1375 	sjmp	00111$
      0003D5                       1376 00102$:
                                   1377 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:358: else gangtype = 0;
      0003D5 7E 00            [12] 1378 	mov	r6,#0x00
      0003D7 7F 00            [12] 1379 	mov	r7,#0x00
      0003D9                       1380 00111$:
                                   1381 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:360: return gangtype;
      0003D9 8E 82            [24] 1382 	mov	dpl,r6
      0003DB 8F 83            [24] 1383 	mov	dph,r7
                                   1384 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:361: }
      0003DD 22               [24] 1385 	ret
                                   1386 ;------------------------------------------------------------
                                   1387 ;Allocation info for local variables in function 'Reset'
                                   1388 ;------------------------------------------------------------
                                   1389 ;gangtype                  Allocated to registers 
                                   1390 ;i                         Allocated to registers r6 r7 
                                   1391 ;------------------------------------------------------------
                                   1392 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:364: void Reset()
                                   1393 ;	-----------------------------------------
                                   1394 ;	 function Reset
                                   1395 ;	-----------------------------------------
      0003DE                       1396 _Reset:
                                   1397 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:368: relay0 = 1;
                                   1398 ;	assignBit
      0003DE D2 B3            [12] 1399 	setb	_P3_3
                                   1400 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:369: relay1 = 1;
                                   1401 ;	assignBit
      0003E0 D2 B5            [12] 1402 	setb	_P3_5
                                   1403 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:370: relay2 = 1;
                                   1404 ;	assignBit
      0003E2 D2 B4            [12] 1405 	setb	_P3_4
                                   1406 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:373: SC04A_disable;
                                   1407 ;	assignBit
      0003E4 D2 A6            [12] 1408 	setb	_P2_6
                                   1409 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:374: for (int i = 0; i<10; i++)
      0003E6 7E 00            [12] 1410 	mov	r6,#0x00
      0003E8 7F 00            [12] 1411 	mov	r7,#0x00
      0003EA                       1412 00103$:
      0003EA C3               [12] 1413 	clr	c
      0003EB EE               [12] 1414 	mov	a,r6
      0003EC 94 0A            [12] 1415 	subb	a,#0x0a
      0003EE EF               [12] 1416 	mov	a,r7
      0003EF 64 80            [12] 1417 	xrl	a,#0x80
      0003F1 94 80            [12] 1418 	subb	a,#0x80
      0003F3 50 12            [24] 1419 	jnc	00101$
                                   1420 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:376: redLEDAllFlash();
      0003F5 C0 07            [24] 1421 	push	ar7
      0003F7 C0 06            [24] 1422 	push	ar6
      0003F9 12 02 D5         [24] 1423 	lcall	_redLEDAllFlash
      0003FC D0 06            [24] 1424 	pop	ar6
      0003FE D0 07            [24] 1425 	pop	ar7
                                   1426 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:374: for (int i = 0; i<10; i++)
      000400 0E               [12] 1427 	inc	r6
      000401 BE 00 E6         [24] 1428 	cjne	r6,#0x00,00103$
      000404 0F               [12] 1429 	inc	r7
      000405 80 E3            [24] 1430 	sjmp	00103$
      000407                       1431 00101$:
                                   1432 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:379: SC04A_enable;
                                   1433 ;	assignBit
      000407 C2 A6            [12] 1434 	clr	_P2_6
                                   1435 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:380: gangtype = GetGangType();
      000409 12 03 B1         [24] 1436 	lcall	_GetGangType
                                   1437 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:381: blueLEDOn(gangtype);
                                   1438 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:386: }
      00040C 02 02 80         [24] 1439 	ljmp	_blueLEDOn
                                   1440 ;------------------------------------------------------------
                                   1441 ;Allocation info for local variables in function 'main'
                                   1442 ;------------------------------------------------------------
                                   1443 ;gangtype                  Allocated to registers r6 r7 
                                   1444 ;button0_state             Allocated to registers r5 
                                   1445 ;button1_state             Allocated to registers r4 
                                   1446 ;button2_state             Allocated with name '_main_button2_state_65537_70'
                                   1447 ;stage                     Allocated to registers 
                                   1448 ;------------------------------------------------------------
                                   1449 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:390: void main()
                                   1450 ;	-----------------------------------------
                                   1451 ;	 function main
                                   1452 ;	-----------------------------------------
      00040F                       1453 _main:
                                   1454 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:394: gangtype = GetGangType();
      00040F 12 03 B1         [24] 1455 	lcall	_GetGangType
      000412 AE 82            [24] 1456 	mov	r6,dpl
      000414 AF 83            [24] 1457 	mov	r7,dph
                                   1458 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:396: unsigned char button0_state = 0;
      000416 7D 00            [12] 1459 	mov	r5,#0x00
                                   1460 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:397: unsigned char button1_state = 0;
      000418 7C 00            [12] 1461 	mov	r4,#0x00
                                   1462 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:398: unsigned char button2_state = 0;
                                   1463 ;	1-genFromRTrack replaced	mov	_main_button2_state_65537_70,#0x00
      00041A 8D 69            [24] 1464 	mov	_main_button2_state_65537_70,r5
                                   1465 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:403: Uart1_init();
      00041C C0 07            [24] 1466 	push	ar7
      00041E C0 06            [24] 1467 	push	ar6
      000420 C0 05            [24] 1468 	push	ar5
      000422 C0 04            [24] 1469 	push	ar4
      000424 12 00 9D         [24] 1470 	lcall	_Uart1_init
                                   1471 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:404: SendString("STC15W408AS\r\n");
      000427 90 08 FF         [24] 1472 	mov	dptr,#___str_3
      00042A 75 F0 80         [24] 1473 	mov	b,#0x80
      00042D 12 01 58         [24] 1474 	lcall	_SendString
                                   1475 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:409: P3M1 = 0x0;
      000430 75 B1 00         [24] 1476 	mov	_P3M1,#0x00
                                   1477 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:410: P3M0 = 0x38; 
      000433 75 B2 38         [24] 1478 	mov	_P3M0,#0x38
                                   1479 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:413: P0 = 0xFF;
      000436 75 80 FF         [24] 1480 	mov	_P0,#0xff
                                   1481 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:414: P1 = 0xFF;
      000439 75 90 FF         [24] 1482 	mov	_P1,#0xff
                                   1483 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:415: P2 = 0xFF;
      00043C 75 A0 FF         [24] 1484 	mov	_P2,#0xff
                                   1485 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:416: P3 = 0xFF;
      00043F 75 B0 FF         [24] 1486 	mov	_P3,#0xff
                                   1487 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:419: SC04A_enable;
                                   1488 ;	assignBit
      000442 C2 A6            [12] 1489 	clr	_P2_6
                                   1490 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:421: Delay(); //if to short after setting ports relay is open regardless of setting? Might be missing something.
      000444 12 02 20         [24] 1491 	lcall	_Delay
                                   1492 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:423: relay0 = 1;
                                   1493 ;	assignBit
      000447 D2 B3            [12] 1494 	setb	_P3_3
                                   1495 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:424: relay1 = 1;
                                   1496 ;	assignBit
      000449 D2 B5            [12] 1497 	setb	_P3_5
                                   1498 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:425: relay2 = 1;
                                   1499 ;	assignBit
      00044B D2 B4            [12] 1500 	setb	_P3_4
                                   1501 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:427: redLEDAllFlash();
      00044D 12 02 D5         [24] 1502 	lcall	_redLEDAllFlash
      000450 D0 04            [24] 1503 	pop	ar4
      000452 D0 05            [24] 1504 	pop	ar5
      000454 D0 06            [24] 1505 	pop	ar6
      000456 D0 07            [24] 1506 	pop	ar7
                                   1507 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:428: blueLEDOn(gangtype);
      000458 8E 82            [24] 1508 	mov	dpl,r6
      00045A 8F 83            [24] 1509 	mov	dph,r7
      00045C C0 07            [24] 1510 	push	ar7
      00045E C0 06            [24] 1511 	push	ar6
      000460 C0 05            [24] 1512 	push	ar5
      000462 C0 04            [24] 1513 	push	ar4
      000464 12 02 80         [24] 1514 	lcall	_blueLEDOn
                                   1515 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:431: P1_3 = 1;
                                   1516 ;	assignBit
      000467 D2 93            [12] 1517 	setb	_P1_3
                                   1518 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:432: SendString("nReady-P1_1:");
      000469 90 09 0D         [24] 1519 	mov	dptr,#___str_4
      00046C 75 F0 80         [24] 1520 	mov	b,#0x80
      00046F 12 01 58         [24] 1521 	lcall	_SendString
                                   1522 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:433: SendNumber(P1_1);	
      000472 A2 91            [12] 1523 	mov	c,_P1_1
      000474 E4               [12] 1524 	clr	a
      000475 33               [12] 1525 	rlc	a
      000476 F5 82            [12] 1526 	mov	dpl,a
      000478 12 07 E2         [24] 1527 	lcall	___uchar2fs
      00047B 12 01 83         [24] 1528 	lcall	_SendNumber
                                   1529 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:434: SendString("nReload-P1_2:");
      00047E 90 09 1A         [24] 1530 	mov	dptr,#___str_5
      000481 75 F0 80         [24] 1531 	mov	b,#0x80
      000484 12 01 58         [24] 1532 	lcall	_SendString
                                   1533 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:435: SendNumber(P1_2);	
      000487 A2 92            [12] 1534 	mov	c,_P1_2
      000489 E4               [12] 1535 	clr	a
      00048A 33               [12] 1536 	rlc	a
      00048B F5 82            [12] 1537 	mov	dpl,a
      00048D 12 07 E2         [24] 1538 	lcall	___uchar2fs
      000490 12 01 83         [24] 1539 	lcall	_SendNumber
                                   1540 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:436: SendString("Reset-P1_3:");
      000493 90 09 28         [24] 1541 	mov	dptr,#___str_6
      000496 75 F0 80         [24] 1542 	mov	b,#0x80
      000499 12 01 58         [24] 1543 	lcall	_SendString
                                   1544 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:437: SendNumber(P1_3);
      00049C A2 93            [12] 1545 	mov	c,_P1_3
      00049E E4               [12] 1546 	clr	a
      00049F 33               [12] 1547 	rlc	a
      0004A0 F5 82            [12] 1548 	mov	dpl,a
      0004A2 12 07 E2         [24] 1549 	lcall	___uchar2fs
      0004A5 12 01 83         [24] 1550 	lcall	_SendNumber
                                   1551 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:439: SendString("+++");
      0004A8 90 09 34         [24] 1552 	mov	dptr,#___str_7
      0004AB 75 F0 80         [24] 1553 	mov	b,#0x80
      0004AE 12 01 58         [24] 1554 	lcall	_SendString
                                   1555 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:440: delay_ms(500);
      0004B1 90 01 F4         [24] 1556 	mov	dptr,#0x01f4
      0004B4 12 02 52         [24] 1557 	lcall	_delay_ms
      0004B7 D0 04            [24] 1558 	pop	ar4
      0004B9 D0 05            [24] 1559 	pop	ar5
      0004BB D0 06            [24] 1560 	pop	ar6
      0004BD D0 07            [24] 1561 	pop	ar7
                                   1562 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:442: while(1)
      0004BF                       1563 00119$:
                                   1564 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:461: if (!button_reset)
      0004BF 20 A4 26         [24] 1565 	jb	_P2_4,00102$
                                   1566 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:463: nreset = 0;
                                   1567 ;	assignBit
      0004C2 C2 91            [12] 1568 	clr	_P1_1
                                   1569 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:464: nreload = 0;
                                   1570 ;	assignBit
      0004C4 C2 92            [12] 1571 	clr	_P1_2
                                   1572 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:467: gangtype = GetGangType();
      0004C6 12 03 B1         [24] 1573 	lcall	_GetGangType
      0004C9 AE 82            [24] 1574 	mov	r6,dpl
      0004CB AF 83            [24] 1575 	mov	r7,dph
                                   1576 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:468: Reset();
      0004CD C0 07            [24] 1577 	push	ar7
      0004CF C0 06            [24] 1578 	push	ar6
      0004D1 12 03 DE         [24] 1579 	lcall	_Reset
                                   1580 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:469: delay_ms(1000);
      0004D4 90 03 E8         [24] 1581 	mov	dptr,#0x03e8
      0004D7 12 02 52         [24] 1582 	lcall	_delay_ms
      0004DA D0 06            [24] 1583 	pop	ar6
      0004DC D0 07            [24] 1584 	pop	ar7
                                   1585 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:471: button0_state = 0;
      0004DE 7D 00            [12] 1586 	mov	r5,#0x00
                                   1587 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:472: button1_state = 0;
      0004E0 7C 00            [12] 1588 	mov	r4,#0x00
                                   1589 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:473: button2_state = 0;
                                   1590 ;	1-genFromRTrack replaced	mov	_main_button2_state_65537_70,#0x00
      0004E2 8D 69            [24] 1591 	mov	_main_button2_state_65537_70,r5
                                   1592 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:474: nreset = 1;
                                   1593 ;	assignBit
      0004E4 D2 91            [12] 1594 	setb	_P1_1
                                   1595 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:475: nreload = 1;
                                   1596 ;	assignBit
      0004E6 D2 92            [12] 1597 	setb	_P1_2
      0004E8                       1598 00102$:
                                   1599 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:479: if (!button_0 && ((gangtype == 0) || (gangtype == 2) || (gangtype == 3)) )
      0004E8 20 96 40         [24] 1600 	jb	_P1_6,00104$
      0004EB EE               [12] 1601 	mov	a,r6
      0004EC 4F               [12] 1602 	orl	a,r7
      0004ED 60 0E            [24] 1603 	jz	00103$
      0004EF BE 02 05         [24] 1604 	cjne	r6,#0x02,00170$
      0004F2 BF 00 02         [24] 1605 	cjne	r7,#0x00,00170$
      0004F5 80 06            [24] 1606 	sjmp	00103$
      0004F7                       1607 00170$:
      0004F7 BE 03 31         [24] 1608 	cjne	r6,#0x03,00104$
      0004FA BF 00 2E         [24] 1609 	cjne	r7,#0x00,00104$
      0004FD                       1610 00103$:
                                   1611 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:481: button0_state = !button0_state;
      0004FD ED               [12] 1612 	mov	a,r5
      0004FE B4 01 00         [24] 1613 	cjne	a,#0x01,00173$
      000501                       1614 00173$:
      000501 92 00            [24] 1615 	mov  _main_sloc0_1_0,c
      000503 E4               [12] 1616 	clr	a
      000504 33               [12] 1617 	rlc	a
                                   1618 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:482: button0_action(button0_state);
      000505 FD               [12] 1619 	mov	r5,a
      000506 F5 82            [12] 1620 	mov	dpl,a
      000508 C0 07            [24] 1621 	push	ar7
      00050A C0 06            [24] 1622 	push	ar6
      00050C C0 05            [24] 1623 	push	ar5
      00050E C0 04            [24] 1624 	push	ar4
      000510 12 03 11         [24] 1625 	lcall	_button0_action
      000513 D0 04            [24] 1626 	pop	ar4
      000515 D0 05            [24] 1627 	pop	ar5
                                   1628 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:483: relay0_state(button0_state);
      000517 8D 82            [24] 1629 	mov	dpl,r5
      000519 C0 05            [24] 1630 	push	ar5
      00051B C0 04            [24] 1631 	push	ar4
      00051D 12 03 3F         [24] 1632 	lcall	_relay0_state
                                   1633 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:484: TouchDelay();
      000520 12 02 39         [24] 1634 	lcall	_TouchDelay
      000523 D0 04            [24] 1635 	pop	ar4
      000525 D0 05            [24] 1636 	pop	ar5
      000527 D0 06            [24] 1637 	pop	ar6
      000529 D0 07            [24] 1638 	pop	ar7
      00052B                       1639 00104$:
                                   1640 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:488: if (!button_1 && ((gangtype == 0) || (gangtype == 1) || (gangtype == 3)) )
      00052B 20 95 3C         [24] 1641 	jb	_P1_5,00109$
      00052E EE               [12] 1642 	mov	a,r6
      00052F 4F               [12] 1643 	orl	a,r7
      000530 60 0E            [24] 1644 	jz	00108$
      000532 BE 01 05         [24] 1645 	cjne	r6,#0x01,00176$
      000535 BF 00 02         [24] 1646 	cjne	r7,#0x00,00176$
      000538 80 06            [24] 1647 	sjmp	00108$
      00053A                       1648 00176$:
      00053A BE 03 2D         [24] 1649 	cjne	r6,#0x03,00109$
      00053D BF 00 2A         [24] 1650 	cjne	r7,#0x00,00109$
      000540                       1651 00108$:
                                   1652 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:490: button1_state = !button1_state;
      000540 EC               [12] 1653 	mov	a,r4
      000541 B4 01 00         [24] 1654 	cjne	a,#0x01,00179$
      000544                       1655 00179$:
      000544 92 00            [24] 1656 	mov  _main_sloc0_1_0,c
      000546 E4               [12] 1657 	clr	a
      000547 33               [12] 1658 	rlc	a
                                   1659 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:491: button1_action(button1_state);
      000548 FC               [12] 1660 	mov	r4,a
      000549 F5 82            [12] 1661 	mov	dpl,a
      00054B C0 07            [24] 1662 	push	ar7
      00054D C0 06            [24] 1663 	push	ar6
      00054F C0 05            [24] 1664 	push	ar5
      000551 C0 04            [24] 1665 	push	ar4
      000553 12 03 1F         [24] 1666 	lcall	_button1_action
      000556 D0 04            [24] 1667 	pop	ar4
                                   1668 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:492: relay1_state(button1_state);	
      000558 8C 82            [24] 1669 	mov	dpl,r4
      00055A C0 04            [24] 1670 	push	ar4
      00055C 12 03 65         [24] 1671 	lcall	_relay1_state
                                   1672 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:493: TouchDelay();
      00055F 12 02 39         [24] 1673 	lcall	_TouchDelay
      000562 D0 04            [24] 1674 	pop	ar4
      000564 D0 05            [24] 1675 	pop	ar5
      000566 D0 06            [24] 1676 	pop	ar6
      000568 D0 07            [24] 1677 	pop	ar7
      00056A                       1678 00109$:
                                   1679 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:496: if (!button_2 && ((gangtype == 0) || (gangtype == 2) || (gangtype == 3)) )
      00056A 30 97 03         [24] 1680 	jnb	_P1_7,00180$
      00056D 02 04 BF         [24] 1681 	ljmp	00119$
      000570                       1682 00180$:
      000570 EE               [12] 1683 	mov	a,r6
      000571 4F               [12] 1684 	orl	a,r7
      000572 60 13            [24] 1685 	jz	00113$
      000574 BE 02 05         [24] 1686 	cjne	r6,#0x02,00182$
      000577 BF 00 02         [24] 1687 	cjne	r7,#0x00,00182$
      00057A 80 0B            [24] 1688 	sjmp	00113$
      00057C                       1689 00182$:
      00057C BE 03 05         [24] 1690 	cjne	r6,#0x03,00183$
      00057F BF 00 02         [24] 1691 	cjne	r7,#0x00,00183$
      000582 80 03            [24] 1692 	sjmp	00184$
      000584                       1693 00183$:
      000584 02 04 BF         [24] 1694 	ljmp	00119$
      000587                       1695 00184$:
      000587                       1696 00113$:
                                   1697 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:498: button2_state = !button2_state;
      000587 E5 69            [12] 1698 	mov	a,_main_button2_state_65537_70
      000589 B4 01 00         [24] 1699 	cjne	a,#0x01,00185$
      00058C                       1700 00185$:
      00058C 92 00            [24] 1701 	mov  _main_sloc0_1_0,c
      00058E E4               [12] 1702 	clr	a
      00058F 33               [12] 1703 	rlc	a
      000590 F5 69            [12] 1704 	mov	_main_button2_state_65537_70,a
                                   1705 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:499: button2_action(button2_state);
      000592 85 69 82         [24] 1706 	mov	dpl,_main_button2_state_65537_70
      000595 C0 07            [24] 1707 	push	ar7
      000597 C0 06            [24] 1708 	push	ar6
      000599 C0 05            [24] 1709 	push	ar5
      00059B C0 04            [24] 1710 	push	ar4
      00059D 12 03 2D         [24] 1711 	lcall	_button2_action
                                   1712 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:500: relay2_state(button2_state);
      0005A0 85 69 82         [24] 1713 	mov	dpl,_main_button2_state_65537_70
      0005A3 12 03 8B         [24] 1714 	lcall	_relay2_state
                                   1715 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:501: TouchDelay();
      0005A6 12 02 39         [24] 1716 	lcall	_TouchDelay
      0005A9 D0 04            [24] 1717 	pop	ar4
      0005AB D0 05            [24] 1718 	pop	ar5
      0005AD D0 06            [24] 1719 	pop	ar6
      0005AF D0 07            [24] 1720 	pop	ar7
                                   1721 ;	C:\Users\Royc\OneDrive\Projects\lanbonl6\Dev\Release\LanbonL6_customfirmware.c:516: }	  
      0005B1 02 04 BF         [24] 1722 	ljmp	00119$
                                   1723 	.area CSEG    (CODE)
                                   1724 	.area CONST   (CODE)
                                   1725 	.area CONST   (CODE)
      0008E1                       1726 ___str_0:
      0008E1 52 65 6C 61 79 20 30  1727 	.ascii "Relay 0: "
             3A 20
      0008EA 00                    1728 	.db 0x00
                                   1729 	.area CSEG    (CODE)
                                   1730 	.area CONST   (CODE)
      0008EB                       1731 ___str_1:
      0008EB 52 65 6C 61 79 20 31  1732 	.ascii "Relay 1: "
             3A 20
      0008F4 00                    1733 	.db 0x00
                                   1734 	.area CSEG    (CODE)
                                   1735 	.area CONST   (CODE)
      0008F5                       1736 ___str_2:
      0008F5 52 65 6C 61 79 20 32  1737 	.ascii "Relay 2: "
             3A 20
      0008FE 00                    1738 	.db 0x00
                                   1739 	.area CSEG    (CODE)
                                   1740 	.area CONST   (CODE)
      0008FF                       1741 ___str_3:
      0008FF 53 54 43 31 35 57 34  1742 	.ascii "STC15W408AS"
             30 38 41 53
      00090A 0D                    1743 	.db 0x0d
      00090B 0A                    1744 	.db 0x0a
      00090C 00                    1745 	.db 0x00
                                   1746 	.area CSEG    (CODE)
                                   1747 	.area CONST   (CODE)
      00090D                       1748 ___str_4:
      00090D 6E 52 65 61 64 79 2D  1749 	.ascii "nReady-P1_1:"
             50 31 5F 31 3A
      000919 00                    1750 	.db 0x00
                                   1751 	.area CSEG    (CODE)
                                   1752 	.area CONST   (CODE)
      00091A                       1753 ___str_5:
      00091A 6E 52 65 6C 6F 61 64  1754 	.ascii "nReload-P1_2:"
             2D 50 31 5F 32 3A
      000927 00                    1755 	.db 0x00
                                   1756 	.area CSEG    (CODE)
                                   1757 	.area CONST   (CODE)
      000928                       1758 ___str_6:
      000928 52 65 73 65 74 2D 50  1759 	.ascii "Reset-P1_3:"
             31 5F 33 3A
      000933 00                    1760 	.db 0x00
                                   1761 	.area CSEG    (CODE)
                                   1762 	.area CONST   (CODE)
      000934                       1763 ___str_7:
      000934 2B 2B 2B              1764 	.ascii "+++"
      000937 00                    1765 	.db 0x00
                                   1766 	.area CSEG    (CODE)
                                   1767 	.area XINIT   (CODE)
                                   1768 	.area CABS    (ABS,CODE)
