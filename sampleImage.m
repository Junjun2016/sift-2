function I_sampled = sampleImage(I)
	[M N] = size(I);
	I_sampled = I(1:2:M, 1:2:N);