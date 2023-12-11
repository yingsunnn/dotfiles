#!/usr/bin/env sh

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

case ${SOURCE} in
'com.apple.keylayout.Canadian') LABEL='Aa' ;;
'com.apple.keylayout.PinyinKeyboard') LABEL='PinYin' ;;
'com.apple.keylayout.US') LABEL='WeType' ;;
esac

sketchybar --set $NAME label="$LABEL"