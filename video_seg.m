function video_seg(init_video,output_video_path,roipos,varargin)
   % varargin is used to set the output format.(CHAR) Default: MP4.

   numvarargs = length(varargin);
   optargs = {'mp4'};
   optargs(1:numvarargs) = varargin;
   output_format = optargs{:};

   for i = 1:length(roipos)
       output_video = fullfile(output_video_path, ['ROI_',num2str(i),'.', output_format]);
       x=num2str(roipos(i,1));y=num2str(roipos(i,2));w=num2str(roipos(i,3));h=num2str(roipos(i,4));
       command = sprintf('ffmpeg -i %s -b:v 2048k -vf crop=%s:%s:%s:%s -c:a copy %s', ...
           init_video,w,h,x,y, output_video);
       % ffmpeg -i in.mp4 -filter:v "crop=80:60:200:100" -c:a copy out.mp4
       % ffmpeg -i %s -filter:v "crop=w=%s:h=%s:x=%s:y=%s" -acodec aac -vcodec h264 -strict -2 %s
       % -i input.mp4 -b:v 2048k -vf crop=828:462:0:665 -ss 22.30 -t 8.80 output.mp4

       system(command);
   end

end