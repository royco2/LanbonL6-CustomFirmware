/*-------------------------------------------------------------------------
   8051.h: Register Declarations for the Intel 8051 Processor
   Copyright (C) 2000, Bela Torok / bela.torok@kssg.ch
   This library is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2, or (at your option) any
   later version.
   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.
   You should have received a copy of the GNU General Public License 
   along with this library; see the file COPYING. If not, write to the
   Free Software Foundation, 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.
   As a special exception, if you link this library with other files,
   some of which are compiled with SDCC, to produce an executable,
   this library does not by itself cause the resulting executable to
   be covered by the GNU General Public License. This exception does
   not however invalidate any other reasons why the executable file
   might be covered by the GNU General Public License.
-------------------------------------------------------------------------*/

#ifndef __STC15W408S_H_
#define __STC15W408S_H_




/*  BYTE Register  */
__sfr __at (0x80) P0   ;
__sfr __at (0x81) SP   ;
__sfr __at (0x82) DPL  ;
__sfr __at (0x83) DPH  ;
__sfr __at (0x87) PCON ;
__sfr __at (0x88) TCON ;
__sfr __at (0x89) TMOD ;
__sfr __at (0x8A) TL0  ;
__sfr __at (0x8B) TL1  ;
__sfr __at (0x8C) TH0  ;
__sfr __at (0x8D) TH1  ;
__sfr __at (0x90) P1   ;
__sfr __at (0x98) SCON ;
__sfr __at (0x99) SBUF ;
__sfr __at (0xA0) P2   ;
__sfr __at (0xA8) IE   ;
__sfr __at (0xB0) P3   ;
__sfr __at (0xB8) IP   ;
__sfr __at (0xD0) PSW  ;
__sfr __at (0xE0) ACC  ;
__sfr __at (0xF0) B    ;


/*  BIT Register  */
/* P0 */
__sbit __at (0x80) P0_0 ;
__sbit __at (0x81) P0_1 ;
__sbit __at (0x82) P0_2 ;
__sbit __at (0x83) P0_3 ;
__sbit __at (0x84) P0_4 ;
__sbit __at (0x85) P0_5 ;
__sbit __at (0x86) P0_6 ;
__sbit __at (0x87) P0_7 ;

/*  TCON  */
__sbit __at (0x88) IT0  ;
__sbit __at (0x89) IE0  ;
__sbit __at (0x8A) IT1  ;
__sbit __at (0x8B) IE1  ;
__sbit __at (0x8C) TR0  ;
__sbit __at (0x8D) TF0  ;
__sbit __at (0x8E) TR1  ;
__sbit __at (0x8F) TF1  ;

/* P1 */
__sbit __at (0x90) P1_0 ;
__sbit __at (0x91) P1_1 ;
__sbit __at (0x92) P1_2 ;
__sbit __at (0x93) P1_3 ;
__sbit __at (0x94) P1_4 ;
__sbit __at (0x95) P1_5 ;
__sbit __at (0x96) P1_6 ;
__sbit __at (0x97) P1_7 ;

/*  SCON  */
__sbit __at (0x98) RI   ;
__sbit __at (0x99) TI   ;
__sbit __at (0x9A) RB8  ;
__sbit __at (0x9B) TB8  ;
__sbit __at (0x9C) REN  ;
__sbit __at (0x9D) SM2  ;
__sbit __at (0x9E) SM1  ;
__sbit __at (0x9F) SM0  ;

/* P2 */
__sbit __at (0xA0) P2_0 ;
__sbit __at (0xA1) P2_1 ;
__sbit __at (0xA2) P2_2 ;
__sbit __at (0xA3) P2_3 ;
__sbit __at (0xA4) P2_4 ;
__sbit __at (0xA5) P2_5 ;
__sbit __at (0xA6) P2_6 ;
__sbit __at (0xA7) P2_7 ;

/*  IE   */
__sbit __at (0xA8) EX0  ;
__sbit __at (0xA9) ET0  ;
__sbit __at (0xAA) EX1  ;
__sbit __at (0xAB) ET1  ;
__sbit __at (0xAC) ES   ;
__sbit __at (0xAF) EA   ;

/*  P3  */
__sbit __at (0xB0) P3_0 ;
__sbit __at (0xB1) P3_1 ;
__sbit __at (0xB2) P3_2 ;
__sbit __at (0xB3) P3_3 ;
__sbit __at (0xB4) P3_4 ;
__sbit __at (0xB5) P3_5 ;
__sbit __at (0xB6) P3_6 ;
__sbit __at (0xB7) P3_7 ;

__sbit __at (0xB0) RXD  ;
__sbit __at (0xB1) TXD  ;
__sbit __at (0xB2) INT0 ;
__sbit __at (0xB3) INT1 ;
__sbit __at (0xB4) T0   ;
__sbit __at (0xB5) T1   ;
__sbit __at (0xB6) WR   ;
__sbit __at (0xB7) RD   ;


