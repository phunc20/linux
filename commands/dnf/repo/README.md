- `dnf repolist` allows one to see all the repos (Or the more verbose `dnf repolist -v`)
- `sudo dnf config-manager --add-repo=<url>` allows to add a new repo
  ```bash
  [phunc20@localhost ~]$ dnf repolist
  repo id                                                                      repo name
  fedora                                                                       Fedora 33 - x86_64
  fedora-cisco-openh264                                                        Fedora 33 openh264 (From Cisco) - x86_64
  fedora-modular                                                               Fedora Modular 33 - x86_64
  rpmfusion-free                                                               RPM Fusion for Fedora 33 - Free
  rpmfusion-free-updates                                                       RPM Fusion for Fedora 33 - Free - Updates
  rpmfusion-nonfree                                                            RPM Fusion for Fedora 33 - Nonfree
  rpmfusion-nonfree-updates                                                    RPM Fusion for Fedora 33 - Nonfree - Updates
  updates                                                                      Fedora 33 - x86_64 - Updates
  updates-modular                                                              Fedora Modular 33 - x86_64 - Updates
  [phunc20@localhost ~]$ sudo dnf config-manager --add-repo=https://download.docker.com/linux/fedora/docker-ce.repo
  Adding repo from: https://download.docker.com/linux/fedora/docker-ce.repo
  [phunc20@localhost ~]$ dnf repolist
  repo id                                                                      repo name
  docker-ce-stable                                                             Docker CE Stable - x86_64
  fedora                                                                       Fedora 33 - x86_64
  fedora-cisco-openh264                                                        Fedora 33 openh264 (From Cisco) - x86_64
  fedora-modular                                                               Fedora Modular 33 - x86_64
  rpmfusion-free                                                               RPM Fusion for Fedora 33 - Free
  rpmfusion-free-updates                                                       RPM Fusion for Fedora 33 - Free - Updates
  rpmfusion-nonfree                                                            RPM Fusion for Fedora 33 - Nonfree
  rpmfusion-nonfree-updates                                                    RPM Fusion for Fedora 33 - Nonfree - Updates
  updates                                                                      Fedora 33 - x86_64 - Updates
  updates-modular                                                              Fedora Modular 33 - x86_64 - Updates
  [phunc20@localhost ~]$ 
  ```
  Another example: brave browser
  ```bash
  ~ ❯❯❯ dnf list --installed | grep dnf-plugins-core                                                                                                                    [23/23]
  dnf-plugins-core.noarch                            4.0.18-1.fc33                          @updates                  
  python3-dnf-plugins-core.noarch                    4.0.18-1.fc33                          @updates                  
  ~ ❯❯❯ sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
  Adding repo from: https://brave-browser-rpm-release.s3.brave.com/x86_64/
  ~ ❯❯❯ sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc                                                                                        
  ~ ❯❯❯ sudo dnf install brave-browser                                                                                                                                         
  created by dnf config-manager from https://brave-browser-rpm-release.s3.brave.com/x86_64/                                                     32 kB/s | 8.0 kB     00:00    
  Fedora 33 - x86_64 - Updates                                                                                                                 7.0 kB/s | 7.1 kB     00:01     
  Fedora 33 - x86_64 - Updates                                                                                                                 1.0 MB/s | 2.3 MB     00:02     
  Dependencies resolved.   
  =============================================================================================================================================================================
   Package                              Architecture               Version                            Repository                                                          Size
  =============================================================================================================================================================================
  Installing:        
   brave-browser                        x86_64                     1.19.92-1                          brave-browser-rpm-release.s3.brave.com_x86_64_                      76 M 
  Installing dependencies:                                                                                                                                                     
   brave-keyring                        noarch                     1.8-1                              brave-browser-rpm-release.s3.brave.com_x86_64_                      11 k 
   liberation-fonts                     noarch                     1:2.1.0-2.fc33                     fedora                                                             8.1 k 
                                                                                        
  Transaction Summary
  =============================================================================================================================================================================
  Install  3 Packages                                                                                                                                                          
                                                                                                                                                                               
  Total download size: 76 M                                                             
  Installed size: 76 M
  Is this ok [y/N]: y                                             
  ```
