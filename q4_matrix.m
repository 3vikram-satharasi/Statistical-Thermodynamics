function Y = q4_matrix(x,T,P)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%kp1=exp((-H_NO(T)+0.5*H_N2(T)+0.5*H_O2(T))/(8.314*T))*q_NO(T)/(q_N2(T)*q_O2(T))^0.5;
kp1=kp_NO(T);
%kp2=(1.380649*10^(-23)*T)^(0.5)*exp((-H_N(T)+0.5*H_N2(T))/(8.314*T))*q_N(T)/(q_N2(T))^0.5;
kp2=kp_N(T);
%kp3=(1.380649*10^(-23)*T)^(0.5)*exp((-H_O(T)+0.5*H_O2(T))/(8.314*T))*q_O(T)/(q_O2(T))^0.5;
kp3=kp_O(T);
Y(1)=x(1)+x(2)+x(3)+x(4)+x(5)-P;
Y(2)=158*(2*x(2)+x(3)+x(5))-42*(2*x(1)+x(3)+x(4));
Y(3)=kp1-(x(3)/(sqrt(x(1)*x(2))));
Y(4)=kp2-(x(4)/((sqrt(x(1)))));
Y(5)=kp3-(x(5)/(sqrt(x(2))));
end