
[phunc20@homography-x220t commands]$ man usermod
[phunc20@homography-x220t commands]$ groups
wheel phunc20
[phunc20@homography-x220t commands]$ usermod -aG lp phunc20
usermod: Permission denied.
usermod: cannot lock /etc/passwd; try again later.
[phunc20@homography-x220t commands]$ sudo usermod -aG lp phunc20
[phunc20@homography-x220t commands]$ groups
wheel phunc20
