function y = q_O(T)
y=(5 + 3*exp(-228/T) + exp(-326/T) + 5*exp(-22850/T))*q_trans(0.016/(6.023*10^23),T);
end