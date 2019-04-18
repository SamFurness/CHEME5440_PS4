%Sam Furness
%CHEME5440 HW4

%This code solves the system of differential equations in a two-state
%chemotaxis model. funsys.m is called (the function with the differential
%equations).


%Set up a range of time 
tspan=linspace(0,1000,100);
%Set up initial conditions
DE0=zeros(7,1);
DE0(3)=0;%uM for E1star at steady state
DE0(1)=10-DE0(3);%uM for E0 (unchanged receptor)
DE0(4)=2;%uM for B

[t,DE]=ode45(@funsys,tspan,DE0);

figure(1)
%plot(tspan,DE(:,1));
%plot(tspan,DE(:,2));
plot(tspan,DE(:,3));
%plot(tspan,DE(:,4));
%plot(tspan,DE(:,5));
%plot(tspan,DE(:,6));
%plot(tspan,DE(:,7));
xlabel('Time in Seconds')
ylabel('Active and Methylated Receptor Concentration (uM)')
title('Attractant Response in Chemotaxis for 0->1')