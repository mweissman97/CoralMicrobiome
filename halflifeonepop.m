%make for loop for each variable

avec = [5:35];
ang = length(avec);
bvec = [0:15];
bng = length(bvec);
val2 = 0;
val7 = 0;

halfmat2 = zeros(ang,bng);
halfmat7 = zeros(ang,bng);

for j = 1:ang
    a = avec(j);
    global k tf A B w theta
    
    for i = 1:bng
        b = bvec(i);
        
        A = a; %minimum temp
        B = b; %max temp - minimum
        w = (2*pi)/365; %makes periodic
        theta = -(pi/2+44*w); %shift
        
        k = 1;
        tf = 5000;
        
        B01 = 4.5;
        B02 = 0.0001;
        B03 = 12;
        B04 = 3.7;
        B05 = 2.9;
        B06 = 5.8;
        B07 = 0.0001;
        B08 = 1.9;
        B09 = 8.3;
        B010 = 2.5;
        B011 = 4.7;
        B012 = 1.9;
        B013 = 5.6;
        B014 = 3.3;
        B015 = 1.1;
        B016 = 1.5;
        B017 = 1.5;
        
        u0 = [B01; B02; B03; B04; B05; B06; B07; B08; B09; B010; B011; B012; B013; B014; B015; B016; B017];
        
        [t, u] = ode45('bioisolate',[1:1:tf],u0);
        
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
        
        %pop2
        matB2 = [B2 t];
        [r2, c2] = size(matB2);
        delta2 = 0;
        for n2 = 1:r2
            if n2 == 1
                delta2 = abs(0.5-matB2(n2,1));
            end
            if abs(0.5-matB2(n2,1)) < delta2
                delta2 = abs(0.5-matB2(n2,1));
                val2 = matB2(n2,2);
            end
        end
        halfmat2(j,i) = val2;
        
        
        %pop7
        matB7 = [B7 t];
        [r7, c7] = size(matB7);
        delta7 = 0;
        for n7 = 1:r7
            if n7 == 1
                delta7 = abs(0.5-matB7(n7,1));
            end
            if abs(0.5-matB7(n7,1)) < delta7
                delta7 = abs(0.5-matB7(n7,1));
                val7 = matB7(n7,2);
            end
        end
        halfmat7(j,i) = val7;
        
    end
end
        
% plot(tempvec, halfvec1, tempvec, halfvec2, tempvec, halfvec3, tempvec, halfvec4, tempvec, halfvec5, tempvec, halfvec6, tempvec, halfvec7, tempvec, halfvec16, tempvec, halfvec8, tempvec, halfvec9, tempvec, halfvec17, tempvec, halfvec10, tempvec, halfvec11, tempvec, halfvec12, tempvec, halfvec13, tempvec, halfvec14, tempvec, halfvec15);
% xlabel('Temperature Amplitude')
% ylabel('Days to Achieve 50% Carrying Capacity')
% legend('Actinobacteria', 'Alphaproteobacteria', 'Bacili', 'Betaproteobacteria','Chlamydiia','Clostridia','Cyanobacteria', 'Deltaproteobacteria', 'Flavobacteria','Gammaproteobacteria', 'Halobacteria', 'Methanobacteria','Mollicutes','Planctomycetia','Spirochaetia','Thaumarchaeota','Thermoprotei')