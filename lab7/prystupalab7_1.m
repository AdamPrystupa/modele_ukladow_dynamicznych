% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Ćwiczenie nr 7

clear all;
close all;

%stałe
t0=5;
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
% a1=sqrt(2*g*Aw1^2/H1^2);
% a2=sqrt(2*g*Aw2^2/H2^2);

%maksymalne przepływy
fwmax1=Aw1*sqrt(2*g*(H1-H2));
fwmax2=Aw2*sqrt(2*g*H2)-Aw1*sqrt(2*g*H1-H2);

% dfw1=0.1*fwmax1;
% fw2=0.1*fwmax1;
% dfw2=0;  

dfw2=0.1*fwmax1;
fw1=0.1*fwmax1;
dfw1=0;  

tabFw1=[0, 0.5*fwmax1, 0.9*fwmax1];
for i=1:3;
% fw1=tabFw1(i);
fw2=tabFw1(i);


    
%punkty równowagi
H20=(fw2+fw1)^2/(Aw2^2*2*g);
H10=(fw1^2)/(Aw1^2*2*g)+H20;


[t] = sim('prystupalab7_1_si.slx',ts);

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








