function keypoints = computeSift(I)

	% initial sigma 
	initSigma = 1.6;

	% convolve image to bring smoothing level to 1.6
	I = gaussianConv(I, sqrt(initSigma ^ 2 - 0.25));

	% some contraints
	minsize = 10;
	maxZoom = 100000;
	keypoints = [];

	J = I;
	zoomLevel = 1;
	while (size(J, 1) > minsize && size(J, 2) > minsize && zoomLevel < maxZoom)
		[keys J] = computeKeypoints(J, zoomLevel);
		J = sampleImage(J);
		keypoints = [keypoints; keys];
		fprintf('Octave complete %d, image size: (%d, %d)\n', zoomLevel, size(J, 1), size(J, 2));	
		zoomLevel = 2 * zoomLevel;		
	end