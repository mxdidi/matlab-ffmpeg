function stable_merge_video(init_video_path,output_video_path,varargin)
   % varargin is used to set the output format.(CHAR) Default: MP4.

   files = dir(init_video_path);
   files = files(~[files.isdir]);
   fname = 'Merged';

   numvarargs = length(varargin);
   optargs = {'mp4'};
   optargs(1:numvarargs) = varargin;
   output_format = optargs{:};
   
   for i = 1:length(files)
       [~,name,ext] = fileparts(files(i).name);
       fname = [fname,'_',name];
   end
   
   txtname = fullfile(output_video_path, ['file_process.txt']);
   output_video_file = fullfile(output_video_path, [fname,'.', output_format]); 
   command = sprintf('ffmpeg -f concat -safe 0 -i %s -r 50 -c:v libx264 -preset ultrafast -crf 18 %s', txtname, output_video_file)
   system(command);

end