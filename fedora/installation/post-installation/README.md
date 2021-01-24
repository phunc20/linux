## Right after installing Fedora
01. Add the following line to the file `/etc/dnf/dnf.conf` to allow configuration to a faster mirror: **`fastestmirror=True`**
02. **`sudo dnf update`** (and a few Nvidia GPU related issues)
  - As of 2021/01/20, the following problem exists; it might disappear or change later: Kernel `Linux-5.10.6` will be installed after `sudo dnf update`. However, on two of my machines with Fedora33 installed, the kernel version appears to be troublesome, e.g. when one has a Nvidia GPU and wants to install Nvidia driver using the command `sudo dnf install akmod-nvidia` (or `akmod-nvidia-390xx` or `akmod-nvidia-340xx`), after installation and reboot, one will find themselves welcomed with a message like `Cannot find Nvidia kernel module, falling back to nouveau`. This problem can be solved by
    - switching to a lower version kernel: On both of my two machines, I have `Linux-5.8.15` as my lower version, the one installed by the iso image.
    ```bash
    ~/git-repos/phunc20/linux ❯❯❯ ll /boot/vmlinuz-*
    -rwxr-xr-x. 1 root root 12M Oct 16 00:23 /boot/vmlinuz-5.8.15-301.fc33.x86_64
    -rwxr-xr-x. 1 root root 11M Jan 12 03:19 /boot/vmlinuz-5.10.6-200.fc33.x86_64
    -rwxr-xr-x. 1 root root 12M Jan 15 00:21 /boot/vmlinuz-0-rescue-9c142e88618aa8709c27b6c0924222d6
    ```
    - Usually, at each new boot, the screen will have an interface asking you which kernel version to use. Some machines will skip that interface; to have that interface poped out, hold down `Ctrl` when your machine's manufacturer lego comes out on the screen at boot.
    - This command **`sudo grubby --set-default /boot/vmlinuz-5.8.15-301.fc33.x86_64`**, as it stands, can set the default kernel version.
    - The command `sudo grubby --default-kernel` helps you verify which kernel version you are currently using.
    - Don't forget to install `sudo dnf install kernel-devel-5.8.15`, the developpment package corresponding to the chosen kernel version. I think the afore-mentioned Nvidia kernel module lies in this package.
03. Enable RPM Fusion Repository: I am new to Fedora. As far as I can understand, this is a bit like adding new repo in Debian-based distros, or AUR in Arch-based distros. Besides, if you have an Nvidia GPU and you want to follow along this document to have it configured, I think you need these RPM Fusion stuffs to be able to install the concerned packages.
  ```bash
  sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
  sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
  ```
07. Install packages for Nvidia driver. It seems that according to what says on the Internet, depending on your GPU model, you have to choose different packages during the installation (e.g. one of `akmod-nvidia, akmod-nvidia-340xx, akmod-nvidia-390xx`). Unfortunately, I probably couldn't provide much guidance here, because my only two machines (one `NVIDIA Corporation GP107 [GeForce GTX 1050]` and another `NVIDIA Corporation GP104M [GeForce GTX 1070 Mobile]`) both require simply `akmod-nvidia`. The following is the set of commands I ran to have a working GPU on Fedora33:
  ```bash
  sudo dnf install akmod-nvidia
  sudo dnf install xorg-x11-drv-nvidia-cuda
  ```
  - `akmod-nvidia` is Nvidia driver
  - `xorg-x11-drv-nvidia-cuda` seems to be a package which will provide you commands like `nvidia-smi`, etc.
  - cater to configure your Linux kernel version and its `kernel-devel` package version as indicated above for your GPU to function.



## Potentially Useful Packages and Their Installation
- `tex`
  - Although the command `pdflatex` exists in a fresh Fedora install, unfortunately many thins like `ams`, `font`, etc. aren't usable right out of the box. (cf. [https://fedoraproject.org/wiki/Features/TeXLive](https://fedoraproject.org/wiki/Features/TeXLive)) So, it seems that there are at least two ways to resolve this.
    01. Install little by little all the missing pieces
      - For the missing font issue, there are people suggesting `tlmgr install collection-fontsrecommended` on the Internet, but it seems that Fedora does not recommend that, since it controls its texlive install differently.
      ```bash
      ~/.../phunc20/DL/backprop ❯❯❯ man tlmgr
      ~/.../phunc20/DL/backprop ❯❯❯ tlmgr install collection-fontsrecommended
      *** WARNING ***: Performing this action will likely destroy the Fedora TeXLive install on your system.
      *** WARNING ***: This is almost NEVER what you want to do.
      *** WARNING ***: Try using dnf install/update instead.
      *** WARNING ***: If performing this action is really what you want to do, pass the "ignore-warning" option.
      *** WARNING ***: But please do not file any bugs with the OS Vendor.
      ```
        - Instead, do **`sudo dnf install texlive-collection-fontsrecommended`**
      - `! LaTeX Error: File `amsthm.sty' not found.` and `! LaTeX Error: File `mathtools.sty' not found.`
        - **`sudo dnf install texlive-mathtools texlive-amscls texlive-amsfonts texlive-amsmath texlive-amstex`**
        - The above list of packages might be more than enough; maybe deleting one of them will still work.
    02. Install a fat, bulky package that includes more than one needs, e.g. `sudo dnf install texlive-scheme-full`
