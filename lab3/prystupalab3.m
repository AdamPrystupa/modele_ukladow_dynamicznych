% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Ćwiczenie nr 3

clear all;
close all;



t=[0:0.1:10];
x_sz1=3*exp(-t)-3/2*exp(-2*t)+1/2;
x_sz2=3/2*exp(-2*t)-5*exp(-t)+1/2;
x_skok=-1*exp(-t)+1/2*exp(-2*t)+1/2;
x_skoks=1/2*exp(-2*t)-1*exp(-t);
x_impuls=-1*exp(-2*t)+exp(-t);
x_s1=3*exp(-t)-3/2*exp(-2*t);
x_s2=3/2*exp(-2*t)-5*exp(-t);
x_w=0*t+1/2;



figure;
hold on;
grid on;

    plot(t,x_sz1,'-');
    plot(t,x_s1,'--');
    plot(t,x_w,'.');
    xlabel('t [s]');
    ylabel('x(t)');
    legend('x_s_z_1','x_swobodne','x_w');
    title('rozwiązanie dla wymuszenia stałego 1');

figure;
hold on;
grid on;

    plot(t,x_sz2,'-');
    plot(t,x_s2,'--');
    plot(t,x_w,'.');
    xlabel('t [s]');
    ylabel('x(t)');
    legend('x_s_z_2','x swobodne','x_w')
    title('rozwiązanie dla wymuszenia stałego 2');

figure
hold on;
grid on;
plot(t,x_skok,'-');
    plot(t,x_skoks,'--');
    plot(t,x_w,'.');
    xlabel('t [s]');
    ylabel('x(t)');
    legend('x skokowe','x swobodne','x_w')
    title('rozwiązanie dla wymuszenia skokowego');

    figure
hold on;
grid on;
plot(t,x_impuls,'-');
    xlabel('t [s]');
    ylabel('x(t)');
    legend('x impulsowe')
    title('rozwiązanie dla wymuszenia impulsowego');


figure;
hold on;
grid on;
    plot(t,x_sz1,'-');
    plot(t,x_w,'--');
    plot(t,x_sz2,'-');
    plot(t,x_skok,'-');
    xlabel('t [s]');
    ylabel('x(t)');
    legend('x_s_z_1','x_w','x_s_z_2','x skokowe')
    title('porównanie wyników');




hold off;