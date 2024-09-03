function y = H_O2(T)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
H_s=(1.380649*10^(-23)/q_O(298.15)*(2*11400*exp(-11400/T))+e_vib(2270,297.15)+3.5*1.380649*10^(-23)*297.15)*6.023*10^23;
y=(1.380649*10^(-23)/q_O(T)*(2*11400*exp(-11400/T))+e_vib(2270,T)+3.5*1.380649*10^(-23)*T)*6.023*10^23-H_s;
end