## `usermod` can be used to
- add a user to a group: `usermod -aG <group> <user>`
  - After adding the group, one should log out the shell and relogin to have the effect applied
  ```bash
  [phunc20@homography-x220t commands]$ man usermod
  [phunc20@homography-x220t commands]$ groups
  wheel phunc20
  [phunc20@homography-x220t commands]$ usermod -aG lp phunc20
  usermod: Permission denied.
  usermod: cannot lock /etc/passwd; try again later.
  [phunc20@homography-x220t commands]$ sudo usermod -aG lp phunc20
  [phunc20@homography-x220t commands]$ groups
  wheel phunc20
  # logout and then login
  [phunc20@homography-x220t commands]$ groups
  lp wheel phunc20
  ```
