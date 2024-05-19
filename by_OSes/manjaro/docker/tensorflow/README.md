```bash
docker run -u $(id -u):$(id -g) --gpus all -it --rm tensorflow/tensorflow:latest-gpu bash


# How to run jupyter by calling docker?
docker run --gpus all -v $PWD:/tf/home -p 8888:8888 -it --rm tensorflow/tensorflow:2.3.1-gpu-jupyter
```




```bash
[phunc20@vostro3670 ~]$ docker tag
"docker tag" requires exactly 2 arguments.
See 'docker tag --help'.

Usage:  docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]

Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
[phunc20@vostro3670 ~]$ docker image ls
REPOSITORY              TAG                  IMAGE ID            CREATED             S
IZE
tensorflow/tensorflow   latest-gpu-jupyter   bab06bc78739        12 hours ago        3
.22GB
nvidia/cuda             latest               f0b294b208c5        5 weeks ago         3
.66GB
[phunc20@vostro3670 ~]$ docker tag latest-gpu-jupyter 2.3.1-gpu-ju
Error response from daemon: No such image: latest-gpu-jupyter:latest
[phunc20@vostro3670 ~]$ docker tag tensorflow/tensorflow:latest-gpu-jupyter tensorflow
/tensorflow:2.3.1-gpu-ju
[phunc20@vostro3670 ~]$ docker image ls
REPOSITORY              TAG                  IMAGE ID            CREATED             S
IZE
tensorflow/tensorflow   2.3.1-gpu-ju         bab06bc78739        12 hours ago        3
.22GB
tensorflow/tensorflow   latest-gpu-jupyter   bab06bc78739        12 hours ago        3
.22GB
nvidia/cuda             latest               f0b294b208c5        5 weeks ago         3
.66GB
[phunc20@vostro3670 ~]$ docker rmi latest-gpu-jupyter
Error: No such image: latest-gpu-jupyter
[phunc20@vostro3670 ~]$ docker rmi tensorflow/tensorflow:latest-gpu-jupyter
Untagged: tensorflow/tensorflow:latest-gpu-jupyter
[phunc20@vostro3670 ~]$ docker image ls
REPOSITORY              TAG                 IMAGE ID            CREATED             SI
ZE
tensorflow/tensorflow   2.3.1-gpu-ju        bab06bc78739        12 hours ago        3.
22GB
nvidia/cuda             latest              f0b294b208c5        5 weeks ago         3.
66GB
[phunc20@vostro3670 ~]$



```
