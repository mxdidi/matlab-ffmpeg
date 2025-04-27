The whole package is supported by FFMPEG.
Please make sure the ffmpeg is in your environment path.
Website: https://ffmpeg.org/
Some tips: https://zhuanlan.zhihu.com/p/118362010; https://blog.csdn.net/Chanssl/article/details/83050959
Have been tested on Windows10 system

Written by Xun MA, Feb. 2023
email: maxun1214@163.com

1. Video convert
Please see fast_video_convert.m demo. Default converted video is of MP4 fromat.
To convert your video to any format you want, you could find tips in the demo file.

2. Video merge
Please see fast_video_merge.m demo. Default merged video is of MP4 fromat. There are two methods provided. Now in our lab maybe the direct method is faster. 
Sometimes the indirected method may be stabler.


3. video_sgementation
Please see fast_video_segmentation.m demo. Default independent videoes are of MP4 fromat. Now the processing speed is very slow even in the SSD disk. 
Maybe there are other commands in ffmpeg to speed up this function. 
It should be noticed that the dishnum is used to choose rois. Please set the parameters according to the original video or your experimental record.
ROIs are selected using the matlab function drawfreehand. 

4. stable process in zhu lab
Here another function stable_video_convert.m and stable_merge_video.m use the libx264 encoding way to avoid bugs in able.
Please see the stable_process_demo for details. 
Two ways: original video - mp4 - output_merged; original - output_merged


5. get_video_duration.m and make_timestamp.m are two simple functions to get the time feature of the video.



Welcome any comments :)

