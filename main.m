
% test SIFT implementation
fprintf('Computing keypoints for image 1...\n');
I1 = imread('chair1_small.jpg');	
I1 = rgb2gray(I1);
I1 = double(I1);
keypoints1 = computeSift(I1);

fprintf('Done.\nComputing keypoints for image 2...\n');
I2 = imread('chair2_small.jpg');	
I2 = rgb2gray(I2);
I2 = double(I2);
keypoints2 = computeSift(I2);

% show matching keypoints
fprintf('Done.\nComputing matches...\n');
matches = computeMatches(keypoints1, keypoints2);
fprintf('%d matches found', size(matches, 1));
showMatches(I1, I2, matches);
