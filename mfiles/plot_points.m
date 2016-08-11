function M=plot_points(X, POINTS)

	SIZE=size(X);

	M = size(POINTS,1);
	L = size(POINTS,2);

	if (L==2)
		lin=POINTS(:,1);
		col=POINTS(:,2);
	else
		[lin, col] = ind2sub (SIZE, POINTS(:,1));
	end

	imagesc(X);
	hold on;
	scatter(col,lin,'r');
	hold off;
end
