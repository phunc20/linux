### Say, the mac address you want is
<b><code>e5:d0:0e:5d:d9:5c</code></b> for example.<br>
Then you can use the command <code>ifconfig</code> in freeBSD to achieve mac spoofing:

```bash
# Syntax
sudo ifconfig <interface-name> ether <mac-address>
# Example
sudo ifconfig em0 ether e5:d0:0e:5d:d9:5c
```


