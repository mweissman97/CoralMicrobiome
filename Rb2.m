function rateout2 = Rb2(t)

global Rmax2 sig2 mu2 A B w theta

T = A + B*(sin(w.*t+theta));

rateout2 = Rmax2*(1./(sqrt(2*pi*sig2^2))*exp(-((T-mu2).^2./(2*sig2^2))));

end