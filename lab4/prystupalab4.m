% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Ćwiczenie nr 3

clear all;
close all;

a0 = 9;
a1 = 6;
b = 4;
k = 1/a1;



% u0 = 5;
% x0 = 0;
% t0 = 1;
% d0 = 0;
% du=0;
% 
% sim('prystupalab4_si.slx');
% figure;
% grid on, hold on;
% set(gca, 'FontSize', 15, 'FontWeight','bold');
% plot(ans.tout, ans.simout, 'LineWidth',3);
% ylabel('x(t)',FontSize=15);
% xlabel('t(s)',FontSize=15);

u0 = 5;
x0 = 0;
t0 = 0;
d0 = 0;
du=0;
x = [20/9, -20/9, 0, 11];
for i=1 : length(x)
x0=x(i);
sim('prystupalab4_si.slx');
figure;
grid on, hold on;
set(gca, 'FontSize', 15, 'FontWeight','bold');
plot(ans.tout, ans.simout, 'LineWidth',3);
ylabel('x(t)',FontSize=15);
xlabel('t(s)',FontSize=15);
end;



figure;
hold on;
grid on;
set(gca, 'FontSize', 15, 'FontWeight','bold');

xlabel('t',FontSize=15);
ylabel('x(t)',FontSize=15);
t=0:0.1:10;
xx1 = 0*t+20/9;
plot(t,xx1,'r', 'LineWidth',3);
legend( 'x(t) = 20/9 ',FontSize=15);
%title('Warunek początkowy pochodna x(0)=0')

figure;
hold on;
grid on;
set(gca, 'FontSize', 15, 'FontWeight','bold');

xlabel('t',FontSize=15);
ylabel('x(t)',FontSize=15);
t=0:0.1:10;
xx2 = -26/3*exp(-3/2*t)+xx1;
xs2 = -26/3*exp(-3/2*t);
plot(t,xx2,'g', 'LineWidth',3);
plot(t,xx1,'b --', 'LineWidth',3);
plot(t,xs2,'r --', 'LineWidth',3);
legend( 'x(t)=-26/3*exp(-3/2*t)+20/9','x0(t) = 20/9 ' ,'x(t)=-26/3*exp(-3/2*t)','Location','southeast',FontSize=15);
%title('Warunek początkowy pochodna x(0)=13')


figure;
hold on;
grid on;
set(gca, 'FontSize', 15, 'FontWeight','bold');

xlabel('t',FontSize=15);
ylabel('x(t)',FontSize=15);
t=0:0.1:10;
xx3 = -20/9*exp(-3/2*t)+xx1;
xs3 = -20/9*exp(-3/2*t);
plot(t,xx3,'g', 'LineWidth',3);
plot(t,xx1,'b --', 'LineWidth',3);
plot(t,xs3,'r --', 'LineWidth',3);
legend( 'x(t)=-20/9*exp(-3/2*t)+20/9','x0(t) = 20/9 ','x(t)=-20/9*exp(-3/2*t)+20/9','Location','southeast',FontSize=15);
%title('Warunek początkowy x(0)=0')

figure;
hold on;
grid on;
set(gca, 'FontSize', 15, 'FontWeight','bold');

xlabel('t',FontSize=15);
ylabel('x(t)',FontSize=15);
t=0:0.1:10;
xx4 = 79/9*exp(-3/2*t)+xx1;
xs4 = 79/9*exp(-3/2*t);
plot(t,xx4,'g', 'LineWidth',3);
plot(t,xx1,'b --', 'LineWidth',3);
plot(t,xs4,'r --', 'LineWidth',3);
legend( 'x(t)=-79/9*exp(-3/2*t)+20/9','x0(t) = 20/9 ','x(t)=-79/9*exp(-3/2*t)',FontSize=15);
%title('Warunek początkowy x(0)=11')










hold off;