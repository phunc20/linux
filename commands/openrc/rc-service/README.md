<pre>
# list services
rc-service -l
rc-service --ifstarted &lt;serviceName&gt; stop
rc-service &lt;serviceName&gt; start
</pre>

e.g.
<pre>
rc-service NetworkManager stop
rc-service NetworkManager start
</pre>
