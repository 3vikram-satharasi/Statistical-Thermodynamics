function y = H_O(T)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
H_s=(1.380649*10^(-23)/q_O(298.15)*(3*228*exp(-228/298.15) + 326*exp(-326/298.15) + 5*22850*exp(-22850/298.15))+2.5*1.380649*10^(-23)*297.15)*6.023*10^23;
y=(1.380649*10^(-23)/q_O(T)*(3*228*exp(-228/T) + 326*exp(-326/T) + 5*22850*exp(-22850/T))+2.5*1.380649*10^(-23)*T)*6.023*10^23-H_s+249.173*1000;
end