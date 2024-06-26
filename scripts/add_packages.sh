#!/bin/bash

# {{ Add luci-app-diskman
(cd friendlywrt && {
    mkdir -p package/luci-app-diskman
    wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/applications/luci-app-diskman/Makefile -O package/luci-app-diskman/Makefile
    mkdir -p package/parted
    wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O package/parted/Makefile
})
cat >> configs/rockchip/01-nanopi <<EOL
CONFIG_PACKAGE_luci-app-diskman=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_btrfs_progs=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_lsblk=y
CONFIG_PACKAGE_smartmontools=y
EOL
# }}

# {{ Add luci-theme-argon
(cd friendlywrt/package && {
    [ -d luci-theme-argon ] && rm -rf luci-theme-argon
    git clone https://github.com/jerrykuku/luci-theme-argon.git --depth 1 -b master
})
echo "CONFIG_PACKAGE_luci-theme-argon=y" >> configs/rockchip/01-nanopi
sed -i -e 's/function init_theme/function old_init_theme/g' friendlywrt/target/linux/rockchip/armv8/base-files/root/setup.sh
cat > /tmp/appendtext.txt <<EOL
function init_theme() {
    if uci get luci.themes.Argon >/dev/null 2>&1; then
        uci set luci.main.mediaurlbase="/luci-static/argon"
        uci commit luci
    fi
}
EOL
sed -i -e '/boardname=/r /tmp/appendtext.txt' friendlywrt/target/linux/rockchip/armv8/base-files/root/setup.sh
# }}

sed -i -e '/CONFIG_PACKAGE_kmod-fs-ext4=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_e2fsprogs=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_e2fsprogs=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-usb-storage=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-usb-storage-uas=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-usb-ohci=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-usb-uhci=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-usb-core=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-usb-storage-extras=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-usb-ledtrig-usbport=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-usb2=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-fs-cifs=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-fs-exfat=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-fs-f2fs=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_f2fs-tools=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_kmod-fs-ntfs=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_ntfs-3g=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_ntfs-3g-utils=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_gdisk=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_tune2fs=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_resize2fs=y/d' configs/rockchip/01-nanopi
sed -i -e '/CONFIG_PACKAGE_losetup=y/d' configs/rockchip/01-nanopi
