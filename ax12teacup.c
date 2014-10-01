/*
  ax12.cpp - arbotiX Library for AX-12 Servos
  Copyright (c) 2008,2009 Michael E. Ferguson.  All right reserved.
  Modificada el 15/11/09 por Pablo Gindel.
  versión 2.0 - 10/02/10
  versión 2.1 - 27/06/10
  versión 2.2 - 19/10/10
  versión 2.3 - 30/12/10

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

/**** ATENCION: si se cambia el orden de los #includes, sigue compilando pero no funciona! ****/

#include "ax12teacup.h"
//#include "Arduino.h"           // we need this for the serial port defines. 
#include <string.h>
#include <avr/interrupt.h>
#include "delay.h"


// Copied in from Arduino.h
#define lowByte(w) ((uint8_t) ((w) & 0xff))
#define highByte(w) ((uint8_t) ((w) >> 8))
#define bitRead(value, bit) (((value) >> (bit)) & 0x01)
#define bitSet(value, bit) ((value) |= (1UL << (bit)))
#define bitClear(value, bit) ((value) &= ~(1UL << (bit)))
#define bitWrite(value, bit, bitvalue) (bitvalue ? bitSet(value, bit) : bitClear(value, bit))

/******************************************************************************
 * Hardware Serial Level, this uses the same stuff as Serial, therefore
 *  you should not use the Arduino Serial library.
 ******************************************************************************/

/** helper functions to emulate half-duplex */
void AX12_setTX () {
#if defined (__AVR_ATmega168__) || defined (__AVR_ATmega328P__)
    bitClear(UCSR0B, RXCIE0);    // deshabilita la interrupción de recepción
    bitClear(UCSR0B, RXEN0);     // deshabilila la recepción
    bitSet(UCSR0B, TXEN0);       // habilita la trasmisión
#elif defined (__AVR_ATmega1280__) || defined (__AVR_ATmega128__) || defined (__AVR_ATmega2560__)   
    bitClear(UCSR1B, RXCIE1);    // deshabilita la interrupción de recepción
    bitClear(UCSR1B, RXEN1);     // deshabilila la recepción
    bitSet(UCSR1B, TXEN1);       // habilita la trasmisión
#elif defined (__AVR_ATmega8__)
    bitClear(UCSRB, RXCIE);    // deshabilita la interrupción de recepción
    bitClear(UCSRB, RXEN);     // deshabilila la recepción
    bitSet(UCSRB, TXEN);       // habilita la trasmisión
#endif    
}

void AX12_setRX () {
#if defined (__AVR_ATmega168__) || defined (__AVR_ATmega328P__)
    bitClear(TIMSK0, TOIE0);   // deshabilita la interrupción del timer0 (nota: esto es sólo para entornos Arduino)
    bitClear(UCSR0B, TXEN0);   // deshabilita la trasmisión
    bitSet(UCSR0B, RXEN0);     // habilita la recepción
    bitSet(UCSR0B, RXCIE0);    // habilita la interrupción de recepción
#elif defined (__AVR_ATmega1280__) || defined (__AVR_ATmega128__) || defined (__AVR_ATmega2560__)
    bitClear(TIMSK0, TOIE0);   // deshabilita la interrupción del timer0 (nota: esto es sólo para entornos Arduino)
    bitClear(UCSR1B, TXEN1);   // deshabilita la trasmisión
    bitSet(UCSR1B, RXEN1);     // habilita la recepción
    bitSet(UCSR1B, RXCIE1);    // habilita la interrupción de recepción
#elif defined (__AVR_ATmega8__)
    bitClear(TIMSK0, TOIE0); // deshabilita la interrupción del timer0 (nota: esto es sólo para entornos Arduino)
    bitClear(UCSRB, TXEN);   // deshabilita la trasmisión
    bitSet(UCSRB, RXEN);     // habilita la recepción
    bitSet(UCSRB, RXCIE);    // habilita la interrupción de recepción 
#endif    
    AX12_ax_rx_Pointer = 0;         // resetea el puntero del buffer
}

