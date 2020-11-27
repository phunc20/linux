**`ffprobe -v error -show_entries stream=width,height [-of <some_output_format>] <some_video_file>`**
<br/>
where `<some_output_format>` could be
- **`default`**
- **nothing**, omitting `-of` entirely (same effect as `default`)
- **`flat`**
- **`csv`**
- **`compact`**
- **`json`**
- **`xml`**
- **`ini`**
- etc.


**N.B.** Don't do `-of=default`, i.e. don't use the equal sign (**`=`**).

Here below is a few illustrating examples of the output of each format.
```bash
$ ffprobe -v error -show_entries stream=width,height -of default some_video.mp4
[STREAM]
width=1280
height=720
[/STREAM]
[STREAM]
[/STREAM]

$ ffprobe -v error -show_entries stream=width,height some_video.mp4
[STREAM]
width=1280
height=720
[/STREAM]
[STREAM]
[/STREAM]

$ ffprobe -v error -show_entries stream=width,height -of flat some_video.mp4
streams.stream.0.width=1280
streams.stream.0.height=720

$ ffprobe -v error -show_entries stream=width,height -of json some_video.mp4
{
    "programs": [

    ],
    "streams": [
        {
            "width": 1280,
            "height": 720
        },
        {

        }
    ]
}

$ ffprobe -v error -show_entries stream=width,height -of ini some_video.mp4
# ffprobe output


[streams.stream.0]
width=1280
height=720

[streams.stream.1]
```

**Note** also that you can add duration to the `stream=` option, like:
```bash
$ ffprobe -v error -show_entries stream=width,height -of default some_video.mp4
[STREAM]
width=1280
height=720
duration=495.261433
[/STREAM]
[STREAM]
duration=495.281633
[/STREAM]
```
