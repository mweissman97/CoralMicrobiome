function rateout13 = Rb13(t)

global Rmax13 sig13 mu13 A B w theta

T = A + B*(sin(w.*t+theta));

rateout13 = Rmax13*(1./(sqrt(2*pi*sig13^2))*exp(-((T-mu13).^2./(2*sig13^2))));

end