void AX12_setNone () {
#if defined (__AVR_ATmega168__) || defined (__AVR_ATmega328P__)
    bitClear(UCSR0B, RXCIE0);    // deshabilita la interrupción de recepción
    bitClear(UCSR0B, RXEN0);     // deshabilila la recepción
    bitClear(UCSR0B, TXEN0);     // deshabilita la trasmisión
    bitSet(TIMSK0, TOIE0);          // rehabilita la interrupción del timer0 (nota: esto es sólo para entornos Arduino)
#elif defined (__AVR_ATmega1280__) || defined (__AVR_ATmega128__) || defined (__AVR_ATmega2560__)
    bitClear(UCSR1B, RXCIE1);    // deshabilita la interrupción de recepción
    bitClear(UCSR1B, RXEN1);     // deshabilila la recepción
    bitClear(UCSR1B, TXEN1);     // deshabilita la trasmisión
    bitSet(TIMSK0, TOIE0);          // rehabilita la interrupción del timer0 (nota: esto es sólo para entornos Arduino)
#elif defined (__AVR_ATmega8__)
    bitClear(UCSRB, RXCIE);    // deshabilita la interrupción de recepción
    bitClear(UCSRB, RXEN);     // deshabilila la recepción
    bitClear(UCSRB, TXEN);     // deshabilita la trasmisión 
    bitSet(TIMSK0, TOIE0);        // rehabilita la interrupción del timer0 (nota: esto es sólo para entornos Arduino)
#endif    
}

/** Sends a character out the serial port */
byte AX12_writeByte (byte data) {
#if defined (__AVR_ATmega168__) || defined (__AVR_ATmega328P__)
    while (bit_is_clear(UCSR0A, UDRE0));    // espera que el micro esté pronto para trasmitir
    UDR0 = data;                            // escribe el byte a trasmitir
#elif defined (__AVR_ATmega1280__) || defined (__AVR_ATmega128__) || defined (__AVR_ATmega2560__)
    while (bit_is_clear(UCSR1A, UDRE1));    // espera que el micro esté pronto para trasmitir
    UDR1 = data;                            // escribe el byte a trasmitir
#elif defined (__AVR_ATmega8__)
    while (bit_is_clear(UCSRA, UDRE));      // espera que el micro esté pronto para trasmitir
    UDR = data;                             // escribe el byte a trasmitir  
#endif     
    return data;
}

/** We have a one-way receive buffer, which is reset after each packet is receieved.
    A wrap-around buffer does not appear to be fast enough to catch all bytes at 1Mbps. */
volatile byte AX12_ax_rx_buffer[AX12_BUFFER_SIZE];
volatile byte AX12_ax_rx_Pointer;
#if defined (__AVR_ATmega168__) || defined (__AVR_ATmega328P__)
ISR (USART_RX_vect) {
    AX12_ax_rx_buffer[(AX12_ax_rx_Pointer++)] = UDR0;    // esta es la rutina de interrupción de recepción
}                                                          
#elif defined (__AVR_ATmega1280__) || defined (__AVR_ATmega128__) || defined (__AVR_ATmega2560__)
ISR (USART1_RX_vect) {
    AX12_ax_rx_buffer[(AX12_ax_rx_Pointer++)] = UDR1;    // esta es la rutina de interrupción de recepción
}                                                          // lo que hace es meter el byte recibido en el buffer
#elif defined (__AVR_ATmega8__)
SIGNAL (SIG_UART_RECV) {
    AX12_ax_rx_buffer[(AX12_ax_rx_Pointer++)] = UDR;    // esta es la rutina de interrupción de recepción
}                                                         // lo que hace es meter el byte recibido en el buffer
#endif    

/** initializes serial transmit at baud, 8-N-1 */
// nota: el AX12 internamente usa el Double Speed Operation (U2Xn=1). Ciertos baudrates no coinciden si no se usa este seteo
void AX12_init (long baud) {
    unsigned int reg = F_CPU / (baud * 8) - 1;
#if defined (__AVR_ATmega168__) || defined (__AVR_ATmega328P__)
    bitSet (UCSR0A, U2X0); 
    UBRR0H = reg >> 8;                 // setea la velocidad del USART
    UBRR0L = reg & 0xFF; 
#elif defined (__AVR_ATmega1280__) || defined (__AVR_ATmega128__) || defined (__AVR_ATmega2560__)
    bitSet (UCSR1A, U2X1); 
    UBRR1H = reg >> 8;
    UBRR1L = reg & 0xFF;               // setea la velocidad del USART
#elif defined (__AVR_ATmega8__)
    bitSet (UCSRA, U2X); 
    UBRRH = reg >> 8;
    UBRRL = reg & 0xFF;                // setea la velocidad del USART
#endif    
    AX12_ax_rx_Pointer = 0;
    // deshabilita tanto recepción como trasmisión
    AX12_setNone();
}


/******************************************************************************
 * Packet Level
 ******************************************************************************/

