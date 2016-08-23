/*
 * Author: Ruthberg
 * Handles incoming data packets from the Vectronix Vector LRF
 *
 * Arguments:
 * 0: Slope distance (Meters) <NUMBER>
 * 1: Azimuth (Degrees) <NUMBER>
 * 2: Inclination (Degrees) <NUMBER>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [1000, 45, 1] call ace_microdagr_fnc_recieveRangefinderData
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_slopeDistance", "_azimuth", "_inclination"];

GVAR(inclinationAngle) set [GVAR(currentTarget), round(_inclination)];
GVAR(directionOfFire) set [GVAR(currentTarget), round(_azimuth)];
GVAR(targetRange) set [GVAR(currentTarget), round(_slopeDistance)];