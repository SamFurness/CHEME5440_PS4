function DE = funsys(t,Y)
%Define Paramters
L=1;
receptor=10;
R=0.2;
B=2;
kr=0.1;
VRMax=kr*R;
a1plus=1/(1+L);
a1min=L/(L+1);
beta=2.5*L/(1+L);
abp=100;%s^-1uM^-1
dbp=0.01;
kbp=1;
ab=1000;%s^-1uM^-1
db=1;
kb=0;
kmin=1;
kplus=1;
%Extract variables
E0=Y(1);
E1=Y(2);
E1star=Y(3);
B=Y(4);
Bp=Y(5);
E1B=Y(6);
E1Bp=Y(7);
%Write the differential equations
DE(1,1)=kbp*E1Bp+kb*E1B-VRMax;
DE(2,1)=a1min*E1star-a1plus*E1+VRMax+E1B*beta+E1Bp*beta;
DE(3,1)=a1plus*E1-a1min*E1star-E1star*Bp*abp+E1Bp*dbp-E1star*B*ab+E1B*db;
DE(4,1)=-ab*E1star*B+kb*E1B+E1B*beta+db*E1B+kmin*Bp-kplus*E1star*B;
DE(5,1)=-abp*E1star*Bp+(kbp+beta+dbp)*E1Bp-kmin*Bp+kplus*E1star*B;
DE(6,1)=-db*E1B+ab*E1star*B-beta*E1B-kb*E1B;
DE(7,1)=-dbp*E1Bp+abp*E1star*Bp-beta*E1Bp-kbp*E1Bp;
end













