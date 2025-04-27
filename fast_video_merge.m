%% The videos to be merged should be named ordered. for exanple :'001.mp4','002.mp4'...

% Have been tested on Windows10 system
% Written by Xun MA, Feb. 2023

%% Method1 direct merge: video-output
% If the output path is the same with video path. you could just use:
video_path = 'D:\able6.0_YZ\Video_merge\video2process';
make_batch_file(video_path);
merge_video(video_path,video_path); 
% Default: MP4. merge_video(video_path,video_path,'avi'); 


% If the output path is not the same with video path. you could just use:
video_path = 'D:\able6.0_YZ\Video_merge\video2process';
output_path = 'D:\able6.0_YZ\Video_merge\output';
make_batch_file(video_path,output_path);
output_format = 'avi'; 
merge_video(video_path,output_path,output_format);


%% Method2 indirect merge video-ts-output
init_video_path = 'D:\able6.0_YZ\Video_merge\video2process';
ts_video_path = 'D:\able6.0_YZ\Video_merge\ts';
output_path = 'D:\able6.0_YZ\Video_merge\output';
del_index = true; % or false ,if you want save .ts file.

video2ts(init_video_path, ts_video_path);
make_batch_file(ts_video_path,output_path);
merge_video(ts_video_path,output_path);
if del_index
   del_convert(convert_video_path);
end







