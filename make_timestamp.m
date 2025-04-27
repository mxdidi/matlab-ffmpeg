function make_timestamp(video_path)

    files = dir(video_path);
    files = files(~[files.isdir]);
    fid = fopen('timestamp.txt', 'w');
    
    for i = 1:length(files)
        t = get_video_duration(fullfile(video_path, files(i).name));
        h = floor(t/3600);   
        m = floor(mod(t,3600)/60); 
        s = floor(t - 3600*h - 60*m);
        file = strsplit(files(i).name, '.');
        if h == 0
            fprintf(fid, '%d:%d %s\n', m, s, file{1});
        else
            fprintf(fid, '%d:%d:%d %s\n', h, m, s, file{1});
        end
    end
    fclose(fid);
end