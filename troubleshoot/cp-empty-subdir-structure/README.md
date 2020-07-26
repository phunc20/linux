Ref.
- [https://unix.stackexchange.com/questions/543195/create-the-same-subfolders-in-another-folder](https://unix.stackexchange.com/questions/543195/create-the-same-subfolders-in-another-folder)
- [https://unix.stackexchange.com/questions/11376/what-does-double-dash-mean](https://unix.stackexchange.com/questions/11376/what-does-double-dash-mean)

<pre>
# method 01
find . -type d -exec mkdir -p -- /destination/directory/{} \;
# method 02
rsync -a --include='*/' --exclude='*' /some/path/dir/ dir
</pre>

<b>e.g.</b>
<pre>
[phunc20@mushroom-x200 tf-in-practice]$ mkdir ~/corbeille/trial
[phunc20@mushroom-x200 tf-in-practice]$ tree ~/corbeille/trial/
/home/phunc20/corbeille/trial/

0 directories, 0 files
[phunc20@mushroom-x200 tf-in-practice]$ find . -type d -exec mkdir -p  ~/corbeille/trial/{} \;
[phunc20@mushroom-x200 tf-in-practice]$ tree -L 3 ~/corbeille/trial/
/home/phunc20/corbeille/trial/
├── 01_
│   └── week03
├── 02_convolutional-neural-networks-tensorflow
│   ├── 01_exploring-a-larger-dataset
│   │   ├── 01_introduction
│   │   └── 02_larger-dataset
│   ├── 02_augmentation-a-technique-to-avoid-overfitting
│   │   └── 01_augmentation
│   ├── 03_transfer-learning
│   │   └── 01_transfer-learning
│   ├── 04_multiclass-classifications
│   │   ├── 01_multiclass-classifications
│   │   └── 02_course-2-wrap-up
│   ├── cats-N-dogs
│   │   └── funny
│   └── model-zoo
├── 04_tensorflow-sequences-time-series-and-prediction
│   ├── 01_sequences-and-prediction
│   │   ├── 01_introduction
│   │   └── 02_sequences-and-prediction
│   ├── 02_deep-neural-networks-for-time-series
│   │   └── 01_deep-neural-networks-for-time-series
│   ├── 03_recurrent-neural-networks-for-time-series
│   │   └── 01_recurrent-neural-networks-for-time-series
│   └── 04_real-world-time-series-data
│       ├── 01_real-world-time-series-data
│       ├── 02_course-4-wrap-up
│       └── 03_tensorflow-in-practice-has-come-to-an-end
├── corbeille
├── datasets
│   ├── cats_and_dogs_filtered
│   │   ├── train
│   │   └── validation
│   └── horse-or-human
│       ├── train
│       └── val
├── introduction-tensorflow
│   ├── 01_a-new-programming-paradigm
│   │   ├── 01_a-new-programming-paradigm
│   │   └── 02_weekly-exercise-your-first-neural-network
│   ├── 02_introduction-to-computer-vision
│   │   ├── 01_introduction-to-computer-vision
│   │   └── 02_weekly-exercise-implement-a-deep-neural-network-to-recognize-handwritten-digits
│   ├── 03_enhancing-vision-with-convolutional-neural-networks
│   │   ├── 01_enhancing-vision-with-convolutional-neural-networks
│   │   └── 02_weekly-exercise-improving-dnn-performance-using-convolutions
│   └── 04_using-real-world-images
│       ├── 01_using-real-world-images
│       ├── 02_weekly-exercise-handling-complex-images
│       └── 03_course-1-wrap-up
└── weights

51 directories, 0 files
</pre>

