<pre>
# Move to the right dir
cd /usr/src/linux
# Configure
sudo make menuconfig
# Compile: 2 core => -j3, 4 core => -j5
sudo make -j4 && sudo make modules_install
# This copies the compiled kernel image to /boot/
sudo make install
</pre>

https://wiki.gentoo.org/wiki/Kernel/Configuration




