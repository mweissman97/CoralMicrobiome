function rateout9 = Rb9(t)

global Rmax9 sig9 mu9 A B w theta

T = A + B*(sin(w.*t+theta));

rateout9 = Rmax9*(1./(sqrt(2*pi*sig9^2))*exp(-((T-mu9).^2./(2*sig9^2))));

end