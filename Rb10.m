function rateout10 = Rb10(t)

global Rmax10 sig10 mu10 A B w theta

T = A + B*(sin(w.*t+theta));

rateout10 = Rmax10*(1./(sqrt(2*pi*sig10^2))*exp(-((T-mu10).^2./(2*sig10^2))));

end