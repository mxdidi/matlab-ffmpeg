function duration = get_video_duration(filename)

    obj = VideoReader(filename);
    rate = obj.FrameRate;
    frame_num = obj.NumFrames;
    duration = frame_num/rate;
    
end