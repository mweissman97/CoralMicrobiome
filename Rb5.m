function rateout5 = Rb5(t)

global Rmax5 sig5 mu5 A B w theta

T = A + B*(sin(w.*t+theta));

rateout5 = Rmax5*(1./(sqrt(2*pi*sig5^2))*exp(-((T-mu5).^2./(2*sig5^2))));

end