/*  P5  */
__sbit __at (0xC8) P5_0;
__sbit __at (0xC9) P5_1;
__sbit __at (0xCA) P5_2;
__sbit __at (0xCB) P5_3;
__sbit __at (0xCC) P5_4;
__sbit __at (0xCD) P5_5;
__sbit __at (0xCE) P5_6;
__sbit __at (0xCF) P5_7;

/*  IP   */
__sbit __at (0xB8) PX0  ;
__sbit __at (0xB9) PT0  ;
__sbit __at (0xBA) PX1  ;
__sbit __at (0xBB) PT1  ;
__sbit __at (0xBC) PS   ;

/*  PSW   */
__sbit __at (0xD0) P    ;
__sbit __at (0xD1) F1   ;
__sbit __at (0xD2) OV   ;
__sbit __at (0xD3) RS0  ;
__sbit __at (0xD4) RS1  ;
__sbit __at (0xD5) F0   ;
//__sbit __at (0xD6) AC   ;
//__sbit __at (0xD7) CY   ;
__sfr __at (0xD6) T2H;
__sfr __at (0xD7) T2L;

__sfr __at (0x94) P0M0;   //0000,0000 Port 0 mode register0
__sfr __at (0x93) P0M1;   //0000,0000 ????????0????????????????????1
__sfr __at (0x92) P1M0 ;   //0000,0000 ????????1????????????????????0
__sfr __at (0x91) P1M1 ;   //0000,0000 ????????1????????????????????1
__sfr __at (0x96) P2M0 ;   //0000,0000 ????????2????????????????????0
__sfr __at (0x95) P2M1;   //0000,0000 ????????2????????????????????1
__sfr __at (0xB2) P3M0;   //0000,0000 ????????3????????????????????0
__sfr __at (0xB1) P3M1;   //0000,0000 ????????3????????????????????1
__sfr __at (0xB4) P4M0;   //0000,0000 //P4M1.n,P4M0.n 	=00--->Standard,	01--->push-pull
__sfr __at (0xB3) P4M1;   //0000,0000 //					=10--->pure input,	11--->open drain
__sfr __at (0xCA) P5M0 ;   //0000,0000 ????????5????????????????????0
__sfr __at (0xC9) P5M1 ;   //0000,0000 ????????5????????????????????1
__sfr __at (0xCC) P6M0 ;   //0000,0000 ????????6????????????????????0
__sfr __at (0xCB) P6M1;   //0000,0000 ????????6????????????????????1
__sfr __at (0xE2) P7M0;   //0000,0000 ????????7????????????????????0
__sfr __at (0xE1) P7M1;   //0000,0000 ????????7????????????????????1


//IAP/ISP ?????????????????????
__sfr __at (0xC2) IAP_DATA;		//0000,0000 EEPROM???????????????
__sfr __at (0xC3) IAP_ADDRH;	//0000,0000 EEPROM???????????????
__sfr __at (0xC4) IAP_ADDRL;	//0000,0000 EEPROM???????????????
__sfr __at (0xC5) IAP_CMD;		//xxxx,xx00 EEPROM???????????????
__sfr __at (0xC6) IAP_TRIG;		//0000,0000 EEPRPM?????????????????????
__sfr __at (0xC7) IAP_CONTR;	//0000,x000 EEPROM???????????????

//auxregister
__sfr __at (0x8E) AUXR;	//not bit addressable
__sfr __at (0xA2) AUXR1;
__sfr __at (0xA2) P_SW1;



/* BIT definitions for bits that are not directly accessible */
/* PCON bits */
#define IDL             0x01
#define PD              0x02
#define GF0             0x04
#define GF1             0x08
#define SMOD            0x80

/* TMOD bits */
#define T0_M0           0x01
#define T0_M1           0x02
#define T0_CT           0x04
#define T0_GATE         0x08
#define T1_M0           0x10
#define T1_M1           0x20
#define T1_CT           0x40
#define T1_GATE         0x80

#define T0_MASK         0x0F
#define T1_MASK         0xF0

/* Interrupt numbers: address = (number * 8) + 3 */
#define IE0_VECTOR      0       /* 0x03 external interrupt 0 */
#define TF0_VECTOR      1       /* 0x0b timer 0 */
#define IE1_VECTOR      2       /* 0x13 external interrupt 1 */
#define TF1_VECTOR      3       /* 0x1b timer 1 */
#define SI0_VECTOR      4       /* 0x23 serial port 0 */

/*   interrupt vector */
#define		INT0_VECTOR		0
#define		TIMER0_VECTOR	1
#define		INT1_VECTOR		2
#define		TIMER1_VECTOR	3
#define		UART1_VECTOR	4
#define		ADC_VECTOR		5
#define		LVD_VECTOR		6
#define		PCA_VECTOR		7
#define		UART2_VECTOR	8
#define		SPI_VECTOR		9
#define		INT2_VECTOR		10
#define		INT3_VECTOR		11
#define		TIMER2_VECTOR	12
#define		INT4_VECTOR		16
#define		UART3_VECTOR	17
#define		UART4_VECTOR	18
#define		TIMER3_VECTOR	19
#define		TIMER4_VECTOR	20
#define		CMP_VECTOR		21



