#!/bin/sh

echo "============================================================"
currentBundleIdentifier="$PRODUCT_BUNDLE_IDENTIFIER"
echo "currentBundleIdentifier:" "$currentBundleIdentifier"

PATH_TO_APPICON="$(find . -name AppIcon.appiconset)"
echo  "$PATH_TO_APPICON"

meijuInHouseBundleIdentifier="com.msmart.meiju.inhouse"
meijuAppleStoreBundleIdentifier="com.msmart.meiju.appstore"

if [[ "$currentBundleIdentifier" == "$meijuInHouseBundleIdentifier" ]]; then
	cp  $SRCROOT/${PATH_TO_APPICON}/inhouse/*.png "${SRCROOT}/${PATH_TO_APPICON}/"
	echo "正在Build企业版本"
elif [[ "$currentBundleIdentifier" == "$meijuAppleStoreBundleIdentifier" ]]; then
	cp  $SRCROOT/${PATH_TO_APPICON}/applestore/*.png "${SRCROOT}/${PATH_TO_APPICON}/"
	echo "正在Build企业版本"
else 
	echo "正在Build" "$currentBundleIdentifier" "版本"
fi
echo "============================================================"