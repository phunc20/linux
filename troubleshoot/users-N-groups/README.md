
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
