function rateout6 = Rb6(t)

global Rmax6 sig6 mu6 A B w theta

T = A + B*(sin(w.*t+theta));

rateout6 = Rmax6*(1./(sqrt(2*pi*sig6^2))*exp(-((T-mu6).^2./(2*sig6^2))));

end