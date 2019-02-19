
%temperature as a function of time
%where t is measured in days
%this is in a good spot right now cool good job maya


%T is Temp
%t is time
A = 23; %minimum temp
B = 5; %max temp - minimum
w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift
t = [1:1000];

T(t) = A + B*(sin(w.*t+theta));