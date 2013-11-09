function is = isMaxima(val, vec)
	is = true;
	for i = 1:size(vec)
		if (val < vec(i))
			is = false;
			break;
		end
	end