/*
  ax12.h - arbotiX Library for AX-12 Servos
  Copyright (c) 2008,2009 Michael E. Ferguson.  All right reserved.
  Modificada el 15/11/09 por Pablo Gindel.
  versión 2.0 - 10/02/10
  versión 2.1 - 27/06/10
  versión 2.2 - 19/10/10

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#ifndef _AX12_H
#define _AX12_H

#define AX12_MAX_SERVOS          18
#define AX12_BUFFER_SIZE         32

/** EEPROM AREA **/
#define MODEL_NUMBER             0
#define VERSION                  2
#define ID                       3
#define BAUD_RATE                4
#define RETURN_DELAY_TIME        5
#define CW_ANGLE_LIMIT           6
#define CCW_ANGLE_LIMIT          8
#define LIMIT_TEMPERATURE        11
#define DOWN_LIMIT_VOLTAGE       12
#define UP_LIMIT_VOLTAGE         13
#define MAX_TORQUE               14
#define STATUS_RETURN_LEVEL      16
#define ALARM_LED                17
#define ALARM_SHUTDOWN           18
#define DOWN_CALIBRATION         20
#define UP_CALIBRATION           22

/** RAM AREA **/
#define TORQUE_ENABLE            24
#define LED                      25
#define CW_COMPLIANCE_MARGIN     26
#define CCW_COMPLIANCE_MARGIN    27
#define CW_COMPLIANCE_SLOPE      28
#define CCW_COMPLIANCE_SLOPE     29
#define GOAL_POSITION            30
#define MOVING_SPEED             32
#define TORQUE_LIMIT             34
#define PRESENT_POSITION         36
#define PRESENT_SPEED            38
#define PRESENT_LOAD             40
#define PRESENT_VOLTAGE          42
#define PRESENT_TEMPERATURE      43
#define REGISTERED_INSTRUCTION   44
#define MOVING                   46
#define LOCK                     47
#define PUNCH                    48

/** Status Return Levels **/
#define RETURN_NONE              0
#define RETURN_READ              1
#define RETURN_ALL               2

/** Instruction Set **/
#define AX_PING                  1
#define READ_DATA                2
#define WRITE_DATA               3
#define REG_WRITE                4
#define ACTION                   5
#define RESET                    6
#define SYNC_WRITE               131

/** Special IDs **/
#define BROADCAST_ID             254


typedef unsigned char boolean;
typedef unsigned char byte;

typedef struct {int error; byte *data;} AX12data;
typedef struct {int error; int value;} AX12info;

typedef struct {
	byte id;
	boolean inverse;
	byte SRL;
} AX12servo;

extern volatile byte AX12_ax_rx_buffer[AX12_BUFFER_SIZE]; 
extern volatile byte AX12_ax_rx_Pointer; 


// public
void AX12_init (long baud);

int AX12_ping (AX12servo *servo);
int AX12_reset (AX12servo *servo);
AX12data AX12_readData (AX12servo *servo, byte start, byte length);
int AX12_writeData (AX12servo *servo, byte start, byte length, byte* values, boolean isReg);
int AX12_action (AX12servo *servo);
AX12info AX12_readInfo (AX12servo *servo, byte registr);
int AX12_writeInfo (AX12servo *servo, byte registr, int value, boolean isReg);

// private

void AX12_setTX (void);
void AX12_setRX (void);
void AX12_setNone (void);
byte AX12_writeByte (byte data);
void AX12_sendPacket (byte _id, byte datalength, byte instruction, byte* data);
byte AX12_readPacket (void);

AX12data AX12_returnData (AX12servo *servo, byte _srl);
void AX12_processValue (AX12servo *servo, byte registr, int* value);

/*
class AX12
{
  public:

    static void syncWrite (byte start, byte length, byte targetlength, byte* targets, byte** valuess);
    static void syncInfo (byte registr, byte targetlength, byte* targets, int* values);
    static void setMultiPosVel (byte targetlength, byte* targets, int* posvalues, int* velvalues);

    
    void setEndlessTurnMode (boolean endless);
    void endlessTurn (int velocidad);
    int presentPSL (int* PSL);
    void setSRL (byte _srl);
    void changeID (byte newID);
    int setPosVel (int pos, int vel);

};

*/

// utils

boolean sign2bin (int numero);
char bin2sign (boolean var);
int makeInt (byte *dir, byte reglength);
byte lengthRead (byte registr);
byte lengthWrite (byte registr);

/**  Macros  **/
/*
#define setPos(pos) writeInfo (GOAL_POSITION, pos)
#define regPos(pos) writeInfo (GOAL_POSITION, pos, true)
#define setVel(vel) writeInfo (MOVING_SPEED, vel)
#define setTorque(torque) writeInfo (TORQUE_LIMIT, torque)
#define setMultiPos(a, b, c) syncInfo (GOAL_POSITION, a, b, c)
#define setMultiVel(a, b, c) syncInfo (MOVING_SPEED, a, b, c)
#define setMultiTorque(a, b, c) syncInfo (TORQUE_LIMIT, a, b, c)
#define torqueOn writeInfo (TORQUE_ENABLE, 1)
#define torqueOff writeInfo (TORQUE_ENABLE, 0)
#define getPos() readInfo (PRESENT_POSITION).value
#define getSpeed() readInfo (PRESENT_SPEED).value
#define getLoad() readInfo (PRESENT_LOAD).value
*/

#endif