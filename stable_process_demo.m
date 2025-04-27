%% stable video convert
init_video_path = 'D:\able6.0_YZ\Video_merge\video2process';
output_video_path = 'D:\able6.0_YZ\Video_merge\output';
stable_video_convert(init_video_path, output_video_path);
% if other formats, stable_video_convert(init_video_path, output_video_path,'avi');

%% stable video merge
% way1 direct merge through libx264
init_video_path = 'D:\able6.0_YZ\Video_merge\video2process';
output_video_path = 'D:\able6.0_YZ\Video_merge\output';
make_batch_file(init_video_path,output_video_path);
stable_merge_video(init_video_path, output_video_path);

% way2 indirect merge through convert and libx264
init_video_path = 'D:\able6.0_YZ\Video_merge\video2process';
convert_video_path = 'D:\able6.0_YZ\Video_merge\ts';
output_video_path = 'D:\able6.0_YZ\Video_merge\output';
del_index = true; % or false ,if you want save convert file.

stable_video_convert(init_video_path, convert_video_path);
make_batch_file(convert_video_path,output_video_path);
merge_video(convert_video_path,output_video_path); 
if del_index
   del_convert(convert_video_path);
end




