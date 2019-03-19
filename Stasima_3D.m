clc; clear;
%Draw vectors in a sphere
figure(1)
hold on;
for i=1:1:100
    th=2*pi*rand; 
    phi=pi*rand();
    
    quiver3(1,cos(phi).*sin(th),sin(th).*sin(phi),cos(th));
end

%Monte Carlo in 3D

A=[1.5 -0.5 0; -0.5 1.5 0; 0 0 3];    %Given table Α(3x3)

for i=1:1000000
 phi(i)=rand()*pi;                    %Random Number Generator from 0 to 2π for phi angle
 costheta(i)=-1+rand()*2;             %Random Number Generator from -1 to 1 for cos(theta)
 sintheta(i)=sqrt(1-(costheta(i)).^2);%Calculate sin(theta)
 h=[cos(phi(i)).*sintheta(i); sin(phi(i)).*sintheta(i); costheta(i)]; %Vecto heta on sphere
 k=h';                                %heta'
 R(i)=k*A*h;                          % R table
 
end
figure(2)
histogram(R)
