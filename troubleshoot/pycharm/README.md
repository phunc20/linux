## <code>pycharm</code> Blank Screen
when run the <code><b>pycharm.sh</b></code> script provided by IntelliJ under suckless' dwm.

This issue seems to be known under the name of [<b>"non-reparenting"</b> window manager problem](https://wiki.archlinux.org/index.php/Java#Non-reparenting_window_managers). A immediately working solution that I found in the link above is as follows: (on my x200 arch linux)
01. Install [<code><b>wmname</b></code>](https://tools.suckless.org/x/wmname/)
02. <code><b>wmname compiz</b></code>
03. <code><b>./pycharm.sh</b></code>
04. Pycharm should be up and running fine at this stage.
