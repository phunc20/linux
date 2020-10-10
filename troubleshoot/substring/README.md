### The mechanism/syntax is somewhat like Python's
Namely, <code><b>${var:i_start:i_end}</b></code>, where <code><b>i_start</b></code> is <b>included</b> and <code><b>i_end</b></code> <b>excluded</b>.

```bash
[phunc20@headache-x220tablet .useful-scripts]$ str="abcdedfg"
[phunc20@headache-x220tablet .useful-scripts]$ echo ${str:1}
bcdedfg
[phunc20@headache-x220tablet .useful-scripts]$ echo ${str:0}
abcdedfg
[phunc20@headache-x220tablet .useful-scripts]$ echo ${str:3}
dedfg
[phunc20@headache-x220tablet .useful-scripts]$ echo ${str::3}
abc
[phunc20@headache-x220tablet .useful-scripts]$ echo ${str::1}
a
[phunc20@headache-x220tablet .useful-scripts]$ echo ${str:0:1}
a

```
