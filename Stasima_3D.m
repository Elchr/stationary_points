clc; clear;
%Σχεδιασμός διανυσμάτων σε σφαίρα
figure(1)
hold on;
for i=1:1:100
    th=2*pi*rand; 
    phi=pi*rand();
    
    quiver3(1,cos(phi).*sin(th),sin(th).*sin(phi),cos(th));
end

%Μέθοδος Monte Carlo για 3Δ και στάσιμα σημεία

A=[1.5 -0.5 0; -0.5 1.5 0; 0 0 3];    %Δοσμένος πίνακας Α(3x3)

for i=1:1000000
 phi(i)=rand()*pi;                    %Δημιουργία ψευδοτυχαίου αριθμού από 0 έως 2π για τη γωνία φ
 costheta(i)=-1+rand()*2;             %Δημιουργία ψευδοτυχαίου αριθμού από -1 έως 1 για το cosθ
 sintheta(i)=sqrt(1-(costheta(i)).^2);%Υπολογισμός του sinθ
 h=[cos(phi(i)).*sintheta(i); sin(phi(i)).*sintheta(i); costheta(i)]; %Διάνυσμα η πάνω στη σφαίρα
 k=h';                                %Ανάστροφο του διανύσματος η
 R(i)=k*A*h;                          %Πίνακας R 
 
end
figure(2)
histogram(R)