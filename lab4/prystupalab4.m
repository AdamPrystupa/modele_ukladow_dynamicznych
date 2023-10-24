% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Ćwiczenie nr 3

clear all;
close all;

a0 = 9;
a1 = 6;
b = 4;
k = 1/a1;

u0 = 5;
x0 = 0;
t0 = 0;
d0 = 0;

x = [20/9, -20/9, 0, 11];

for i=1 : length(x)
x0=x(i);
sim('prystupalab4_si.slx');
figure;
grid on, hold on;
plot(ans.tout, ans.simout);
ylabel('x(t)');
xlabel('t(s)');
end;



figure;
hold on;
grid on;

xlabel('t');
ylabel('x(t)');
t=0:0.1:10;
xx1 = 0*t+20/9;
plot(t,xx1,'r');
legend( 'x(t) = 20/9 ');
title('Warunek początkowy pochodna x(0)=0')

figure;
hold on;
grid on;

xlabel('t');
ylabel('x(t)');
t=0:0.1:10;
xx2 = -26/3*exp(-3/2*t)+xx1;
xs2 = -26/3*exp(-3/2*t);
plot(t,xx2,'g');
plot(t,xx1,'b .');
plot(t,xs2,'r --');
legend( 'x(t)=-26/3*exp(-3/2*t)+20/9','x0(t) = 20/9 ' ,'x(t)=-26/3*exp(-3/2*t)');
title('Warunek początkowy pochodna x(0)=13')


figure;
hold on;
grid on;

xlabel('t');
ylabel('x(t)');
t=0:0.1:10;
xx3 = -20/9*exp(-3/2*t)+xx1;
xs3 = -20/9*exp(-3/2*t);
plot(t,xx3,'g');
plot(t,xx1,'b .');
plot(t,xs3,'r --');
legend( 'x(t)=-20/9*exp(-3/2*t)+20/9','x0(t) = 20/9 ','x(t)=-20/9*exp(-3/2*t)+20/9');
title('Warunek początkowy x(0)=0')

figure;
hold on;
grid on;

xlabel('t');
ylabel('x(t)');
t=0:0.1:10;
xx4 = 79/9*exp(-3/2*t)+xx1;
xs4 = 79/9*exp(-3/2*t);
plot(t,xx4,'g');
plot(t,xx1,'b .');
plot(t,xs4,'r --');
legend( 'x(t)=-79/9*exp(-3/2*t)+20/9','x0(t) = 20/9 ','x(t)=-79/9*exp(-3/2*t)');
title('Warunek początkowy x(0)=11')










hold off;