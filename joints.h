#ifndef	_JOINTS_H
#define _JOINTS_H

#include "ax12teacup.h"
#include "dda.h"

extern AX12servo shoulder;
extern AX12servo elbow;
extern AX12servo wrist;

extern TARGET joint_positions;

void joints_init(void);
void update_joint_servos(void);


#endif	/* _JOINTS_H */