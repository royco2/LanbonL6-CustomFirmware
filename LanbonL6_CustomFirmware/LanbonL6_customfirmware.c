
#include "stc15w.h"	
#include <stdio.h>


#define button_0 P1_6
#define button_1 P1_5
#define button_2 P1_7

#define button_reset P2_4
#define SC04A_enable P2_6 = 0 //enable on low
#define SC04A_disable P2_6 = 1

#define led0r P1_0
#define led0g P2_2	
#define led0b P2_5
#define led1r P1_4
#define led1g P2_1
#define led1b P2_3
#define led2r P3_7   
#define led2g P2_0
#define led2b P3_6

#define relay0 P3_3 // pin K1 - first relay - closest to live. Shorted with RXD will test on separate unit
#define relay2 P3_4 // pin K3 - last relay - doesnt exist on 2 gang - furtherest away from live and neutral
#define relay1 P3_5 // pin K2 - second relay 

//dip switches
#define B1 P0_0 //dip sw 6
#define B0 P0_1 //dip sw 5
// B0=0, B1=0 - curtain switch
// B0=1, B1=0 - 1 gang switch
// B0=0, B1=1 - 2 gang switch
// B0=1, B1=1 - 3 gang swirch

#define ledcolor P2_7 //dip sw 2
#define sparedip P0_3 //dip sw 3

//dip sw 4 is NC
//dip sw 1 is connected to Wifi (To be confirmed)

//WIFI
#define nreset P1_1
#define nready P1_3
#define nreload P1_2
//#define nlink WIFI LED...



typedef unsigned char BYTE;
typedef unsigned int WORD;

#define FOSC 11059200L //System frequency  18.432MHz
#define BAUD 115200 //UART1 baud-rate
#define	UART1_BUF_LENGTH	32
unsigned int TX1_Cnt;
unsigned int RX1_Cnt;
int RX1_Buffer[UART1_BUF_LENGTH];
unsigned char B_TX1_Busy = 0;
 
void Delay2400(){	// 1 bit time for 2400 baud at 12 MHz
	__asm
		push 0x30
		push 0x31
		mov 0x30,#4
		mov 0x31,#220
NEXT:
		djnz 0x31,NEXT
		djnz 0x30,NEXT
		pop 0x31
		pop 0x30
	__endasm;
}


void Uart1_init(void)
{
    SCON  = 0x50; //(SCON & 0x3f) | 0x40; //
    S1_USE_P30P31();
    Timer2_1T(); //The clock source of Timer 2 is SYSclk/1.
    Timer2_AsTimer(); // TMOD &= ~(1<<6) 
    S1_BRT_UseTimer2(); //Select Timer 1 as the baud-rate generator
    T2L = (65536 - (FOSC/4/BAUD)); //Set the preload value
    T2H = (65536 - (FOSC/4/BAUD))>>8; 

    EA = 1;
    ES = 1;
	B_TX1_Busy = 0;
	TX1_Cnt = 0;
	RX1_Cnt = 0;
    Timer2_Run(); // 
}

void SendData(BYTE dat)
{
    SBUF = dat;
	B_TX1_Busy = 1;
	while(!TI);
    TI = 0;
}

void ReceiveData(int i)
{
	RX1_Buffer[i] = SBUF;
	while(!RI);
	RI = 0;
}

void UART1_int (void) __interrupt UART1_VECTOR __using 1
{
	
	if(RI)
	{
		RI = 0;
		SendData(SBUF);
		if(++RX1_Cnt >= UART1_BUF_LENGTH)	RX1_Cnt = 0;	//Anti overflow
	}

	if(TI) 
	{
//		TI = 0;//causes the stc to freeze??
		B_TX1_Busy = 0;
	}
}



void SendString(char *s)
{
	 while (*s)
	 {
		 SendData(*s++);
	 }
}

void SendNumber(float num)
{
    int a,b;
    a = (int)num;
    b = (int)((num-a)*10);
    SendData((unsigned char)(a+48));
    SendData('.');
    SendData((unsigned char)(b+48));
    SendData('\r');
	SendData('\n');
}

