function y = H_NO(T)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
H_s=(1.380649*10^(-23)/q_NO(298.15)*(2*174*exp(-174/298.15) +2*63300*exp(-63300/298.15))+e_vib(2740,297.15)+3.5*1.380649*10^(-23)*297.15)*6.023*10^23;
y=(1.380649*10^(-23)/q_NO(T)*(2*174*exp(-174/T) +2*63300*exp(-63300/T))+e_vib(2740,T)+3.5*1.380649*10^(-23)*T)*6.023*10^23-H_s+ 90.291*1000;
end