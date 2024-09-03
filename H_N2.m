function y = H_N2(T)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
H_s=(1.380649*10^(-23)/q_N2(298.15)*(2*99600*exp(-99600/297.15))+e_vib(3390,297.15)+3.5*1.380649*10^(-23)*297.15)*6.023*10^23;
y=(1.380649*10^(-23)/q_N2(T)*(2*99600*exp(-99600/T))+e_vib(3390,T)+3.5*1.380649*10^(-23)*T)*6.023*10^23-H_s;
end