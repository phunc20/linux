# Làm Sao Để Đổi Màu Nền của <code>sxiv</code>?
Cái này đổi được thông qua file <code><b>~/.Xresources</b></code>, e.g.
<pre style="margin-bottom: 0; border-bottom:none; padding-bottom:0.8em;">~/.Xresources</pre>
<pre style="margin-top: 0; border-top-style:dashed; padding-top: 0.8em;">
Sxiv.background: #000000
</pre>

Không ít programs mặt định đổi configuration qua <code><b>~/.Xresources</b></code>, e.g. font chữ của <code><b>urxvt</b></code>.

Khi mình vừa thay đổi nội dung của file <code><b>~/.Xresources</b></code> xong, <b>không phải ngay lập tức</b> màu nền <code><b>sxiv</b></code> đổi liền cho mình.
<br>
Mình còn cần phải đi thêm một bước, đó là
<pre>
xrdb ~/.Xresources
</pre>
<br>



<b>Rmk.</b>
<br>
Nếu bạn là <code><b>vim</b></code> user, thì có lẽ bạn sẽ có hứng thú để không cần mỗi lần phải chạy <code><b>xrdb</b></code> sau khi edit file <code><b>~/.Xresources</b></code>. Nếu vậy, bạn có thể bỏ vòng ở dưới này vô config file của <b><code>vim</code></b>, sau này mỗi lần bạn save file, <code><b>xrdb</b></code> sẽ tự động chạy.
<pre style="margin-bottom: 0; border-bottom:none; padding-bottom:0.8em;">~/.vimrc</pre>
<pre style="margin-top: 0; border-top-style:dashed; padding-top: 0.8em;">
autocmd BufWritePost ~/.Xresources !xrdb ~/.Xresources
</pre>




