clc;clear;
T=400:100:10000;
mole_fractions=zeros(length(T),5);
%kp=zeros(length(T),3);
%extval=zeros(length(T),1);
%fval=zeros(length(T),5);
%options=optimoptions("fsolve","FiniteDifferenceStepSize",10^-3);
syms p_o2 p_n2
eqns=[p_o2+p_n2+kpno*sqrt(p_o2*p_n2)+kpn*sqrt(p_n2)+kpo*sqrt(p_o2)==0.05,];
for j=1:length(T)
    %[composition(j,:),fval(j,:)]=q4_solver(temp,T(j),0.05);
end
figure(1)
for j=1:5
    semilogy(T,(composition(:,j)./0.05),"LineWidth",1.5);
    hold on;    
end
hold off;
legend("N_2","O_2","NO","N","O","Location","best")