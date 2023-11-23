% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Ćwiczenie nr 8

clear all;
close all;

%stałe
t0=10;
g=9.8;
ts=100;


%zbiormik I
A1=6;
Aw1=0.6;
H1=5;

%zbiornik II
A2=6;
Aw2=0.6;
H2=4;

%wspolczynniki
a1=sqrt((2*g*Aw1^2*(H1-H2))/(H1-H2)^2);
a2=sqrt((2*g*Aw2^2)/H2);

%maksymalne przepływy
fwmax1=a1*(H1-H2);
fwmax2=a2*H2-fwmax1;

dfw1=0.1*fwmax1;
fw2=0.1*fwmax2;
dfw2=0;  


%Równaine stanu
A =[-a1/A1 a1/A1; a1/A2 -(a1+a2)/A2];
B =[1/A1 0; 0 1/A2];
C= [1,0;0,1];
D= [0,0;0,0];

tabFw1=[0, 0.5*fwmax1, 0.9*fwmax1];
for i=1:3;
fw1=tabFw1(i);

%punkty równowagi
H02=(fw1+fw2)/a2;
H01=(fw1)/a1+H02;
H0=[H01 H02];

[t] = sim('prystupalab8_si.slx',ts);

    figure(1);grid on, hold on; 
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    plot(t.tout, t.up_stanu, 'LineWidth',3);
    xlabel('t [s]',FontSize=15);
    ylabel('h(s)',FontSize=15);
    title('Zbiornik górny');

    figure(2);grid on, hold on; 
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    plot(t.tout, t.down_stanu, 'LineWidth',3);
    xlabel('t [s]',FontSize=15);
    ylabel('h(s)',FontSize=15);
    title('Zbiornik dolny');
end


%Transmitancja
L1 = [A2 a1+a2];
L2 = [a1];
L3 = [A1 a1];
L4 = [a1];
MS = [A1*A2 (A1*a1+A1*a2+A2*a1) a1*a2];

for i=1:3;
fw1=tabFw1(i);
H02=(fw1+fw2)/a2;
H01=(fw1)/a1+H02;



%punkty równowagi
[t] = sim('prystupalab8trans_si.slx',ts);

    figure(3);grid on, hold on; 
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    plot(t.tout, t.uptrans, 'LineWidth',3);
    xlabel('t [s]',FontSize=15);
    ylabel('h(s)',FontSize=15);
    title('Zbiornik górny');

    figure(4);grid on, hold on; 
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    plot(t.tout, t.dauntrans, 'LineWidth',3);
    xlabel('t [s]',FontSize=15);
    ylabel('h(s)',FontSize=15);
    title('Zbiornik dolny');
end

