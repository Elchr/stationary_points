clc; clear;
%���������� ����������� �� ������
figure(1)
hold on;
for i=1:1:100
    th=2*pi*rand; 
    phi=pi*rand();
    
    quiver3(1,cos(phi).*sin(th),sin(th).*sin(phi),cos(th));
end

%������� Monte Carlo ��� 3� ��� ������� ������

A=[1.5 -0.5 0; -0.5 1.5 0; 0 0 3];    %�������� ������� �(3x3)

for i=1:1000000
 phi(i)=rand()*pi;                    %���������� ������������ ������� ��� 0 ��� 2� ��� �� ����� �
 costheta(i)=-1+rand()*2;             %���������� ������������ ������� ��� -1 ��� 1 ��� �� cos�
 sintheta(i)=sqrt(1-(costheta(i)).^2);%����������� ��� sin�
 h=[cos(phi(i)).*sintheta(i); sin(phi(i)).*sintheta(i); costheta(i)]; %�������� � ���� ��� ������
 k=h';                                %��������� ��� ����������� �
 R(i)=k*A*h;                          %������� R 
 
end
figure(2)
histogram(R)