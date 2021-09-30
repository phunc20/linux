




## Print to stdout
01. Need to have `p` as the last char of each `sed` line
02. The `-n` option helps to show only the replaced parts, instead of the whole line, e.g.
  ```bash
  # directly from command line
  sed -n "s/l/L/gp" address.csv
  # via a sed script
  sed -f l_replace.sed -n address.csv
  ```






