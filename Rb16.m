function rateout16 = Rb16(t)

global Rmax16 sig16 mu16 A B w theta

T = A + B*(sin(w.*t+theta));

rateout16 = Rmax16*(1./(sqrt(2*pi*sig16^2))*exp(-((T-mu16).^2./(2*sig16^2))));

end