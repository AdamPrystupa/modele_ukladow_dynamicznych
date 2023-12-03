% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Mini-projekt

%zmienne wejściowe
% Tzew
% qg
% fp
%zmienne wyjściowe
% Twew
% Tp

%=======I część (idnetyfikacja) =======
%wartości nominalne
TzewN=-20;
TwewN=20;
TpN=10;
qgN=20000;
Vw=9*6*2.5;
Vp=0.5*Vw;
cpp=1000; rop=1.2;
a1=0.6;
a2=0.4;
%--------------------------------------------
%identyfika parametrów statycznych
fpN=Vp/(12*60*60);
% K2=a1/a2*cpp*rop*fpN;
% Kp=(K2+(cpp*rop*fpN)*(TpN-TzewN))/(TwewN-TpN);
% K1=(qgN-Kp*(TwewN-TpN))/(TwewN-TzewN);

K1=(a1*qgN)/(TwewN-TzewN);
Kp=(a2*qgN)/(TwewN-TpN);
K2=(a2*qgN-cpp*rop*fpN*(TpN-TzewN))/(TpN-TzewN);

% K2=(cpp*rop*fpN*(TpN-TzewN))/(a1*(TwewN-TpN)+TwewN-TzewN);
% Kp=(K2*(TpN-TzewN))/(a1*(TwewN-TpN));
% K1=(qgN+K2*(TwewN-TpN))/(TwewN-TzewN);



%---------------------------------------------
%parametry "dynamiczne"
Cvw=cpp*rop*Vw;
Cvp=cpp*rop*Vp;

%=======II część (punkty pracy) =======
%warunki początkowe
Tzew0=TzewN+0;
qg0=qgN*1.0;
fp0=fpN*1.0;
%---------------------------------------------
%stan równowagi
Twew0=TwewN;
Tp0=TpN;


%=======III część (symulacje) =======
czas=50000; 
%zakłócenie
czas_skok=5000;
dTzew=1;
dqg=0;
dfp=0;


%=======================================
%symulacja
[t]=sim('miniprojekt_si.slx',czas);
%---------------------------------------
%wykresy
    figure(1);grid on, hold on; 
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    plot(t.tout, t.Twew_out, 'LineWidth',3);
    xlabel('czas [s]',FontSize=15);
    ylabel('temperatura [stopnie C]',FontSize=15);
    title('Temperatura wewnątrz');

    figure(2);grid on, hold on; 
    set(gca, 'FontSize', 15, 'FontWeight','bold');
    plot(t.tout, t.Tp_out, 'LineWidth',3);
    xlabel('czas [s]',FontSize=15);
    ylabel('temperatura [stopnie C]',FontSize=15);
    title('Temperatura poddasza');

