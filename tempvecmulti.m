tempvec = [10:30];
ng = length(tempvec);
vec1 = zeros(ng,1);
vec2 = zeros(ng,1);
vec3 = zeros(ng,1);
vec4 = zeros(ng,1);
vec5 = zeros(ng,1);
vec6 = zeros(ng,1);
vec7 = zeros(ng,1);

for j = 1:ng
    
    T = tempvec(j);

    global k tf
    
    global A B w theta
    
    k = 100;
    tf = 365;
    
    A = T-B/2; %minimum temp
    B = 9; %max temp - minimum
    w = (2*pi)/365; %makes periodic
    theta = -(pi/2+44*w); %shift
    
    B10 = 0.5;%actinobacteria
    B20 = 0.5;%alphaproteobacteria
    B30 = 0.5;%bacili
    B40 = 0.5;%cyanobacteria
    B50 = 0.5;%gammaproteobacteria
    B60 = 0.5;%Spirochaetia
    B70 = 0.5;%Thaumarchaeota
    
    u0 = [B10; B20; B30; B40; B50; B60; B70];
    
    [t, u] = ode45('multipopdeqns',[1:1:tf],u0);
    
    B1 = u(:,1);
    B2 = u(:,2);
    B3 = u(:,3);
    B4 = u(:,4);
    B5 = u(:,5);
    B6 = u(:,6);
    B7 = u(:,7);
    
    vec1(j) = B1(end);
    vec2(j) = B2(end);
    vec3(j) = B3(end);
    vec4(j) = B4(end);
    vec5(j) = B5(end);
    vec6(j) = B6(end);
    vec7(j) = B7(end);
end

plot(tempvec, vec1, tempvec, vec2, tempvec, vec3, tempvec, vec4, tempvec, vec5, tempvec, vec6, tempvec, vec7);
title('Fig. 4b: Temperature Amplitude and Composition')
xlabel('Temperature Amplitude')
ylabel('Proportion After 1 Year')
legend('Actinobacteria','Alphaproteobacteria','Bacilli','Cyanobacteria','Gammaproteobacteria','Spirochaetia','Thaumarchaeota')
