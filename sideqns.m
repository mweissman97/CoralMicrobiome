function du = sideqns(t,u)

B1 = u(1);
B2 = u(2);
B3 = u(3);
B4 = u(4);
B5 = u(5);
B6 = u(6);
B7 = u(7);
BB = u(8);
S = u(9);
I = u(10);

du = zeros(10,1);

global k
global bs b12 b13 b14 b15 b16 b17 b23 b24 b25 b26 b27 b34 b35 b36 b37
global b45 b46 b47 b56 b57 b67

du(1) = B1*Rb1(t)*(1-B1/k)+B1*(bs+b12+b13+b14+b15+b16+b17);
du(2) = B2*Rb2(t)*(1-B2/k)+B2*(bs+b12+b23+b24+b25+b26+b27);
du(3) = B3*Rb3(t)*(1-B3/k)+B3*(bs+b13+b23+b34+b35+b36+b37);
du(4) = B4*Rb4(t)*(1-B4/k)+B4*(bs+b14+b24+b34+b45+b46+b47);
du(5) = B5*Rb5(t)*(1-B5/k)+B5*(bs+b15+b25+b35+b45+b56+b57);
du(6) = B6*Rb6(t)*(1-B6/k)+B6*(bs+b16+b26+b36+b46+b56+b67);
du(7) = B7*Rb7(t)*(1-B7/k)+B7*(bs+b17+b27+b37+b47+b57+b67);