/** send instruction packet */
void AX12_sendPacket (byte _id, byte datalength, byte instruction, byte* data) {
    byte checksum = 0;
    AX12_setTX();
    AX12_writeByte (0xFF);
    AX12_writeByte (0xFF);
    checksum += AX12_writeByte (_id);
    checksum += AX12_writeByte (datalength + 2);
    checksum += AX12_writeByte (instruction);
    for (byte f=0; f<datalength; f++) {     // data = parámetros
      checksum += AX12_writeByte (data[f]);
    }
    // checksum =
    AX12_writeByte (~checksum);
    AX12_setRX();
}

/** read status packet
** retorna la posición en el buffer a partir de la cual se lee lo siguiente:
    posición [0] = status_id
    posición [1] = internal error (0 = OK)
    posición [2] = status_error
    posición [3,4,...] = status_data        */
byte AX12_readPacket () {
    unsigned long ulCounter;
    byte timeout, error, status_length, checksum, offset, bcount;
    // primero espera que llegue toda la data
    offset = 0; timeout = 0; bcount = 0;
    while (bcount < 13) {       // 13 es el largo máximo que puede tener un packet
        ulCounter = 0;
        while ((bcount + offset) == AX12_ax_rx_Pointer) {
            if (ulCounter++ > 1100L) {                   // was 3000
                timeout = 1;
                break;
            }
        }
        if (timeout) break;
        if ((bcount == 0) && (AX12_ax_rx_buffer[offset] != 0xff)) offset++;
        else bcount++;
    }
    AX12_setNone();
    // ahora decodifica el packet
    // corrección de cabecera
    error = 0;                                             // código interno de error
    do {
        error++;
        offset++;
        bcount--;
    } while (AX12_ax_rx_buffer[offset] == 255);
    if (error > 1) error = 0;                               // prueba de cabecera
    // offset = primer byte del mensaje (sin cabecera)
    // bcount = largo del mensaje leido (sin cabecera)
    status_length = 2 + AX12_ax_rx_buffer[offset+1];            // largo del mensaje decodificado
    if (bcount != status_length) error+=2;                 // prueba de coherencia de data
    checksum = 0;                                          // cálculo de checksum
    for (byte f=0; f<status_length; f++)
        checksum += AX12_ax_rx_buffer[offset+f];
    if (checksum != 255) error+=4;                          // prueba de checksum
    AX12_ax_rx_buffer[offset+1] = error;
    return offset;   
}


/******************************************************************************
 * Instruction Level
 ******************************************************************************/

/** ping */
int AX12_ping (AX12servo *servo) {
  AX12_sendPacket (servo->id, 0, AX_PING, 0);
  return AX12_returnData (servo, RETURN_NONE).error;
}

/** reset */
int AX12_reset (AX12servo *servo) {
  AX12_sendPacket (servo->id, 0, RESET, 0);
  return AX12_returnData (servo, RETURN_ALL).error;
}

/** action */
int AX12_action (AX12servo *servo) {
  AX12_sendPacket (servo->id, 0, ACTION, 0);
  return AX12_returnData (servo, RETURN_ALL).error;
}

/** read data */
AX12data AX12_readData (AX12servo *servo, byte start, byte length) {
  byte data [2];
  data [0] = start; data [1] = length;
  AX12_sendPacket (servo->id, 2, READ_DATA, data);
  return AX12_returnData (servo, RETURN_READ);
}

/** write data + reg write */
// seteando a "true" el parámetro adicional (isReg) se transforma en un reg write
int AX12_writeData (AX12servo *servo, byte start, byte length, byte* values, boolean isReg) {
    byte data [length+1];
    data [0] = start; 
    memcpy (&data[1], values, length);
    if (isReg) {
      AX12_sendPacket (servo->id, length+1, REG_WRITE, data);
    } else {
      AX12_sendPacket (servo->id, length+1, WRITE_DATA, data);
    }
    int error = AX12_returnData (servo, RETURN_ALL).error;
    if (start < 23) {delay_ms (5);}                   // si la operación de escritura es en la EEPROM, este delay previene el embotellamiento
                                                   // (las operaciones en la EEPROM no suelen ser real-time)
    return error;
}


/******************************************************************************
 * Register Level
 ******************************************************************************/

/** "intelligent" read data */
AX12info AX12_readInfo (AX12servo *servo, byte registr) {
    byte reglength = lengthRead (registr);
    AX12info returninfo;
    returninfo.error = -2;
    if (reglength == 0) {return returninfo;}
    AX12data returndata = AX12_readData (servo, registr, reglength);
    returninfo.error = returndata.error;
    returninfo.value = makeInt (returndata.data, reglength);    
    AX12_processValue (servo, registr, &returninfo.value);
    return returninfo;
}

