## Suspend the machine by some command
All of the following commands seem to be able to make the machine suspend:
- **`sudo s2ram`**: This seems to require no additional installation of packages, i.e. works right out of box. Just don't forget the `sudo`, or it'll
  ```bash
  leif@CenterLap-x1carbon ~$ s2ram
  KMS graphics driver is in use, skipping quirks.
  /sys/power/state does not exist; what kind of ninja mutant machine is this?
  ```
- **`sudo pm-suspend`**: This requires installation of **`sys-power/pm-utils`**.

## Detect lid closing
- Install `sys-power/acpid`: `sudo emerge sys-power/acpid`
- enable and start `acpid`:
  - `sudo rc-update add acpid default`
  - `sudo rc-service acpid start`
- Take the lid-closing event detection by
  - First running an `acpi_listen` process on a terminal
  - Then close the lid and reopen it.
  ```bash
  leif@CenterLap-x1carbon ~ $ acpi_listen
  button/lid LID close
  button/lid LID open
  button/lid LID close
  button/lid LID open
  ^C
  leif@CenterLap-x1carbon ~ $
  ```
