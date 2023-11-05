% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Ćwiczenie nr 5

clear all;
close all;

omega=[2,3,4,5];
u0=0;
t0=0; 
du=1;

a=1;
ts = 10;
tabelaksi=[0.2,0.4,0.6,0.8];


% for i=1:4
% 
%     figure(1);grid on, hold on; 
%     set(gca, 'FontSize', 15, 'FontWeight','bold');
%     ksi=tabelaksi(1);
%     b=omega(i)^2;
%     w=omega(i);
% 
% 
%     [t] = sim('prystupalab5_si.slx',ts);
% 
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
% 
%     figure(2);grid on, hold on; 
%     set(gca, 'FontSize', 15, 'FontWeight','bold');
%     plot(real_1, imag_1, 'bx', 'LineWidth',5);
%     plot(real_2, imag_2, 'bx', 'LineWidth',5);
%     xlabel('Re',FontSize=15);
%     ylabel('Im',FontSize=15);
% end
% 
% for i=1:4
% 
%     figure(3);grid on, hold on;
%     set(gca, 'FontSize', 15, 'FontWeight','bold');
%     ksi=tabelaksi(i);
%     b=omega(1)^2;
%     w=omega(1);
% 
% 
%     [t] = sim('prystupalab5_si.slx',ts);
% 
%     plot(t.tout, t.simout, 'LineWidth',3);
%     xlabel('t[s]',FontSize=15);
%     ylabel('x(t)',FontSize=15);
%     title(['\omega=' num2str(omega(1))]);
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
% 
%     figure(4);  grid on, hold on; 
%     set(gca, 'FontSize', 15, 'FontWeight','bold');
%     plot(real_1, imag_1, 'bx', 'LineWidth',5);
%     plot(real_2, imag_2, 'bx', 'LineWidth',5);
%     xlabel('Re',FontSize=15);
%     ylabel('Im',FontSize=15);
% 
% end


omega1 = [12,6,4,3];

for i=1:4
    % \xi * \omega = const;

    figure(5);grid on, hold on;
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    ksi=tabelaksi(i);
    b=omega(1)^2;
    w=omega1(i);


    [t] = sim('prystupalab5_si.slx',ts);

    plot(t.tout, t.simout, 'LineWidth',3);
    xlabel('t[s]',FontSize=15);
    ylabel('x(t)',FontSize=15);
    title('Re=2,4');


    lam1=w*(-ksi+sqrt(ksi*ksi-1));
    lam2=w*(-ksi-sqrt(ksi*ksi-1));

    real_1=real(lam1);
    imag_1=imag(lam1);
    real_2=real(lam2);
    imag_2=imag(lam2);


    figure(6);  grid on, hold on; 
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    plot(real_1, imag_1, 'bx', 'LineWidth',5);
    plot(real_2, imag_2, 'bx', 'LineWidth',5);
    xlabel('Re',FontSize=15);
    ylabel('Im',FontSize=15);

end

hold off;