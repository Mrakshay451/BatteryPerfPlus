#!/system/bin/sh
# Wait for boot to finish completely
while [[ `getprop sys.boot_completed` -ne 1 ]] && [[ ! -d "/sdcard" ]]
do
       sleep 1
done

# Sleep 60s
sleep 60