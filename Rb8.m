function rateout8 = Rb8(t)

global Rmax8 sig8 mu8 A B w theta

T = A + B*(sin(w.*t+theta));

rateout8 = Rmax8*(1./(sqrt(2*pi*sig8^2))*exp(-((T-mu8).^2./(2*sig8^2))));

end