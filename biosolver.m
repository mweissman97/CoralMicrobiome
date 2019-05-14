%bio deqns solver
global k A B w theta tf

k = 100;
tf = 365;

% %inner
% A = 20; %minimum temp
% B = 13; %max temp - minimum
% w = (2*pi)/365; %makes periodic
% theta = -(pi/2+44*w); %shift

% %inner one temp
% A = 23.94;
% B = 0;
% w = (2*pi)/365; %makes periodic
% theta = -(pi/2+44*w); %shift

%outer
A = 15; %minimum temp
B = 9; %max temp - minimum
w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift

% %outer one temp
% A = 23.22; %minimum temp
% B = 0; %max temp - minimum
% w = (2*pi)/365; %makes periodic
% theta = -(pi/2+44*w); %shift

% %avg
% A = 29; %minimum temp
% B = 11; %max temp - minimum
% w = (2*pi)/365; %makes periodic
% theta = -(pi/2+44*w); %shift

B01 = 0.1;
B02 = 0.1;
B03 = 0.1;
B04 = 0.1;
B05 = 0.1;
B06 = 0.1;
B07 = 0.1;
B08 = 0.1;
B09 = 0.1;
B010 = 0.1;
B011 = 0.1;
B012 = 0.1;
B013 = 0.1;
B014 = 0.1;
B015 = 0.1;
B016 = 0.1;
B017 = 0.1;


u0 = [B01; B02; B03; B04; B05; B06; B07; B08; B09; B010; B011; B012; B013; B014; B015; B016; B017];

[t, u] = ode45('biodeqns',[1:1:tf],u0);

B1 = u(:,1);
B2 = u(:,2);
B3 = u(:,3);
B4 = u(:,4);
B5 = u(:,5);
B6 = u(:,6);
B7 = u(:,7);
B8 = u(:,8);
B9 = u(:,9);
B10 = u(:,10);
B11 = u(:,11);
B12 = u(:,12);
B13 = u(:,13);
B14 = u(:,14);
B15 = u(:,15);
B16 = u(:,16);
B17 = u(:,17);

% %graph
% plot(t, B1, t, B2, t, B3, t, B4, t, B5, t, B6, t, B7, t, B16, t, B8, t, B9, t, B17, t, B10, t, B11, t, B12, t, B13, t, B14, t, B15)
% xlabel('Time')
% ylabel('Population')
% legend('Actinobacteria', 'Alphaproteobacteria', 'Bacili', 'Betaproteobacteria','Chlamydiia','Clostridia','Cyanobacteria', 'Deltaproteobacteria', 'Flavobacteria','Gammaproteobacteria','Halobacteria', 'Methanobacteria','Mollicutes','Planctomycetia','Spirochaetia','Thaumarchaeota','Thermoprotei')

matb = [B1(tf);
B2(tf);
B3(tf);
B4(tf);
B5(tf);
B6(tf);
B7(tf);
B8(tf);
B9(tf);
B10(tf);
B11(tf);
B12(tf);
B13(tf);
B14(tf);
B15(tf);
B16(tf);
B17(tf)];