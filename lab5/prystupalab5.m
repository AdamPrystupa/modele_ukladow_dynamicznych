% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Ćwiczenie nr 5

% clear all;
% close all;
% 
% 
% omega=7;
% u0=0;
% t0=0; 
% du=1;
% b=1;
% a=1;
% tss = [20,0.3,10,8,10];
% tabelaksi=[7, -2.9, 0, 0.2, -0.25];
% 
% for i=1:5
% 
%     ksi=tabelaksi(i);
%     w=omega;
% 
% 
%     ts=tss(i);
%     [t] = sim('prystupalab5_si.slx',ts);
%     figure;
%     grid on, hold on;
%     set(gca, 'FontSize', 15, 'FontWeight','bold');
%     plot(t.tout, t.simout, 'LineWidth',3);
%     xlabel('t[s]',FontSize=15);
%     ylabel('x(t)',FontSize=15);
%     title(['\xi=' num2str(ksi)]);
% 
% 
%     lam1=w*(-ksi+sqrt(ksi*ksi-1));
%     lam2=w*(-ksi-sqrt(ksi*ksi-1));
% 
%     real_1=real(lam1);
%     imag_1=imag(lam1);
%     real_2=real(lam2);
%     imag_2=imag(lam2);
% 
%     figure; 
%     set(gca, 'FontSize', 15, 'FontWeight','bold');
%     grid on, hold on;
%     plot(real_1, imag_1, 'x', 'LineWidth',3);
%     plot(real_2, imag_2, 'x', 'LineWidth',3);
%     xlabel('Re',FontSize=15);
%     ylabel('Im',FontSize=15);
%     hold off; 
% end

clear all;
close all;


omega=[1,2,3,4,5];
u0=0;
t0=0; 
du=1;

a=1;
ts = 10;
tabelaksi=[0.2,0.4,0.6,0.8];

  

    set(gca, 'FontSize', 15, 'FontWeight','bold');


for i=1:5
    grid on, hold on; 
    figure(1);
    ksi=tabelaksi(1);
    b=omega(i)^2;
    w=omega(i);


    [t] = sim('prystupalab5_si.slx',ts);

    plot(t.tout, t.simout, 'LineWidth',3);
    xlabel('t[s]',FontSize=15);
    ylabel('x(t)',FontSize=15);
    title(['\xi=' num2str(ksi)]);


    lam1=w*(-ksi+sqrt(ksi*ksi-1));
    lam2=w*(-ksi-sqrt(ksi*ksi-1));

    real_1=real(lam1);
    imag_1=imag(lam1);
    real_2=real(lam2);
    imag_2=imag(lam2);

    grid on, hold on; 
    figure(2);
    plot(real_1, imag_1, 'x', 'LineWidth',3);
    plot(real_2, imag_2, 'x', 'LineWidth',3);
    xlabel('Re',FontSize=15);
    ylabel('Im',FontSize=15);
    hold off; 
end

for i=1:5
    grid on, hold on; 
    figure(3);
    ksi=tabelaksi(i);
    b=omega(1)^2;
    w=omega(1);
    
    
    [t] = sim('prystupalab5_si.slx',ts);

    plot(t.tout, t.simout, 'LineWidth',3);
    xlabel('t[s]',FontSize=15);
    ylabel('x(t)',FontSize=15);
    title(['\xi=' num2str(ksi)]);


    lam1=w*(-ksi+sqrt(ksi*ksi-1));
    lam2=w*(-ksi-sqrt(ksi*ksi-1));

    real_1=real(lam1);
    imag_1=imag(lam1);
    real_2=real(lam2);
    imag_2=imag(lam2);
  
    grid on, hold on; 
    figure(4);
    plot(real_1, imag_1, 'rx', 'LineWidth',3);
    plot(real_2, imag_2, 'rx', 'LineWidth',3);
    xlabel('Re',FontSize=15);
    ylabel('Im',FontSize=15);
    hold off; 
end