/** "intelligent" write data + reg write */
// seteando a "true" el parámetro adicional se transforma en un reg write
int AX12_writeInfo (AX12servo *servo, byte registr, int value, boolean isReg) {
    byte reglength = lengthWrite (registr);
    if (reglength==0) {return -2;}
    AX12_processValue (servo, registr, &value);
    byte values [reglength];
    values [0] = lowByte(value);
    if (reglength > 1) {values[1] = highByte(value);}
    return AX12_writeData (servo, registr, reglength, values, isReg);
}



/******************************************************************************
 * Misc.
 ******************************************************************************/

boolean sign2bin (int numero) {         // numero > 0 --> true; numero <= 0 --> false
  return (numero > 0);
}

char bin2sign (boolean var) {           // var = 0 --> sign = -1; var = 1 --> sign = 1
  return 2*var - 1;
}

int makeInt (byte *dir, byte reglength) {          // transforma 2 bytes en un int (según la lógica AX12)
  if (reglength > 1) {
    return (dir[1] << 8) | dir[0];
  } else {
    return dir[0];
  }
}

byte lengthRead (byte registr) {
    byte reglength = 0;
    switch (registr) {
      case VERSION: case ID: case BAUD_RATE: case RETURN_DELAY_TIME: 
      case LIMIT_TEMPERATURE: case DOWN_LIMIT_VOLTAGE: case UP_LIMIT_VOLTAGE: 
      case STATUS_RETURN_LEVEL: case ALARM_LED: case ALARM_SHUTDOWN: case 19: case TORQUE_ENABLE: case LED: 
      case CW_COMPLIANCE_MARGIN: case CCW_COMPLIANCE_MARGIN: case CW_COMPLIANCE_SLOPE: case CCW_COMPLIANCE_SLOPE: 
      case PRESENT_VOLTAGE: case PRESENT_TEMPERATURE: case REGISTERED_INSTRUCTION: case MOVING: case LOCK: reglength = 1; break;
      case MODEL_NUMBER: case CW_ANGLE_LIMIT: case CCW_ANGLE_LIMIT: 
      case MAX_TORQUE: case DOWN_CALIBRATION: case UP_CALIBRATION: 
      case GOAL_POSITION: case MOVING_SPEED: case TORQUE_LIMIT: 
      case PRESENT_POSITION: case PRESENT_SPEED: case PRESENT_LOAD: case PUNCH: reglength = 2; break;
    }
    return reglength;
}

byte lengthWrite (byte registr) {
    byte reglength = 0;
    switch (registr) {
      case ID: case BAUD_RATE: case RETURN_DELAY_TIME: 
      case LIMIT_TEMPERATURE: case DOWN_LIMIT_VOLTAGE: case UP_LIMIT_VOLTAGE: 
      case STATUS_RETURN_LEVEL: case ALARM_LED: case ALARM_SHUTDOWN: case 19: 
      case TORQUE_ENABLE: case LED: case CW_COMPLIANCE_MARGIN: case CCW_COMPLIANCE_MARGIN: 
      case CW_COMPLIANCE_SLOPE: case CCW_COMPLIANCE_SLOPE: case REGISTERED_INSTRUCTION: case LOCK: reglength = 1; break;
      case CW_ANGLE_LIMIT: case CCW_ANGLE_LIMIT: 
      case MAX_TORQUE: case GOAL_POSITION: 
      case MOVING_SPEED: case TORQUE_LIMIT: case PUNCH: reglength = 2; break;
    }
    return reglength;
}


AX12data AX12_returnData (AX12servo *servo, byte _srl) {
  AX12data returndata;
  if (servo->SRL >= _srl) {
    byte index = AX12_readPacket ();
    byte status_id = AX12_ax_rx_buffer [index];
    byte int_error = AX12_ax_rx_buffer [index+1];
    byte status_error = AX12_ax_rx_buffer [index+2];
    returndata.error = (int_error<<7) | status_error | ((status_id != servo->id)<<10);       // genera el mensaje de error, combinación de error interno con error ax12
    returndata.data = (byte*) &(AX12_ax_rx_buffer [index+3]);
  } else {
    AX12_setNone();
    returndata.error = -1;
    returndata.data = 0;
  }
  return returndata;
}

void AX12_processValue (AX12servo *servo, byte registr, int* value) {                           // procesa el valor para la salida segun la propiedad "inverse"
  switch (registr) {
    case PRESENT_POSITION: case GOAL_POSITION:
      if (servo->inverse) {*value = 1023 - *value;}
      break;
    case PRESENT_SPEED: case PRESENT_LOAD:
      *value = ((*value)&0x03FF) * bin2sign(((*value)>0x03FF)^servo->inverse); 
      break;
  } 
}