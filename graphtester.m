T = [10:40];

R = Rmax2*(1./(sqrt(2*pi*sig2^2))*exp(-((T-mu2).^2./(2*sig2^2))));

plot(T, R);