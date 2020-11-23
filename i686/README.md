# `i686`, i.e. 32-bit machine (as opposed to `x86_64`, i.e. 64-bit machine)

## `SWAP`
It seems that 32-bit machines can only use a swap space upto `2GB`. I noticed this because
- on one machine, I gave it `6GB` swap space
- on another, `5GB` swap space
However, both displayed, when I do `free -h`, sth similar to what follows
```bash
              total        used        free      shared  buff/cache   available
Mem:          2.0Gi       452Mi       158Mi        90Mi       1.4Gi       1.2Gi
Swap:         2.0Gi          0B       2.0Gi
```

That is to say, next time when you install linux on a 32-bit machine, it is probably making more sense to assign
**no more than `2GB`** swap spaces to it.



