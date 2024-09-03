function y=kp_NO(T) 
y=exp((-59500*0.5-113000*0.5+75500)/(T))*q_NO(T)/(q_N2(T)*q_O2(T))^0.5;
end