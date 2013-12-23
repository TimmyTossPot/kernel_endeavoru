/*
 * Copyright (C) 2007 HTC Incorporated
 * Author: Jay Tu (jay_tu@htc.com)
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */
#ifndef _HTC_BATTERY_COMMON_H_
#define _HTC_BATTERY_COMMON_H_
/* Common battery terms are defined in this file. */


/* enum definition */

/* This order is the same as htc_power_supplies[]. No, it's not now.
 * And it's also the same as htc_cable_status_update()
 */
enum charger_type_t {
	CHARGER_BATTERY = 0,
	CHARGER_USB,
	CHARGER_AC,
	CHARGER_2A_AC,
	CHARGER_9V_AC,
	CHARGER_WIRELESS,
	CHARGER_UNKNOWN,
};

enum power_supplies_type {
	BATTERY_SUPPLY,
	USB_SUPPLY,
	AC_SUPPLY,
	WIRELESS_SUPPLY
};

enum charger_control_flag {
	STOP_CHARGER = 0,
	ENABLE_CHARGER,
	ENABLE_LIMIT_CHARGER,
	DISABLE_LIMIT_CHARGER,
	ENABLE_NO_LIMIT_CHARGER,
	DISABLE_NO_LIMIT_CHARGER,
	OVER_HEAT_CHARGER,
	COOL_CHARGER,
	TOGGLE_CHARGER,
	ENABLE_HIZ,
	END_CHARGER
};

/* interface function declaration */

int htc_battery_charger_disable(void);
int htc_battery_get_zcharge_mode(void);
int htc_battery_charger_hiz(void);

#endif
