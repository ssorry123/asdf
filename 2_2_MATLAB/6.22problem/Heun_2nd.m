% Heun's 2nd order method
function [ys] = Heun_2nd(f, a, b, hs, y0)
% TODO: Remove the following line and fill in the correct code.
		for j=1:length(hs)
		h = hs(j);
		x = a:h:b;
		n = length(x);
		y = zeros(1,n);
		y(1) = y0;
		for i=1:(n-1)
            K1 = f(x(i),y(i));
			K2 = f(x(i)+2*h/3, y(i)+2*K1*h/3);
            y(i+1)=y(i)+(K1+3*K2)*h/4;
		end
		ys(j) = y(n);
        plot(x,y)
        hold on
	end
end