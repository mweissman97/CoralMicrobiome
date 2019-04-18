function rateout14 = Rb14(t)

global Rmax14 sig14 mu14 A B w theta

T = A + B*(sin(w.*t+theta));

rateout14 = Rmax14*(1./(sqrt(2*pi*sig14^2))*exp(-((T-mu14).^2./(2*sig14^2))));

end