function rateout3 = Rb3(t)

global Rmax3 sig3 mu3 A B w theta

T = A + B*(sin(w.*t+theta));

rateout3 = Rmax3*(1./(sqrt(2*pi*sig3^2))*exp(-((T-mu3).^2./(2*sig3^2))));

end