#!/bin/bash

sed -i -e '/CONFIG_MAKE_TOOLCHAIN=y/d' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_IB=y/# CONFIG_IB is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_SDK=y/# CONFIG_SDK is not set/g' configs/rockchip/01-nanopi

sed -i -e 's/CONFIG_PACKAGE_luci-app-adblock=y/# CONFIG_PACKAGE_luci-app-adblock is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-aria2=y/# CONFIG_PACKAGE_luci-app-aria2 is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-commands=y/# CONFIG_PACKAGE_luci-app-commands is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-ddns=y/# CONFIG_PACKAGE_luci-app-ddns is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-hd-idle=y/# CONFIG_PACKAGE_luci-app-hd-idle is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-minidlna=y/# CONFIG_PACKAGE_luci-app-minidlna is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-ntpc=y/# CONFIG_PACKAGE_luci-app-ntpc is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-smartdns=y/# CONFIG_PACKAGE_luci-app-smartdns is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-ttyd=y/# CONFIG_PACKAGE_luci-app-ttyd is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-upnp=y/# CONFIG_PACKAGE_luci-app-upnp is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-watchcat=y/# CONFIG_PACKAGE_luci-app-watchcat is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_ttyd=y/# CONFIG_PACKAGE_ttyd is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_smartdns=y/# CONFIG_PACKAGE_smartdns is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_hd-idle=y/# CONFIG_PACKAGE_hd-idle is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_watchcat=y/# CONFIG_PACKAGE_watchcat is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_aria2=y/# CONFIG_PACKAGE_aria2 is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_ddns-scripts=y/# CONFIG_PACKAGE_ddns-scripts is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_ddns-scripts-services=y/# CONFIG_PACKAGE_ddns-scripts-services is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_minidlna=y/# CONFIG_PACKAGE_minidlna is not set/g' configs/rockchip/01-nanopi



sed -i -e 's/CONFIG_LUCI_LANG_bg=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ca=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_cs=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_de=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_el=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_es=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_fr=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_he=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_hi=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_hu=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_it=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ja=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ko=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_mr=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ms=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_pl=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_pt=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_pt_BR=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ro=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_ru=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_sk=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_sv=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_tr=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_uk=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_vi=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_zh_Hans=y/# /g' configs/rockchip/02-luci_lang
sed -i -e 's/CONFIG_LUCI_LANG_zh_Hant=y/# /g' configs/rockchip/02-luci_lang
