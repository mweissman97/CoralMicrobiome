function rateout17 = Rb17(t)

global Rmax17 sig17 mu17 A B w theta

T = A + B*(sin(w.*t+theta));

rateout17 = Rmax17*(1./(sqrt(2*pi*sig17^2))*exp(-((T-mu17).^2./(2*sig17^2))));

end