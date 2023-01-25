close all; clear; clc;
%%
he = imread('MoldeECia102FolhaA.tif');
% %% Red 
red = ThresholdRed(he);
subplot(1,2,1);
imshow(red)
axis('on', 'image');
title('Red Binary');

maskedRgbImage = bsxfun(@times, he, cast(red, 'like', he));
maskedred = maskedRgbImage;
imwrite(maskedred, "Red_mask.jpg");
subplot(1,2,2);
imshow(maskedred, []);
axis('on', 'image');
title('Masked Red Image');
drawnow;
rd = impixelinfo(); % Set up status line to see values when you mouse over the image.
figure;
%% Green
green = ThresholdGreen(he);
subplot(1,2,1);
imshow(green)
axis('on', 'image');
title('Green Binary');

maskedRgbImage = bsxfun(@times, he, cast(green, 'like', he));
maskedgreen = maskedRgbImage;
imwrite(maskedgreen, "Green_mask.jpg");
subplot(1,2,2);
imshow(maskedgreen, []);
axis('on', 'image');
title('Masked Green Image');
drawnow;
gr = impixelinfo(); % Set up status line to see values when you mouse over the image.
figure;
%% Black
black = ThresholdBlack(he);
subplot(1,2,1);
imshow(black)
axis('on', 'image');
title('black Binary');

maskedBlack = not(black);
imwrite(maskedBlack, "Black_mask.jpg");
subplot(1,2,2);
imshow(maskedBlack, []);
axis('on', 'image');
title('Masked black Image');
drawnow;
blk = impixelinfo(); % Set up status line to see values when you mouse over the image.
figure; 
%% Blue
blue = ThresholdBlue(he);
subplot(1,2,1);
imshow(blue)
axis('on', 'image');
title('Blue Binary');

maskedRgbImage = bsxfun(@times, he, cast(blue, 'like', he));
maskedBlue = maskedRgbImage;
imwrite(maskedBlue, "Blue_mask.jpg");
subplot(1,2,2);
imshow(maskedBlue, []);
axis('on', 'image');
title('Masked Blue Image');
drawnow;
hp = impixelinfo(); % Set up status line to see values when you mouse over the image.
% figure;
%% Original Image
% imshow(he)
% title('Original Image');
