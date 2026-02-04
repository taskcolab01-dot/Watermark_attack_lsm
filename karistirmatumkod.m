% Rearranges the color pixels randomly so that the image looks like random colored noise.  Then it unscrambles the image to get the original image.
clc;
clearvars;
close all;
workspace;
fontSize = 16;

% Read in a color demo image.
folder = fileparts(which('peppers.png')); % Determine where demo folder is (works with all versions).
baseFileName = 'peppers.png';
% Get the full filename, with path prepended.
fullFileName = fullfile(folder, baseFileName);
if ~exist(fullFileName, 'file')
	% Didn't find it there.  Check the search path for it.
	fullFileName = baseFileName; % No path this time.
	if ~exist(fullFileName, 'file')
		% Still didn't find it.  Alert user.
		errorMessage = sprintf('Error: %s does not exist.', fullFileName);
		uiwait(warndlg(errorMessage));
		return;
	end
end
rgbImage = imread(fullFileName);
% Get the dimensions of the image.  numberOfColorBands should be = 3.
[rows, columns, numberOfColorBands] = size(rgbImage);
% Display the original color image.
subplot(2, 2, 1);
imshow(rgbImage);
title('Original Color Image', 'FontSize', fontSize);
% Enlarge figure to full screen.
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% Give a name to the title bar.
set(gcf, 'Name', 'Demo by ImageAnalyst', 'NumberTitle', 'Off') 

% Get the order to scramble them in 
scrambleOrder = randperm(rows*columns);

% Extract the individual red, green, and blue color channels.
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);

% Scramble according to the scrambling order.
redChannel = redChannel(scrambleOrder);
greenChannel = greenChannel(scrambleOrder);
blueChannel = blueChannel(scrambleOrder);

% Reshape into a 2D image
redChannel = reshape(redChannel, [rows, columns]);
greenChannel = reshape(greenChannel, [rows, columns]);
blueChannel = reshape(blueChannel, [rows, columns]);

% Recombine separate color channels into a single, true color RGB image.
scrambledImage = cat(3, redChannel, greenChannel, blueChannel);

% Display the scrambled color image.
subplot(2, 2, 2);
imshow(scrambledImage);
title('Scrambled Color Image', 'FontSize', fontSize);

% Recover the image, knowing the sort order
recoverOrder = zeros([rows*columns], 2);
recoverOrder(:, 1) = 1 : (rows*columns);
recoverOrder(:, 2) = scrambleOrder;
% Sort this to find out where each scrambled location needs to be sent to.
newOrder = sortrows(recoverOrder, 2);
% Extract just column 1, which is the order we need.
newOrder = newOrder(:,1);
% Unscramble according to the recoverOrder order.
redChannel = redChannel(newOrder);
greenChannel = greenChannel(newOrder);
blueChannel = blueChannel(newOrder);
% Reshape into a 2D image
redChannel = reshape(redChannel, [rows, columns]);
greenChannel = reshape(greenChannel, [rows, columns]);
blueChannel = reshape(blueChannel, [rows, columns]);

% Recombine separate color channels into a single, true color RGB image.
scrambledImage = cat(3, redChannel, greenChannel, blueChannel);

% Display the original color image.
subplot(2, 2, 3);
imshow(scrambledImage);
title('Unscrambled Color Image', 'FontSize', fontSize);
