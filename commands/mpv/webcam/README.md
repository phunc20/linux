## How to start a webcam
> `mpv /dev/video0` (According to Arch Wiki, and verified on my artichaut-x220, this command may also work `mpv av://v4l2:/dev/video0 --profile=low-latency --untimed`, but I don't know the difference btw them)

- **How to take a shot/picture** from the webcam? Simply press **`s`** (short for **save**). Then **`q`** to quit.


### `hflip`
By default, capturing webcam this way implies
> When you wave your **right hand**, the guy in the video **also** wave his **right hand**.

To mirror the video, use the **`--vf`** option (which stands for **V**ideo **F**ilters)
- **`mpv --vf=hflip /dev/video2`**
- The same logic, if you ever need to vflip, `mpv --vf=vflip /dev/video2`



