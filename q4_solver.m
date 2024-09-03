function [Q,Y] = q4_solver(x,T,P)
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
Y(3)=kp1-(x(3)/((x(1)*x(2))^0.5));
Y(4)=kp2-(x(4)/((x(1))^0.5));
Y(5)=kp3-(x(5)/((x(2))^0.5));
temp=x;
w=1.2;
while((Y>ones(1,5)*(10^(-10)))|(Y<ones(1,5)*(-10^(-10))))
x(3)=w*kp1*(temp(1)*temp(2))^0.5+(1-w)*temp(3);
x(4)=w*kp2*(temp(1))^0.5+(1-w)*temp(4);
x(5)=w*kp3*(temp(2))^0.5+(1-w)*temp(5);
x(1)=w*(P-temp(2)-temp(3)-temp(4)-temp(5))+(1-w)*(temp(1));
x(2)=w*0.5*(21/79*(2*temp(1)+temp(3)+temp(4))-temp(3)-temp(5))+(1-w)*(temp(2));
Y(1)=x(1)+x(2)+x(3)+x(4)+x(5)-P;
Y(2)=158*(2*x(2)+x(3)+x(5))-42*(2*x(1)+x(3)+x(4));
Y(3)=kp1-(x(3)/((x(1)*x(2))^0.5));
Y(4)=kp2-(x(4)/((x(1))^0.5));
Y(5)=kp3-(x(5)/((x(2))^0.5));
temp=x;
fprintf("%f %f %f %f %f \n",x(1),x(2),x(3),x(4),x(5));
end
Q=x;