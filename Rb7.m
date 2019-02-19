function rateout7 = Rb7(t)

global Rmax7 sig7 mu7 A B w theta

T = A + B*(sin(w.*t+theta));

rateout7 = Rmax7*(1./(sqrt(2*pi*sig7^2))*exp(-((T-mu7).^2./(2*sig7^2))));

end