function rateout11 = Rb11(t)

global Rmax11 sig11 mu11 A B w theta

T = A + B*(sin(w.*t+theta));

rateout11 = Rmax11*(1./(sqrt(2*pi*sig11^2))*exp(-((T-mu11).^2./(2*sig11^2))));

end