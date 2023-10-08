#!/system/bin/sh

MODDIR="${0%/*}"
MODNAME="${MODDIR##*/}"
MAGISKTMP="$(magisk --path)" || MAGISKTMP=/sbin

if [ ! -e "$MAGISKTMP/.magisk/mirror/sepolicy.rules/$MODNAME/sepolicy.rule" ] && [ ! -e "$MAGISKTMP/.magisk/sepolicy.rules/$MODNAME/sepolicy.rule" ]; then
    magiskpolicy --live --apply "$MODDIR/sepolicy.rule"
fi

. "$MODDIR/copyprop.sh"

    copyprop ro.build.device ro.vendor.build.device
    copyprop ro.system.build.fingerprint ro.vendor.build.fingerprint
    copyprop ro.bootimage.build.fingerprint ro.vendor.build.fingerprint
    copyprop ro.build.fingerprint ro.vendor.build.fingerprint
    copyprop ro.system_ext.build.fingerprint ro.vendor.build.fingerprint
    copyprop ro.product.build.fingerprint ro.vendor.build.fingerprint
    copyprop ro.build.device ro.vendor.product.device
    copyprop ro.product.system.device ro.vendor.product.device
    copyprop ro.product.system_ext.device ro.vendor.product.device
    copyprop ro.product.product.device ro.vendor.product.device
    copyprop ro.product.system_ext.device ro.product.vendor.device
    copyprop ro.product.product.device ro.product.vendor.device
    copyprop ro.product.device ro.vendor.product.device
    copyprop ro.product.system.device ro.product.vendor.device
    copyprop ro.product.device ro.product.vendor.device
    copyprop ro.product.system.name ro.vendor.product.name
    copyprop ro.product.name ro.vendor.product.name
    copyprop ro.product.system.name ro.product.vendor.name
    copyprop ro.product.name ro.product.vendor.name
    copyprop ro.product.system_ext.name ro.vendor.product.name
    copyprop ro.product.product.name ro.vendor.product.name
    copyprop ro.product.system_ext.name ro.product.vendor.name
    copyprop ro.product.product.name ro.product.vendor.name
    copyprop ro.system.product.brand ro.vendor.product.brand
    copyprop ro.product.brand ro.vendor.product.brand
    copyprop ro.product.system.brand ro.vendor.product.brand
    copyprop ro.product.system_ext.brand ro.vendor.product.brand
    copyprop ro.product.product.brand ro.product.vendor.brand
    copyprop ro.system.product.brand ro.product.vendor.brand
    copyprop ro.product.brand ro.product.vendor.brand
    copyprop ro.product.system.brand ro.product.vendor.brand
    copyprop ro.product.system_ext.brand ro.product.vendor.brand
    copyprop ro.product.product.brand ro.product.vendor.brand
    copyprop ro.product.system.model ro.vendor.product.model
    copyprop ro.product.model ro.vendor.product.model
    copyprop ro.product.system_ext.model ro.vendor.product.model
    copyprop ro.product.product.model ro.vendor.product.model
    copyprop ro.product.system.model ro.product.vendor.model
    copyprop ro.product.model ro.product.vendor.model
    copyprop ro.build.product ro.vendor.product.model
    copyprop ro.build.product ro.product.vendor.model
    copyprop ro.product.system_ext.model ro.product.vendor.model
    copyprop ro.product.product.model ro.product.vendor.model
    copyprop ro.system.product.manufacturer ro.vendor.product.manufacturer
    copyprop ro.product.manufacturer ro.vendor.product.manufacturer
    copyprop ro.product.system.manufacturer ro.vendor.product.manufacturer
    copyprop ro.product.product.manufacturer ro.vendor.product.manufacturer
    copyprop ro.product.system_ext.manufacturer ro.vendor.product.manufacturer
    copyprop ro.system.product.manufacturer ro.product.vendor.manufacturer
    copyprop ro.product.manufacturer ro.product.vendor.manufacturer
    copyprop ro.product.system.manufacturer ro.product.vendor.manufacturer
    copyprop ro.product.product.manufacturer ro.product.vendor.manufacturer
    copyprop ro.product.system_ext.manufacturer ro.product.vendor.manufacturer

