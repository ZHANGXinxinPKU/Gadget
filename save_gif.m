function save_gif(I_t,I_f,fn_s)


% use several images to create a gif image and write it into a folder
% 2016/11/13

filename= ['filename'];
t = 0.25;
figure
imshow(I_t/255);
    set(gcf,'color','w');
frame=getframe(gcf);%
im=frame2im(frame); 
imshow(im);
[I,map]=rgb2ind(im,256);
i = 1;
k=i-0;
if k==1;
    imwrite(I,map,filename,'gif','Loopcount',inf,...
        'DelayTime',t);
else
    imwrite(I,map,filename,'gif','WriteMode','append',...
        'DelayTime',t);% t controls the velocity of picture show
end

figure
imshow(I_f/255);
    set(gcf,'color','w');
frame=getframe(gcf);%
im=frame2im(frame);
imshow(im);
[I,map]=rgb2ind(im,256);
i = 2;
k=i-0;
if k==1;
    imwrite(I,map,filename,'gif','Loopcount',inf,...
        'DelayTime',t);
else
    imwrite(I,map,filename,'gif','WriteMode','append',...
        'DelayTime',t);  % t controls the velocity of picture show
end
