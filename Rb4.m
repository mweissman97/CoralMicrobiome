function rateout4 = Rb4(t)

global Rmax4 sig4 mu4 A B w theta

T = A + B*(sin(w.*t+theta));

rateout4 = Rmax4*(1./(sqrt(2*pi*sig4^2))*exp(-((T-mu4).^2./(2*sig4^2))));

end