[filename foldname] = uigetfile('*.*');
fname = fullfile(foldname,filename);
obj = VideoReader(fname);

img=read(obj,length(obj.NumFrames));
imshow(img); % help choose rois

%% define rois 
dishnum = 6; % according to the original video
for i =1:dishnum
    h = drawrectangle('Color','r');
    roipos(i,:) = round(h.Position); 
end

%% video segmentation
output_video_path = 'D:\able6.0_YZ\Video_merge\output';
video_seg(fname,output_video_path,roipos);