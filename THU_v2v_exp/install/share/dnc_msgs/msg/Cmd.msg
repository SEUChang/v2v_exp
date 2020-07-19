#
#  general control cmd
#

#########################

int32 speical ## for speical used
bool enable_steering
bool enable_braking
bool enable_driving
bool enable_Estop
bool enable_gear
#########################

float32 sw_deg  # steering wheel angle
float32 sw_rad
float32 speed_ms
float32 speed_kms
float32 ax_ms2
float32 omega_rad
int32 gear_mode  # 0: N, // 1: forward , // 2 backward, // 3: stop

#########################
float32 steering
float64 speed
#########################
int32 remote_flag