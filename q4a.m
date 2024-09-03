clear;
T=400:100:10000;
mole_fractions=zeros(length(T),5);
C_V=zeros(length(T),5);
C_Vnet=zeros(length(T),1);
gamma=zeros(length(T),1);
%kp=zeros(length(T),3);
%extval=zeros(length(T),1);
%fval=zeros(length(T),5);
%options=optimoptions("fsolve","FiniteDifferenceStepSize",10^-3);
syms p_o2 p_n2 p_no p_n p_o
for j=1:length(T)
    equations=[p_o2+p_n2+p_no+p_n+p_o==0.05, 79*(2*p_o2+p_no+p_o) == 21*(2*p_n2+p_no+p_n), kp_NO(T(j))==p_no/sqrt(p_n2*p_o2),kp_N(T(j))==p_n/sqrt(p_n2),kp_O(T(j))==p_o/sqrt(p_o2)];
    temp=solve(equations, [p_o2,p_n2, p_no, p_n, p_o]);
    mole_fractions(j,1)=abs(double(temp.p_n2(1,1)))/0.05;
    mole_fractions(j,2)=abs(double(temp.p_o2(1,1)))/0.05;
    mole_fractions(j,3)=abs(double(temp.p_no(1,1)))/0.05;
    mole_fractions(j,4)=abs(double(temp.p_n(1,1)))/0.05;
    mole_fractions(j,5)=abs(double(temp.p_o(1,1)))/0.05;
end
figure(1)
semilogy(T,mole_fractions(:,1),"DisplayName","N_2");
hold on;
semilogy(T,mole_fractions(:,2),"DisplayName","O_2");
semilogy(T,mole_fractions(:,3),"DisplayName","NO");
semilogy(T,mole_fractions(:,4),"DisplayName","N");
semilogy(T,mole_fractions(:,5),"DisplayName","O");
grid minor;
hold off;
xlabel("Temperature (In K)");
ylabel("Mole Fraction");
axis([400 10000 10^-5 1]);
title("Components of Atmosphere vs Temperature.");
legend("Location","best");
%code for part b
for j=1:length(T)
    C_V(j,1)=cv_N2(T(j));
    C_V(j,2)=cv_O2(T(j));
    C_V(j,3)=cv_NO(T(j));
    C_V(j,4)=cv_N(T(j));
    C_V(j,5)=cv_O(T(j));
    C_Vnet(j)=mole_fractions(j,1)*C_V(j,1)+mole_fractions(j,2)*C_V(j,2)+mole_fractions(j,3)*C_V(j,3)+mole_fractions(j,4)*C_V(j,4)+mole_fractions(j,5)*C_V(j,5);
    gamma(j)=(C_Vnet(j)+1.380649*10^(-23))/C_Vnet(j);
end
figure(2)
plot(T,gamma,"LineWidth",1.5,"DisplayName","\gamma(T)");hold on;
xline(1200,"LineWidth",1.5,"DisplayName","M=5","Color",'r');
xline(4200,"LineWidth",1.5,"DisplayName","M=10",'Color','b');
xline(9200,"LineWidth",1.5,"DisplayName","M=15","Color",'m');
grid minor;
xlabel("Temperature (in K)");
ylabel("\gamma");
title("Variation of \gamma with Temperature");
legend("Location","best");