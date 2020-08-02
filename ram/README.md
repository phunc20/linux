# Random Access Memory
This repo contains some experiments which help understand the maximum RAM each of
my thinkpads allows to attach. I have not yet had enough knowledge on RAM, so this
repo might seem ridiculous to those who are more informed in this domain, or even
to the future me. In this case, please tolerate and know that this might still help
some of us who strive to understand RAM on their own.

- <code>x60</code> (32-bit machine)
  - <code>1GB x 1</code> $`\implies`$ <code><b>869</b> Mi</code>
  - <code>1GB x 2</code> $`\implies`$ <code>1.8 Gi</code>
  - <code>2GB x 1</code> $`\implies`$ <code>1.8 Gi</code>
  - <code>1GB + 2GB</code> $`\implies`$ <code>2.8 Gi</code>
  - <code>2GB x 2</code> $`\implies`$ <code><b>3.1</b> Gi</code>
- <code>x61s</code> (64-bit machine)
  - <code>1GB x 1</code> $`\implies`$ <code><b>957</b> Mi</code>
  - <code>1GB x 2</code> $`\implies`$ <code><b>1.9</b> Gi</code>
  - <code>2GB x 1</code> $`\implies`$ <code>1.9 Gi</code>
  - <code>1GB + 2GB</code> $`\implies`$ <code><b>2.9</b> Gi</code>
  - <code>2GB x 2</code> $`\implies`$ <code><b>3.8</b> Gi</code>


<b>Rmk.</b>
- On the left were the amount of <code>GB</code> written on the RAM chip(s) and the number of chips
- On the right was the number of <code>Gi</code> (i.e. <code>Gibibytes</code>) displayed by the command <code>free -h</code>
- Besides, I've tried two marks of RAM (DDR2), <b>samsung</b> and <b>hynix</b>, both <code>1GB</code> and both give the same value on diff machines.
