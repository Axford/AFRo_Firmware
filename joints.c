#include	"joints.h"

/** \file
	\brief Servo joint motion
*/

#include <math.h>
#include	"dda.h"
#include	"dda_queue.h"
#include	"gcode_parse.h"
#include <avr/interrupt.h>
#include "serial.h"
#include "sermsg.h"

#define bit(b) (1UL << (b))

AX12servo shoulder;
AX12servo elbow;
AX12servo wrist;

TARGET joint_positions;

uint8_t jointsBusy = 0;

void joints_init() {
	// init Dynamixel servos
  	AX12_init (1000000);

	shoulder.id = 3;
	shoulder.SRL = RETURN_READ;
	shoulder.inverse = 0;
	
	elbow.id = 2;
	elbow.SRL = RETURN_READ;
	elbow.inverse = 0;
	
	wrist.id = 1;
	wrist.SRL = RETURN_READ;
	wrist.inverse = 0;
	
	// set default velocity
	AX12_writeInfo (&shoulder, MOVING_SPEED, 200, 0);
	AX12_writeInfo (&elbow, MOVING_SPEED, 200, 0);
	AX12_writeInfo (&wrist, MOVING_SPEED, 200, 0);
	

	// set torque
	AX12_writeInfo (&shoulder, TORQUE_LIMIT, 500, 0);
	AX12_writeInfo (&elbow, TORQUE_LIMIT, 400, 0);
	AX12_writeInfo (&wrist, TORQUE_LIMIT, 200, 0);
	
	//set punch
	AX12_writeInfo (&shoulder, PUNCH, 60, 0);
	AX12_writeInfo (&elbow, PUNCH, 50, 0);
	AX12_writeInfo (&wrist, PUNCH, 40, 0);
	
	// set compliance margins
	AX12_writeInfo (&shoulder, CW_COMPLIANCE_MARGIN, 0, 0);
	AX12_writeInfo (&elbow, CW_COMPLIANCE_MARGIN, 0, 0);
	AX12_writeInfo (&wrist, CW_COMPLIANCE_MARGIN, 0, 0);
	
	AX12_writeInfo (&shoulder, CCW_COMPLIANCE_MARGIN, 0, 0);
	AX12_writeInfo (&elbow, CCW_COMPLIANCE_MARGIN, 0, 0);
	AX12_writeInfo (&wrist, CCW_COMPLIANCE_MARGIN, 0, 0);
	
	// set compliance slopes
	AX12_writeInfo (&shoulder, CW_COMPLIANCE_SLOPE, 64, 0);
	AX12_writeInfo (&elbow, CW_COMPLIANCE_SLOPE, 32, 0);
	AX12_writeInfo (&wrist, CW_COMPLIANCE_SLOPE, 16, 0);
	
	AX12_writeInfo (&shoulder, CCW_COMPLIANCE_SLOPE, 64, 0);
	AX12_writeInfo (&elbow, CCW_COMPLIANCE_SLOPE, 32, 0);
	AX12_writeInfo (&wrist, CCW_COMPLIANCE_SLOPE, 16, 0);
	
	
	// set initial positions
	//AX12_writeInfo (shoulder, GOAL_POSITION, 0, 0);
	//AX12_writeInfo (elbow, GOAL_POSITION, 0, 0);
	//AX12_writeInfo (wrist, GOAL_POSITION, 0, 0);
	
	/*
	// set up Timer 3	
	TCCR3A = 0;          // normal operation
	TCCR3B = bit(WGM12) | bit(CS12) | bit(CS10);   // CTC, scale / 1024
	OCR3A =  156;       // compare A register value, 156 is approx 100 Hz
	TIMSK3 = bit (OCIE3A);             // interrupt on Compare A Match, enable
	*/
	
}


void update_joint_positions(void) {
	DDA *dda = &movebuffer[mb_tail];

	if (queue_empty()) {
		joint_positions.axis[X] = startpoint.axis[X];
		joint_positions.axis[Y] = startpoint.axis[Y];
	}
	else if (dda->live) {
		if (dda->x_direction)
			// (STEPS_PER_M_X / 1000) is a bit inaccurate for low STEPS_PER_M numbers
			joint_positions.axis[X] = dda->endpoint.axis[X] -
			                     // should be: move_state.x_steps * 1000000 / STEPS_PER_M_X)
			                     // but x_steps can be like 1000000 already, so we'd overflow
			                     move_state.steps[X] * 1000 / ((STEPS_PER_M_X + 500) / 1000);
		else
			joint_positions.axis[X] = dda->endpoint.axis[X] +
			                     move_state.steps[X] * 1000 / ((STEPS_PER_M_X + 500) / 1000);

		if (dda->y_direction)
			joint_positions.axis[Y] = dda->endpoint.axis[Y] -
			                     move_state.steps[Y] * 1000 / ((STEPS_PER_M_Y + 500) / 1000);
		else
			joint_positions.axis[Y] = dda->endpoint.axis[Y] +
			                     move_state.steps[Y] * 1000 / ((STEPS_PER_M_Y + 500) / 1000);
	}
}

void update_joint_servos(void) {
 if (jointsBusy > 0) return;
 
 jointsBusy = 1;
 
 update_joint_positions();

 int32_t shoulderPos = joint_positions.axis[X];
 
 shoulderPos = shoulderPos / 100;
 
 if (shoulderPos < 0) shoulderPos = 0;
 if (shoulderPos > 1023) shoulderPos = 1023;

 AX12_writeInfo (&shoulder, GOAL_POSITION, shoulderPos, 0);
 
 int32_t elbowPos = joint_positions.axis[Y];
 
 elbowPos = elbowPos / 100;
 
 if (elbowPos < 0) elbowPos = 0;
 if (elbowPos > 1023) elbowPos = 1023;

 AX12_writeInfo (&elbow, GOAL_POSITION, elbowPos, 0);
 
 jointsBusy = 0;
}
