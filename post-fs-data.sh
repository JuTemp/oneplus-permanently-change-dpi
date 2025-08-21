#!/system/bin/sh

MODDIR=${0%/*}

DENSITY=335

resetprop -n vendor.display.lcd_density "${DENSITY}"
resetprop -n persist.sys.display.user_density "${DENSITY}"
resetprop -n ro.density.screenzoom.fdh "${DENSITY},${DENSITY},${DENSITY},${DENSITY},${DENSITY}"
