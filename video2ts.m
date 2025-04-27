function video2ts(init_video_path, ts_video_path)
    % Convert the video format to ts
    % input:
    %   init_video_path : Original video folder
    %   ts_video_path : Converted ts folder
    % Written by Xun MA, Feb. 2023

    files = dir(init_video_path);
    files = files(~[files.isdir]);
    for i = 1:length(files)
        init_video_file = fullfile(init_video_path, files(i).name);
        [~,name,ext] = fileparts(files(i).name);
        ts_video_file = fullfile(ts_video_path, [name, '.ts']);
        command = sprintf('ffmpeg -i %s -vcodec copy -acodec copy -vbsf h264_mp4toannexb %s', init_video_file, ts_video_file);
        % command = sprintf('ffmpeg -i %s -c:v copy %s', init_video_file, ts_video_file);
        system(command);
    end
end

