
## Ubuntu
- `sudo lshw -c display` or `sudo lshw -c video`
- `sudo ubuntu-drivers devices`
  - `sudo ubuntu-drivers autoinstall` or
  - `sudo apt install <nvidia-driver-version-number>`, e.g. `sudo apt install nvidia-driver-450`

```bash
ec2-user@ip-54-147-126-214: ~$ sudo lshw -c display
  *-display UNCLAIMED
      description: VGA compatible controller
      product: GP104M [GeForce GTX 1070 Mobile]
      vendor: NVIDIA Corporation
      physical id: 0
      bus info: pci@0000:01:00.0
      version: a1
      width: 64 bits
      clock: 33MHz
      capabilities: pm msi pciexpress vga_controller bus_master cap_list
      configuration: latency=0
      resources: memory:ac000000-acffffff memory:80000000-8fffffff memory:90000000-91ffffff ioport:4000(size=128) memory:ad000000-ad07ffff
  *-display
      description: VGA compatible controller
      product: Intel Corporation
      vendor: Intel Corporation
      physical id: 2
      bus info: pci@0000:00:02.0
      version: 00
      width: 64 bits
      clock: 33MHz
      capabilities: pciexpress msi pm vga_controller bus_master cap_list rom
      configuration: driver=i915 latency=0
      resources: irq:145 memory:ab000000-abffffff memory:40000000-4fffffff ioport:5000(size=64) memory:c0000-dffff
ec2-user@ip-54-147-126-214: ~$ sudo lshw -c display | grep driver
      configuration: driver=i915 latency=0
ec2-user@ip-54-147-126-214: ~$
ec2-user@ip-54-147-126-214: ~$ sudo ubuntu-drivers devices
== /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==
modalias : pci:v000010DEd00001BA1sv00001458sd00001653bc03sc00i00
vendor   : NVIDIA Corporation
model    : GP104M [GeForce GTX 1070 Mobile]
driver   : nvidia-driver-450-server - distro non-free
driver   : nvidia-driver-418-server - distro non-free
driver   : nvidia-driver-440-server - distro non-free
driver   : nvidia-driver-390 - distro non-free
driver   : nvidia-driver-455 - third-party free recommended
driver   : nvidia-driver-415 - third-party free
driver   : xserver-xorg-video-nouveau - distro free builtin

== /sys/devices/pci0000:00/0000:00:1b.3/0000:03:00.0 ==
modalias : pci:v00008086d000024FDsv00008086sd00001010bc02sc80i00
vendor   : Intel Corporation
model    : Wireless 8265 / 8275
manual_install: True
driver   : backport-iwlwifi-dkms - distro free

ec2-user@ip-54-147-126-214: ~$
```




