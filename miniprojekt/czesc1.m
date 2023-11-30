% Adam Prystupa 275496
% Grupa 1  Wtorek 7:30
% Mini-projekt

%zmienne wejściowe
%zmienne wyjściowe

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
fpN=Vw/(12*60*60);
K2=a1/a2*cpp*rop*fpN;
Kp=(K2+(cpp*rop*fpN)*(TpN-TzewN))/(TwewN-TpN);
K1=(qgN-Kp*(TwewN-TpN))/(TwewN-TzewN);
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
Twew0=
Tp0=

%=======III część (symulacje) =======
czas=50000; 
%zakłócenie
czas_skok=5000;
dTzew=1;
dqg=0;
dfp=0;

