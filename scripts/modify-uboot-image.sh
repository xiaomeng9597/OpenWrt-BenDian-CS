# 复制 rk3568-6.x-uboot.img 文件到编译的工作目录
# cp -f $GITHUB_WORKSPACE/configfiles/rk3568-6.x-uboot.img rk3568-6.x-uboot.img
# mnt/workdir/openwrt/bin/targets/rockchip/armv8/


# 农商云g68 plus
gzip -d openwrt-rockchip-armv8-nsy_g68-plus-squashfs-sysupgrade.img.gz
ls

dd if=$GITHUB_WORKSPACE/configfiles/rk3568-6.x-uboot.img of=openwrt-rockchip-armv8-nsy_g68-plus-squashfs-sysupgrade.img bs=512 seek=64 conv=notrunc

gzip openwrt-rockchip-armv8-nsy_g68-plus-squashfs-sysupgrade.img


# 农商云g16 plus
gzip -d openwrt-rockchip-armv8-nsy_g16-plus-squashfs-sysupgrade.img.gz
ls

dd if=$GITHUB_WORKSPACE/configfiles/rk3568-6.x-uboot.img of=openwrt-rockchip-armv8-nsy_g16-plus-squashfs-sysupgrade.img bs=512 seek=64 conv=notrunc

gzip openwrt-rockchip-armv8-nsy_g16-plus-squashfs-sysupgrade.img


# 彼度云g18 pro
gzip -d openwrt-rockchip-armv8-bdy_g18-pro-squashfs-sysupgrade.img.gz
ls

dd if=$GITHUB_WORKSPACE/configfiles/rk3568-6.x-uboot.img of=openwrt-rockchip-armv8-bdy_g18-pro-squashfs-sysupgrade.img bs=512 seek=64 conv=notrunc

gzip openwrt-rockchip-armv8-bdy_g18-pro-squashfs-sysupgrade.img


# 本电pcdn路由器 bendian_bd-one
gzip -d openwrt-rockchip-armv8-bendian_bd-one-squashfs-sysupgrade.img.gz
ls

dd if=$GITHUB_WORKSPACE/configfiles/rk3568-6.x-uboot.img of=openwrt-rockchip-armv8-bendian_bd-one-squashfs-sysupgrade.img bs=512 seek=64 conv=notrunc

gzip openwrt-rockchip-armv8-bendian_bd-one-squashfs-sysupgrade.img


rm -f sha256sums
find * -maxdepth 1 -type f ! -path "packages/*" -exec sha256sum {} + > sha256sums

echo "修改镜像成功"

ls
