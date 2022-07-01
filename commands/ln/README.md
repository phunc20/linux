## Hard Links and Symbolic Links
Cf. <https://stackoverflow.com/questions/185899/what-is-the-difference-between-a-symbolic-link-and-a-hard-link> for more details

To put it easily, underneath the file system, files are represented by inodes. A file in the file system is simply a link to
a particular inode. Creating a hard link to a file means creating another link to the same inode.

For example, say, you downloaded a movie to the path `~/downloads/dimension.mp4` and you'd like to create a hard link to
the file under `~/`. You'd do
```bash
ln ~/downloads/dimension.mp4 ~/
# or in case you want a diff file name
ln ~/downloads/dimension.mp4 ~/dim.mp4
```

The syntax for creating a link is as follows
```bash
# hard link
ln TARGET LINK_NAME
# symbolic link
ln -s TARGET LINK_NAME
```

When we delete a file, we remove one link to the underlying inode. An inode is only deleted when there is no link
pointing to it.

By contrast, a symbolic link is a link to a file name in the file system. For the same example as above, had we linked
using the command
```bash
ln -s ~/downloads/dimension.mp4 ~/dim.mp4
```

If we delete the file `~/downloads/dimension.mp4`, then the link `~/dim.mp4` will be broken because its target no longer
exists.

**Rmk.**<br>
1. Hard links are only valid within the same File System. Symbolic links can span file systems as they are simply the name of another file.
2. When the size inspected using the command `du`,
  - a hard link will show the same size as its target
  - a symbolic link will be a mere `4.0K`
   However, in reality, both ways of linking consume little space.
