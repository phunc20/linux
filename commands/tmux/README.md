I shall call the default <code><b>ctrl-b</b></code> <b><code>trigger_keys</code></b>
## Vertical and Horizontal Splits
- How to create?
    - <code><b>trigger_keys</b></code> <code><b>%</b></code>
    - <code><b>trigger_keys</b></code> <code><b>"</b></code>
    - These are the default and can be changed to, for example, the more intuitive <code><b>|</b></code> and <code><b>-</b></code> by editing in <code><b>~/.tmux.conf</b></code>
- How to switch btw the splits?
    - <code><b>trigger_keys</b></code> <code><b>left_arrow</b></code>
    - <code><b>trigger_keys</b></code> <code><b>right_arrow</b></code>
    - <code><b>trigger_keys</b></code> <code><b>up_arrow</b></code>
    - <code><b>trigger_keys</b></code> <code><b>down_arrow</b></code>
- How to resize?
    - <code><b>trigger_keys</b></code> <code><b>:resize-pane \<-D|-U|-L|-R\> \<n\></b></code>, e.g. <code><b>:resize-pane -D 10</b></code>

