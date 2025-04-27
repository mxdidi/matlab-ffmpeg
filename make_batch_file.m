function make_batch_file(video_path,varargin)
    % Make the txt file required for batch merging
    % input: video_path(str), 
    %        varargin is the optional for saving the output. Default: video_path
    % Written by Xun MA, Feb. 2023

    numvarargs = length(varargin);
    optargs = {video_path};
    optargs(1:numvarargs) = varargin;
    out_path = optargs{:};

    files = dir(video_path);
    files = files(~[files.isdir]);
    fname = fullfile(out_path, ['file_process.txt']);
    fid = fopen(fname, 'w');
    for i = 1:length(files)
        file_path = fullfile(video_path, files(i).name);
        fprintf(fid, 'file ''%s''\n', file_path);
    end
    fclose(fid);
end