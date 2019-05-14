%bio temperature solver

tempvec = [10:30];
ng = length(tempvec);
vec1 = zeros(ng,1);
vec2 = zeros(ng,1);
vec3 = zeros(ng,1);
vec4 = zeros(ng,1);
vec5 = zeros(ng,1);
vec6 = zeros(ng,1);
vec7 = zeros(ng,1);
vec8 = zeros(ng,1);
vec9 = zeros(ng,1);
vec10 = zeros(ng,1);
vec11 = zeros(ng,1);
vec12 = zeros(ng,1);
vec13 = zeros(ng,1);
vec14 = zeros(ng,1);
vec15 = zeros(ng,1);


for j = 1:ng
    
    T = tempvec(j);
    
    global k tf
    
    global A B w theta
    
    k = 100;
    tf = 500;
    
    A = T-B/2; %minimum temp
    B = 11; %max temp - minimum
    w = (2*pi)/365; %makes periodic
    theta = -(pi/2+44*w); %shift
    
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
    
    
    u0 = [B01; B02; B03; B04; B05; B06; B07; B08; B09; B010; B011; B012; B013; B014; B015];
    
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
    
    vec1(j) = B1(end);
    vec2(j) = B2(end);
    vec3(j) = B3(end);
    vec4(j) = B4(end);
    vec5(j) = B5(end);
    vec6(j) = B6(end);
    vec7(j) = B7(end);
    vec8(j) = B7(end);
    vec9(j) = B7(end);
    vec10(j) = B7(end);
    vec11(j) = B7(end);
    vec12(j) = B7(end);
    vec13(j) = B7(end);
    vec14(j) = B7(end);
    vec15(j) = B7(end);


end

plot(tempvec, vec2, tempvec, vec7)
legend('Alphaproteo','Cyano')

% plot(tempvec, vec1, tempvec, vec2, tempvec, vec3, tempvec, vec4, tempvec, vec5, tempvec, vec6, tempvec, vec7, tempvec, vec8, tempvec, vec9, tempvec, vec10, tempvec, vec11, tempvec, vec12, tempvec, vec13, tempvec, vec14, tempvec, vec15);
% title('Fig. 4b: Temperature Amplitude and Composition')
% xlabel('Temperature Amplitude')
% ylabel('Proportion After 1 Year')
% legend('Actinobacteria', 'Alphaproteobacteria', 'Bacili', 'Betaproteobacteria','Chlamydiia','Clostridia','Cyanobacteria','Flavobacteria','Gammaproteobacteria','Methanobacteria','Mollicutes','Planctomycetia','Spirochaetia','Thaumarchaeota','Thermoprotei')