void Delay()
{
	unsigned int delayCtr;
	for(delayCtr = 2400;delayCtr > 0;delayCtr--)	//wait 1 second
	{
		Delay2400();
	}
}

void TouchDelay()
{
	unsigned int delayCtr;
	for(delayCtr = 600;delayCtr > 0;delayCtr--)	//wait 250msecond
	{
		Delay2400();
	}
}

void  delay_ms(unsigned int ms)
{
     unsigned int i;
	 do{
	      i = FOSC / 13000;
		  while(--i)	;   //14T per loop
     }while(--ms);
}

void blueLEDAllOn()
{
	led0b = 0; //blue
	led1b = 0; //blue
	led2b = 0; //blue
	led0g = 1; //green off
	led1g = 1; //green off
	led2g = 1; //green off
	led0r = 1; //red off
	led1r = 1; //red off
	led2r = 1; //red off	
}

void blueLEDOn(int gangtype)
{
	if (gangtype == 3 || gangtype == 0)
	{
		led0b = 0; //blue
		led0g = 1; //green off
		led0r = 1; //red off

		led1b = 0; //blue
		led1g = 1; //green off
		led1r = 1; //red off

		led2b = 0; //blue
		led2g = 1; //green off
		led2r = 1; //red off	
	}
	
	else if (gangtype == 2)
	{
		led0b = 0; //blue
		led0g = 1; //green off
		led0r = 1; //red off

		led1b = 1; //blue off
		led1g = 1; //green off
		led1r = 1; //red off

		led2b = 0; //blue
		led2g = 1; //green off
		led2r = 1; //red off			
	}

	else if (gangtype == 1)
	{
		led0b = 1; //blue
		led0g = 1; //green off
		led0r = 1; //red off

		led1b = 0; //blue off
		led1g = 1; //green off
		led1r = 1; //red off

		led2b = 1; //blue
		led2g = 1; //green off
		led2r = 1; //red off			
	}
		

}

void redLEDAllFlash()
{
	led0b = 1; //blue
	led1b = 1; //blue
	led2b = 1; //blue
	led0g = 1; //green off
	led1g = 1; //green off
	led2g = 1; //green off
	led0r = 0; //red 
	led1r = 0; //red 
	led2r = 0; //red 	
	Delay();
	led0r = 1; //red off
	led1r = 1; //red off
	led2r = 1; //red off	
	Delay();
}

void blueLEDAllFlash()
{
	led0b = 0; //blue
	led1b = 0; //blue
	led2b = 0; //blue
	led0g = 1; //green off
	led1g = 1; //green off
	led2g = 1; //green off
	led0r = 1; //red off
	led1r = 1; //red off
	led2r = 1; //red off	
	Delay();
	led0b = 1;
	led1b = 1;
	led2b = 1;
	Delay();
}

void button0_action(unsigned char button_state)
{
	if (button_state)
	{
		led0b = 1;
		led0g = 0; //green on	
	}
	else 
	{
		led0b = 0; //blue on
		led0g = 1; 
	}
		
}

void button1_action(unsigned char button_state)
{
	if (button_state)
	{	
		led1b = 1;
		led1g = 0; //green on
		
	}
	else
	{
		led1b = 0; //blue on
		led1g = 1; 
	}
}	

void button2_action(unsigned char button_state)
{
	if (button_state)
	{	
		led2b = 1;
		led2g = 0; //green on
		led2r = 1; 
	}
	else
	{
		led2b = 0; //blue on
		led2g = 1; 
		led2r = 1; 
	}
}			
			
			

unsigned char relay0_state(unsigned char button_state)
{
		if (!button_state) relay0 = 1; //closed
		else relay0 = 0; //open
		SendString("Relay 0: ");
		SendNumber(relay0);
		return relay0;
}

unsigned char relay1_state(unsigned char button_state)
{
		if (!button_state) relay1 = 1; //closed
		else relay1 = 0; //open
		SendString("Relay 1: ");
		SendNumber(relay1);
		return relay1;
}

