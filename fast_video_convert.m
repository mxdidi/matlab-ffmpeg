%% The format of output videos could be changed in the video_convert.m file.
% Please make sure the ffmpeg is in your environment path.
% Have been tested on Windows10 system
% Written by Xun MA, Feb. 2023

init_video_path = 'D:\able6.0_YZ\Video_merge\video2process';
output_video_path = 'D:\able6.0_YZ\Video_merge\output';
video_convert(init_video_path, output_video_path);
% Default output is MP4.To change, you could use
        %  video_convert(init_video_path, output_video_path, 'avi').