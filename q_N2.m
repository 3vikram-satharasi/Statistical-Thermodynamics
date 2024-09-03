function y = q_N2(T)
y=(1+2*exp(-99600/T))*q_vib(3390,T)*Q_rot(2.9,T)*q_trans(0.028/(6.023*10^23),T)/2;
end