unsigned char relay2_state(unsigned char button_state)
{
		if (!button_state) relay2 = 1; //closed
		else relay2 = 0; //open
		SendString("Relay 2: ");
		SendNumber(relay2);
		return relay2;
}			



int GetGangType()
{
	int gangtype = 0;
	
	if (B0 && B1) gangtype = 3;
	else if (!B0 && B1) gangtype = 2;
	else if (B0 && !B1) gangtype = 1;
	else gangtype = 0;
	
	return gangtype;
}


void Reset()
{
	int gangtype = 0;
	
	relay0 = 1;
	relay1 = 1;
	relay2 = 1;
	
	
	SC04A_disable;
	for (int i = 0; i<10; i++)
	{
		redLEDAllFlash();
	}
	
	SC04A_enable;
	gangtype = GetGangType();
	blueLEDOn(gangtype);
	
	
		

}



void main()
{
	int gangtype;
	
	gangtype = GetGangType();
	
	unsigned char button0_state = 0;
	unsigned char button1_state = 0;
	unsigned char button2_state = 0;

	
	int stage = 0;
	//Initialise serial
	Uart1_init();
	SendString("STC15W408AS\r\n");

	//P1M1 = 0x00;
	//P1M0 = 0x08;

	P3M1 = 0x0;
	P3M0 = 0x38; 
	
	//Set all ports high
	P0 = 0xFF;
	P1 = 0xFF;
	P2 = 0xFF;
	P3 = 0xFF;
	
	//Switch on touch capcitor reader. will need longer delay before switching on later for time to put on screen assembly to recalibrate screen.
	SC04A_enable;
	
	Delay(); //if to short after setting ports relay is open regardless of setting? Might be missing something.

	relay0 = 1;
	relay1 = 1;
	relay2 = 1;
	
	redLEDAllFlash();
	blueLEDOn(gangtype);


	P1_3 = 1;
	SendString("nReady-P1_1:");
	SendNumber(P1_1);	
	SendString("nReload-P1_2:");
	SendNumber(P1_2);	
	SendString("Reset-P1_3:");
	SendNumber(P1_3);
	
	SendString("+++");
	delay_ms(500);
	
	while(1)
    {
/*
		if((TX1_Cnt != RX1_Cnt) && (!B_TX1_Busy))	//Receive data, send idle
		{
		
			ReceiveData(TX1_Cnt);
			SBUF = RX1_Buffer[TX1_Cnt];
			SendData(RX1_Buffer[TX1_Cnt]);		//Return the received data as far as possible
			B_TX1_Busy = 1;
			if(++TX1_Cnt >= UART1_BUF_LENGTH)	TX1_Cnt = 0;
		}
		delay_ms(10);*/
		//Detect press
		
		//SendString("AT+WSSSID\r");
		//delay_ms(500);
		
		
		if (!button_reset)
		{
			nreset = 0;
			nreload = 0;
			//SendString(" ");

			gangtype = GetGangType();
			Reset();
			delay_ms(1000);
			
			button0_state = 0;
			button1_state = 0;
			button2_state = 0;
			nreset = 1;
			nreload = 1;
			
		}
		
		if (!button_0 && ((gangtype == 0) || (gangtype == 2) || (gangtype == 3)) )
		{
			button0_state = !button0_state;
			button0_action(button0_state);
			relay0_state(button0_state);
			TouchDelay();
			
			
		}
		if (!button_1 && ((gangtype == 0) || (gangtype == 1) || (gangtype == 3)) )
		{
			button1_state = !button1_state;
			button1_action(button1_state);
			relay1_state(button1_state);	
			TouchDelay();
			
		}
		if (!button_2 && ((gangtype == 0) || (gangtype == 2) || (gangtype == 3)) )
		{
			button2_state = !button2_state;
			button2_action(button2_state);
			relay2_state(button2_state);
			TouchDelay();
		}
		
				
	
	
		

		
		
		
		
	}
		

}	  