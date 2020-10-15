

### Day of Week
**`date +%w`** will return `{0,1,2,3,4,5,6}`, where
- `0` means **Sunday**
- `1` means **Monday**
- `2` means **Tuesday**
- `...`
- `6` means **Saturday**




```bash
[phunc20@artichaut-x220 ~]$ date +%%
%
[phunc20@artichaut-x220 ~]$ date +%D
08/20/20
[phunc20@artichaut-x220 ~]$ date +%D | tr / -
08-20-20
[phunc20@artichaut-x220 ~]$ date +%D-%H | tr / -
08-20-20-13
[phunc20@artichaut-x220 ~]$ date +%D-%Hh%Mm%Ss | tr / -
08-20-20-13h34m52s
```
