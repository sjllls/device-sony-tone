# Check for second IMEI and set properties accordingly in case
cat /proc/cmdline | grep -E "oemandroidboot\.phoneid=[^ ,]+,[^ ,]+" && \
	setprop persist.multisim.config dsds && \
	setprop persist.radio.multisim.config dsds && \
	setprop ro.telephony.default_network 9,1 && \
	setprop ril.num_slots 2
