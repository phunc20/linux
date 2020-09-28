## How to find info on GPU or at least on graphics card?
- <code>lspci | grep -i vga</code>
- <code>lspci -k | grep -A 2 -E "(VGA|3D)"</code>
```
lspci | grep -i vga
00:02.0 VGA compatible controller: Intel Corporation UHD Graphics 630 (Desktop)
01:00.0 VGA compatible controller: NVIDIA Corporation GP107 [GeForce GTX 1050] (rev a1)

lspci -k | grep -A 2 -E "(VGA|3D)"
00:02.0 VGA compatible controller: Intel Corporation UHD Graphics 630 (Desktop)
	DeviceName: Onboard - Video
	Subsystem: Dell UHD Graphics 630 (Desktop)
--
01:00.0 VGA compatible controller: NVIDIA Corporation GP107 [GeForce GTX 1050] (rev a1)
	Subsystem: Dell GP107 [GeForce GTX 1050]
	Kernel driver in use: nouveau
```




```
 ERROR: You appear to be running an X server; please exit X before installing.  For further details, please see the section INSTALLING THE
         NVIDIA DRIVER in the README available on the Linux driver download page at www.nvidia.com.
```
