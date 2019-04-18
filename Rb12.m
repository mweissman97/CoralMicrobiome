function rateout12 = Rb12(t)

global Rmax12 sig12 mu12 A B w theta

T = A + B*(sin(w.*t+theta));

rateout12 = Rmax12*(1./(sqrt(2*pi*sig12^2))*exp(-((T-mu12).^2./(2*sig12^2))));

end