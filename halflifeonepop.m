%make for loop for each variable

tempvec = [1:10];
ng = length(tempvec);
val1 = 0;
val2 = 0;
val3 = 0;
val4 = 0;
val5 = 0;
val6 = 0;
val7 = 0;
halfvec1 = zeros(ng,1);
halfvec2 = zeros(ng,1);
halfvec3 = zeros(ng,1);
halfvec4 = zeros(ng,1);
halfvec5 = zeros(ng,1);
halfvec6 = zeros(ng,1);
halfvec7 = zeros(ng,1);


for j = 1:ng
    T = tempvec(j);
    
    global k tf A B w theta
    
    k = 1;
    tf = 1000;
    
    A = 23;
    B = T; %max temp - minimum
    w = (2*pi)/365; %makes periodic
    theta = -(pi/2+44*w); %shift
    
    B10 = 0.0001;%actinobacteria
    B20 = 0.0001;%alphaproteobacteria
    B30 = 0.0001;%bacili
    B40 = 0.0001;%cyanobacteria
    B50 = 0.0001;%gammaproteobacteria
    B60 = 0.0001;%Spirochaetia
    B70 = 0.0001;%Thaumarchaeota
    
    u0 = [B10; B20; B30; B40; B50; B60; B70];

    [t, u] = ode45('multipopdeqns',[1 tf],u0);
    
    B1 = u(:,1);
    B2 = u(:,2);
    B3 = u(:,3);
    B4 = u(:,4);
    B5 = u(:,5);
    B6 = u(:,6);
    B7 = u(:,7);
    
    %pop1
    matB1 = [B1 t];
    [r1, c1] = size(matB1);
    delta1 = 0;
    for n1 = 1:r1
        if n1 == 1
            delta1 = abs(0.5-matB1(n1,1));
        end
        if abs(0.5-matB1(n1,1)) < delta1
            delta1 = abs(0.5-matB1(n1,1));
            val1 = matB1(n1,2);
        end
    end
    halfvec1(j) = val1;
    
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
    halfvec2(j) = val2;
    
    %pop3
    matB3 = [B3 t];
    [r3, c3] = size(matB3);
    delta3 = 0;
    for n3 = 1:r3
        if n3 == 1
            delta3 = abs(0.5-matB3(n3,1));
        end
        if abs(0.5-matB3(n3,1)) < delta3
            delta3 = abs(0.5-matB3(n3,1));
            val3 = matB3(n3,2);
        end
    end
    halfvec3(j) = val3;
    
    %pop4
    matB4 = [B4 t];
    [r4, c4] = size(matB4);
    delta4 = 0;
    for n4 = 1:r4
        if n4 == 1
            delta4 = abs(0.5-matB4(n4,1));
        end
        if abs(0.5-matB4(n4,1)) < delta4
            delta4 = abs(0.5-matB4(n4,1));
            val4 = matB4(n4,2);
        end
    end
    halfvec4(j) = val4;
    
    %pop5
    matB5 = [B5 t];
    [r5, c5] = size(matB5);
    delta5 = 0;
    for n5 = 1:r5
        if n5 == 1
            delta5 = abs(0.5-matB5(n5,1));
        end
        if abs(0.5-matB5(n5,1)) < delta5
            delta5 = abs(0.5-matB5(n5,1));
            val5 = matB5(n5,2);
        end
    end
    halfvec5(j) = val5;
    
    %pop6
    matB6 = [B6 t];
    [r6, c6] = size(matB6);
    delta6 = 0;
    for n6 = 1:r6
        if n6 == 1
            delta6 = abs(0.5-matB6(n6,1));
        end
        if abs(0.5-matB6(n6,1)) < delta6
            delta6 = abs(0.5-matB6(n6,1));
            val6 = matB6(n6,2);
        end
    end
    halfvec6(j) = val6;
    
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
    halfvec7(j) = val7;
end

plot(tempvec, halfvec1, tempvec, halfvec2, tempvec, halfvec3, tempvec, halfvec4, tempvec, halfvec5, tempvec, halfvec6, tempvec, halfvec7)
legend('Actinobacteria','Alphaproteobacteria','Bacilli','Cyanobacteria','Gammaproteobacteria','Spirochaetia','Thaumarchaeota')
xlabel('Mean Temperature')
ylabel('Days to Achieve 50% Carrying Capacity')