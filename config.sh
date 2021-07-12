#!/system/bin/sh
# XTweak 2021
LATESTARTSERVICE=true
DEBUG=true
#
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
  set_perm_recursive $MODPATH/system/vendor/etc 0 0 0755 0755 
}
#
SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d "$TMPDIR" >&2
. "$TMPDIR"/functions.sh