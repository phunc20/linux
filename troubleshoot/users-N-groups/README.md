- `cat /etc/group` to check out all existing groups
- `cat /etc/passwd` to check out all existing users
- `usermod -aG groups username` or `sudo gpasswd -a user group`


## Upon finishing installation of Arch Linux
There is no user other than **`root`**. How do we **add a new user**?
- `useradd -m -g wheel phunc20`, say if you want your new user named `phunc20` and assign them to the group `wheel`
- Don't forget to give them a **password** by `passwd phunc20`


## See all the groups a particular user belonging to
```
# The groups that the current user belonging to
groups
# The groups that another user belonging to, say, sunny, or, root
groups sunny
groups root
```



## Add an existing user to a group
For example, add <code>sunny</code> to <code>wheel</code>
```
usermod -a -G wheel sunny
```

<b>Note.</b> You may or may not need to use <code>sudo</code> for the above command.
