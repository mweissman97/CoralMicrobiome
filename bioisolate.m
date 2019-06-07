%diffyq for multibacterialpop

function du = bioisolate(t,u)

%fprintf('t: %2.0f\n', t);

B1 = u(1);
B2 = u(2);
B3 = u(3);
B4 = u(4);
B5 = u(5);
B6 = u(6);
B7 = u(7);
B8 = u(8);
B9 = u(9);
B10 = u(10);
B11 = u(11);
B12 = u(12);
B13 = u(13);
B14 = u(14);
B15 = u(15);
B16 = u(16);
B17 = u(17);

du = zeros(17,1);

global k
global b12 b13 b14 b15 b16 b17 b18 b19 b110 b111 b112 b113 b114 b115 b116 b117
global b23 b24 b25 b26 b27 b28 b29 b210 b211 b212 b213 b214 b215 b216 b217
global b34 b35 b36 b37 b38 b39 b310 b311 b312 b313 b314 b315 b316 b317
global b45 b46 b47 b48 b49 b410 b411 b412 b413 b414 b415 b416 b417
global b56 b57 b58 b59 b510 b511 b512 b513 b514 b515 b516 b517
global b67 b68 b69 b610 b611 b612 b613 b614 b615 b616 b617
global b78 b79 b710 b711 b712 b713 b714 b715 b716 b717
global b89 b810 b811 b812 b813 b814 b815 b816 b817
global b910 b911 b912 b913 b914 b915 b916 b917
global b1011 b1012 b1013 b1014 b1015 b1016 b1017
global b1112 b1113 b1114 b1115 b1116 b1117
global b1213 b1214 b1215 b1216 b1217
global b1314 b1315 b1316 b1317
global b1415 b1416 b1417
global b1516 b1517 b1617

du(1) = B1*Rb1(t)*(1-(B1/k));
du(2) = B2*Rb2(t)*(1-(B2/k));
du(3) = B3*Rb3(t)*(1-(B3/k));
du(4) = B4*Rb4(t)*(1-(B4/k));
du(5) = B5*Rb5(t)*(1-(B5/k));
du(6) = B6*Rb6(t)*(1-(B6/k));
du(7) = B7*Rb7(t)*(1-(B7/k));
du(8) = B8*Rb8(t)*(1-(B8/k));
du(9) = B9*Rb9(t)*(1-(B9/k));
du(10) = B10*Rb10(t)*(1-(B10/k));
du(11) = B11*Rb11(t)*(1-(B11/k));
du(12) = B12*Rb12(t)*(1-(B12/k));
du(13) = B13*Rb13(t)*(1-(B13/k));
du(14) = B14*Rb14(t)*(1-(B14/k));
du(15) = B15*Rb15(t)*(1-(B15/k));
du(16) = B16*Rb16(t)*(1-(B16/k));
du(17) = B17*Rb17(t)*(1-(B17/k));

end