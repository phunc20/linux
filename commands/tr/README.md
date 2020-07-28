## <code>tr</code> can be used to
- <b>replace</b> characters
- <b>delete</b> characters

e.g.
<pre>
leif@CenterLap-x1carbon ~ $ printf "abc\n"
abc
leif@CenterLap-x1carbon ~ $ printf "abc\n" | tr -d "\n"
abcleif@CenterLap-x1carbon ~ $ printf "\n" | tr -d "\n"
leif@CenterLap-x1carbon ~ $ printf "\n" | tr "\n" "a"
aleif@CenterLap-x1carbon ~ $ printf "\n" | tr "\n" "\r"
leif@CenterLap-x1carbon ~ $ printf "\n" | tr "\n" "\r"
</pre>

Another example: (a shell script named <code><b>pwd-to-xclip</b></code>)
<pre style="margin-bottom: 0; border-bottom:none; padding-bottom:0.8em;">~/.useful-scripts/pwd-to-xclip</pre>
<pre style="margin-top: 0; border-top-style:dashed; padding-top: 0.8em;">
pwd | tr -d "\n" | xclip -se c
</pre>
