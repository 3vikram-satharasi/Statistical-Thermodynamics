function y = q_NO(T)
y=(2+2*exp(-174/T)+2*exp(-63300/T))*q_vib(2740,T)*Q_rot(2.44,T)*q_trans(0.030/(6.023*10^23),T);
end