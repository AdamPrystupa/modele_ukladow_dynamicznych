% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Ćwiczenie nr 6

clear all;
close all;

%stałe
t0=5;
g=9.8;
ts=50;


%zbiormik I
A1=6;
Aw1=0.6;
H1=4;

%zbiornik II
A2=9;
Aw2=0.9;
H2=5;

%wspolczynniki
a1=sqrt((2*g*Aw1^2)/H1^2);
a2=sqrt((2*g*Aw2^2)/H2^2);

%maksymalne przepływy
fwmax1=a1*H1;
fwmax2=a2*H2;

dfw1=0.1*fwmax1;
fw2=0.1*fwmax1;
dfw2=0;  

tabFw1=[0, 0.5*fwmax1, 0.9*fwmax1];
for i=1:3;
fw1=tabFw1(i);


    
%punkty równowagi
H01=fw1/a1;
H02=(fw2+fw1)/a2;
[t] = sim('prystupalab6_si.slx',ts);

    figure(1);grid on, hold on; 
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    plot(t.tout, t.up, 'LineWidth',3);
    xlabel('t [s]',FontSize=15);
    ylabel('h(s)',FontSize=15);
    title('Zbiornik górny');

    figure(2);grid on, hold on; 
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    plot(t.tout, t.down, 'LineWidth',3);
    xlabel('t [s]',FontSize=15);
    ylabel('h(s)',FontSize=15);
    title('Zbiornik dolny');
end





