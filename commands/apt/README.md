## Anology btw `apt` and `pacman`
| `apt` | `pacman` |
|:----:|:----:|
| `apt list | grep nvidia` | `pacman -Ssq nvidia` |
| `apt search nvidia` | `pacman -Ssq nvidia` |
| `apt list --installed` | `pacman -Qs` |
| `apt list --installed | grep nvidia` | `pacman -Qs nvidia` |
| `apt list --upgradable` | `?` |
| `apt purge .*nvidia.*` | `pacman -Rns nvidia` |
| `apt-cache madison docker-ce` | `?` |