#define		S1_USE_P30P31()		P_SW1 &= ~0xc0					//UART1 ??????P30 P31???	??????
#define 	Timer2_Run()	 			AUXR |=  (1<<4)	//???????????????2??????
#define 	Timer2_Stop()	 			AUXR &= ~(1<<4)	//???????????????2??????
#define		Timer2_AsCounterP31()		AUXR |=  (1<<3)	//??????2???????????????
#define		Timer2_AsTimer()			AUXR &= ~(1<<3)	//??????2???????????????
#define 	Timer2_1T()					AUXR |=  (1<<2)	//Timer2 clodk = fosc
#define 	Timer2_12T()				AUXR &= ~(1<<2)	//Timer2 clodk = fosc/12	12??????,	default
#define 	Timer2_InterruptEnable()	IE2  |=  (1<<2)	//??????Timer2??????.
#define 	Timer2_InterruptDisable()	IE2  &= ~(1<<2)	//??????Timer2??????.
#define 	S1_BRT_UseTimer2()	AUXR |=  1


/**********************************************/

#define P0n_standard(bitn)			P0M1 &= ~(bitn),	P0M0 &= ~(bitn)	//00
#define P0n_push_pull(bitn)			P0M1 &= ~(bitn),	P0M0 |=  (bitn)	//01
#define P0n_pure_input(bitn)		P0M1 |=  (bitn),	P0M0 &= ~(bitn)	//10
#define P0n_open_drain(bitn)		P0M1 |=  (bitn),	P0M0 |=  (bitn)	//11

#define P1n_standard(bitn)			P1M1 &= ~(bitn),	P1M0 &= ~(bitn)
#define P1n_push_pull(bitn)			P1M1 &= ~(bitn),	P1M0 |=  (bitn)
#define P1n_pure_input(bitn)		P1M1 |=  (bitn),	P1M0 &= ~(bitn)
#define P1n_open_drain(bitn)		P1M1 |=  (bitn),	P1M0 |=  (bitn)

#define P2n_standard(bitn)			P2M1 &= ~(bitn),	P2M0 &= ~(bitn)
#define P2n_push_pull(bitn)			P2M1 &= ~(bitn),	P2M0 |=  (bitn)
#define P2n_pure_input(bitn)		P2M1 |=  (bitn),	P2M0 &= ~(bitn)
#define P2n_open_drain(bitn)		P2M1 |=  (bitn),	P2M0 |=  (bitn)

#define P3n_standard(bitn)			P3M1 &= ~(bitn),	P3M0 &= ~(bitn)
#define P3n_push_pull(bitn)			P3M1 &= ~(bitn),	P3M0 |=  (bitn)
#define P3n_pure_input(bitn)		P3M1 |=  (bitn),	P3M0 &= ~(bitn)
#define P3n_open_drain(bitn)		P3M1 |=  (bitn),	P3M0 |=  (bitn)

#define P4n_standard(bitn)			P4M1 &= ~(bitn),	P4M0 &= ~(bitn)
#define P4n_push_pull(bitn)			P4M1 &= ~(bitn),	P4M0 |=  (bitn)
#define P4n_pure_input(bitn)		P4M1 |=  (bitn),	P4M0 &= ~(bitn)
#define P4n_open_drain(bitn)		P4M1 |=  (bitn),	P4M0 |=  (bitn)

#define P5n_standard(bitn)			P5M1 &= ~(bitn),	P5M0 &= ~(bitn)
#define P5n_push_pull(bitn)			P5M1 &= ~(bitn),	P5M0 |=  (bitn)
#define P5n_pure_input(bitn)		P5M1 |=  (bitn),	P5M0 &= ~(bitn)
#define P5n_open_drain(bitn)		P5M1 |=  (bitn),	P5M0 |=  (bitn)

#define P6n_standard(bitn)			P6M1 &= ~(bitn),	P6M0 &= ~(bitn)
#define P6n_push_pull(bitn)			P6M1 &= ~(bitn),	P6M0 |=  (bitn)
#define P6n_pure_input(bitn)		P6M1 |=  (bitn),	P6M0 &= ~(bitn)
#define P6n_open_drain(bitn)		P6M1 |=  (bitn),	P6M0 |=  (bitn)

#define P7n_standard(bitn)			P7M1 &= ~(bitn),	P7M0 &= ~(bitn)
#define P7n_push_pull(bitn)			P7M1 &= ~(bitn),	P7M0 |=  (bitn)
#define P7n_pure_input(bitn)		P7M1 |=  (bitn),	P7M0 &= ~(bitn)
#define P7n_open_drain(bitn)		P7M1 |=  (bitn),	P7M0 |=  (bitn)


/****************************************************************/

#endif