## How to start a webcam
> <code>mpv /dev/video0</code> (According to Arch Wiki, and verified on my artichaut-x220, this command may also work <code>mpv av://v4l2:/dev/video0 --profile=low-latency --untimed</code>, but I don't know the difference btw them)

- <b>How to take a shot/picture</b> from the webcam? Simply press <code><b>s</b></code> (short for <b>save</b>). Then <code><b>q</b></code> to quit.


### <code>hflip</code>
By default, capturing webcam this way implies
> When you wave your <b>right hand</b>, the guy in the video <b>also</b> wave his <b>right hand</b>.

To mirror the video, use the <code><b>--vf</b></code> option (which stands for <code><b>V</b>ideo <b>F</b>ilters</code>)
- <code><b>mpv --vf=hflip /dev/video2</b></code>
- The same logic, if you ever need to vflip, <code>mpv --vf=vflip /dev/video2</code>



