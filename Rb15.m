function rateout15 = Rb15(t)

global Rmax15 sig15 mu15 A B w theta

T = A + B*(sin(w.*t+theta));

rateout15 = Rmax15*(1./(sqrt(2*pi*sig15^2))*exp(-((T-mu15).^2./(2*sig15^2))));

end