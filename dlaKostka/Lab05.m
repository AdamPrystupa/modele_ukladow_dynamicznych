
%Lab05

clear all;
close all;


omega=5;
u0=0;
t0=0; ts = 10;
du=1;
b=1;
a=1;
tabksi=[5, -2.7, 0, 0.1, -0.45];

for i=1:5
    figure(1);
    ksi=tabksi(i);
    w=omega;
    
    
    subplot(2,5,i); 
    [t] = sim('Lab05Sim.slx',ts);
    plot(t.tout, t.x);
    xlabel('t[s]');
    ylabel('x(t)');
    title(['\xi=' num2str(ksi) ]);
    
   
    lam1=w*(-ksi+sqrt(ksi*ksi-1));
    lam2=w*(-ksi-sqrt(ksi*ksi-1));
    subplot(2,5,i+5);
    real_1=real(lam1);
    imag_1=imag(lam1);
    real_2=real(lam2);
    imag_2=imag(lam2);
   
    hold on;
    plot(real_1, imag_1, 'x');
    plot(real_2, imag_2, 'x');
    xlabel('Re');
    ylabel('Im');
    hold off; 
end



