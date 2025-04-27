function video_convert(init_video_path, output_video_path, varargin)
    % Convert the video format to any extension you want 
    % input:
    %   init_video_path : Original video folder
    %   output_video_path : Converted folder
    %   varargin is used to set the output format.(CHAR) Default: MP4.
    % Written by Xun MA, Feb. 2023

    files = dir(init_video_path);
    files = files(~[files.isdir]);

    numvarargs = length(varargin);
    optargs = {'mp4'};
    optargs(1:numvarargs) = varargin;
    output_format = optargs{:};

    for i = 1:length(files)
        init_video_file = fullfile(init_video_path, files(i).name);
        [~,name,ext] = fileparts(files(i).name);
        output_video_file = fullfile(output_video_path, [name, '.',output_format]);
        % here .avi could be changed to the format you want, such as '.mp4'..
        command = sprintf('ffmpeg -i %s -vcodec copy -acodec copy -vbsf h264_mp4toannexb %s', init_video_file, output_video_file);
        % command = sprintf('ffmpeg -i %s -c:v copy %s', init_video_file, output_video_file);
        system(command);
    end
end