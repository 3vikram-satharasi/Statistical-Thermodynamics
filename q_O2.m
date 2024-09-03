function y = q_O2(T)
y=(3+2*exp(-11400/T))*q_vib(2270,T)*Q_rot(2.1,T)*q_trans(0.032/(6.023*10^23),T)/2;
end