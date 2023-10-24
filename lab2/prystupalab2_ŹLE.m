% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Ćwiczenie nr 2

clear all;
close all;

TzewN = -20;
TwewN = 20;
TpN = 10;
qgN = 1000;
A = 0.3;
B = 0.7;

Kcp = (B*qgN)/(TpN - TzewN);
Kcw = (A.*qgN)/(TwewN -TzewN);
Kcwp=0.25*Kcw;

figure;
hold on;
grid on;
 Tzew =[-20:5:30];
 qg = [0:500:2000];

 for i = 1:1:length(qg)

    a1 = - Kcw - a * Kcw;
    a2 = a * Kcw;
    a3 = a * Kcw;
    a4 = - a * Kcw - Kcp;
    
    b1 = - qg - Kcw * Tzew;
    b2 = - Kcp * Tzew;
    
    A = [ a2; a3 a4];
    b = [b1; b2];

    x = inv(A)*b;   
    Twew_sol(i) = x(1);
    Tp_sol(i) = x(2);
end
  


hold off;



