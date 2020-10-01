```bash
# strings seems to be a command capable of turning binary str into normal str
strings .config/chromium/Default/Current\ Session  | grep -E '^https?://' | sort | uniq | wc -l
270



```
