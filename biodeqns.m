%diffyq for multibacterialpop

function du = biodeqns(t,u)

%fprintf('t: %2.0f\n', t);

B1 = u(1);
B2 = u(2);
B3 = u(3);
B4 = u(4);
B5 = u(5);
B6 = u(6);
B8 = u(8);
B9 = u(9);
B11 = u(11);
B12 = u(12);
B13 = u(13);
B14 = u(14);
B15 = u(15);

du = zeros(15,1);

global k
global b12 b13 b14 b15 b16 b17 b18 b19 b110 b111 b112 b113 b114 b115
global b23 b24 b25 b26 b27 b28 b29 b210 b211 b212 b213 b214 b215
global b34 b35 b36 b37 b38 b39 b310 b311 b312 b313 b314 b315
global b45 b46 b47 b48 b49 b410 b411 b412 b413 b414 b415
global b56 b57 b58 b59 b510 b511 b512 b513 b514 b515
global b67 b68 b69 b610 b611 b612 b613 b614 b615
global b78 b79 b710 b711 b712 b713 b714 b715
global b89 b810 b811 b812 b813 b814 b815
global b910 b911 b912 b913 b914 b915
global b1011 b1012 b1013 b1014 b1015
global b1112 b1113 b1114 b1115
global b1213 b1214 b1215
global b1314 b1315 b1415

du(1) = B1*Rb1(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B1/k*(b12*B2+b13*B3+b14*B4+b15*B5+b16*B6+b17*B7+b18*B8+b19*B9+b110+B10+b111*B11+b112*B12+b113*B13+b114*B14+b115*B15));
du(2) = B2*Rb2(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B2/k*(b12*B1+b23*B3+b24*B4+b25*B5+b26*B6+b27*B7+b28*B8+b29*B9+b210+B10+b211*B11+b212*B12+b213*B13+b214*B14+b215*B15));
du(3) = B3*Rb3(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B3/k*(b13*B1+b23*B2+b34*B4+b35*B5+b36*B6+b37*B7+b38*B8+b39*B9+b310+B10+b311*B11+b312*B12+b313*B13+b314*B14+b315*B15));
du(4) = B4*Rb4(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B4/k*(b14*B1+b24*B2+b34*B3+b45*B5+b46*B6+b47*B7+b48*B8+b49*B9+b410+B10+b411*B11+b412*B12+b413*B13+b414*B14+b415*B15));
du(5) = B5*Rb5(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B5/k*(b15*B1+b25*B2+b35*B3+b45*B4+b56*B6+b57*B7+b58*B8+b59*B9+b510+B10+b511*B11+b512*B12+b513*B13+b514*B14+b515*B15));
du(6) = B6*Rb6(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B6/k*(b16*B1+b26*B2+b36*B3+b46*B4+b56*B5+b67*B7+b68*B8+b69*B9+b610+B10+b611*B11+b612*B12+b613*B13+b614*B14+b615*B15));
du(7) = B7*Rb7(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B7/k*(b17*B1+b27*B2+b37*B3+b47*B4+b57*B5+b67*B6+b78*B8+b79*B9+b710+B10+b711*B11+b712*B12+b713*B13+b714*B14+b715*B15));
du(8) = B8*Rb8(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B8/k*(b18*B1+b28*B2+b38*B3+b48*B4+b58*B5+b68*B6+b78*B7+b89*B9+b810+B10+b811*B11+b812*B12+b813*B13+b814*B14+b815*B15));
du(9) = B9*Rb9(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B9/k*(b19*B1+b29*B2+b39*B3+b49*B4+b59*B5+b69*B6+b79*B7+b89*B8+b910+B10+b911*B11+b912*B12+b913*B13+b914*B14+b915*B15));
du(10) = B10*Rb10(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B10/k*(b110*B1+b210*B2+b310*B3+b410*B4+b510*B5+b610*B6+b710*B7+b810*B8+b910+B9+b1011*B11+b1012*B12+b1013*B13+b1014*B14+b1015*B15));
du(11) = B11*Rb11(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B11/k*(b111*B1+b211*B2+b311*B3+b411*B4+b511*B5+b611*B6+b711*B7+b811*B8+b911+B9+b1011*B10+b1112*B12+b1113*B13+b1114*B14+b1115*B15));
du(12) = B12*Rb12(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B12/k*(b112*B1+b212*B2+b312*B3+b412*B4+b512*B5+b612*B6+b712*B7+b812*B8+b912+B9+b1012*B10+b1112*B11+b1213*B13+b1214*B14+b1215*B15));
du(13) = B13*Rb13(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B13/k*(b113*B1+b213*B2+b313*B3+b413*B4+b513*B5+b613*B6+b713*B7+b813*B8+b913+B9+b1013*B10+b1113*B11+b1213*B12+b1314*B14+b1315*B15));
du(14) = B14*Rb14(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B14/k*(b114*B1+b214*B2+b314*B3+b414*B4+b514*B5+b614*B6+b714*B7+b814*B8+b914+B9+b1014*B10+b1114*B11+b1214*B12+b1314*B13+b1415*B15));
du(15) = B15*Rb15(t)*(1-(B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15)/k)*(1+B15/k*(b115*B1+b215*B2+b315*B3+b415*B4+b515*B5+b615*B6+b715*B7+b815*B8+b915+B9+b1015*B10+b1115*B11+b1215*B12+b1315*B13+b1415*B14));
end