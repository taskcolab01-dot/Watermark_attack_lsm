rgbImage = imread(fullFileName);
% Get the dimensions of the image.  numberOfColorBands should be = 3.
[rows, columns, numberOfColorBands] = size(rgbImage);

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
