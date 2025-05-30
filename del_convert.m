function del_convert(ts_video_path)
% A function to delete the .ts files generated by video_merge.
% Written by Xun MA, Feb. 2023
    files = dir(ts_video_path);
    files = files(~[files.isdir]);
    for i = 1:length(files)
        t = fullfile(ts_video_path, files(i).name);
        delete(t);
    end
    delete('file_process.txt');

end