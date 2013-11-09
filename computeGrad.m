% Given a layer from the stack of blurred images, returns the
% gradient magnitudes and directions
function [grad, ort] = computeGrad(blur)

	[M N] = size(blur);
	grad = zeros([M N]);
	ort = zeros([M N]);

	for x = 2:M-1
		for y = 2:N-1
			grad(x, y) = sqrt( (blur(x + 1, y) - blur(x - 1, y)) ^ 2 ...
							 + (blur(x, y + 1) - blur(x, y - 1)) ^ 2 );
			ort(x, y) = atan( (blur(x, y + 1) - blur(x, y - 1)) / ...
							  (blur(x + 1, y) - blur(x - 1, y)) );
		end
	end
