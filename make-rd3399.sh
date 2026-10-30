git clone https://github.com/rockchip-linux/rkbin.git ../rkbin
make mrproper
make CROSS_COMPILE=aarch64-linux-gnu- rd3399-rk3399_defconfig
make CROSS_COMPILE=aarch64-linux-gnu- \
BL31=../rkbin/bin/rk33/rk3399_bl31_v1.36.elf \
-j$(nproc)