function Y=cv_N(x)
    syms elec(T)
    elec(T)=diff(T^2*diff(4 + 6*exp(-27658.7/T) + 4*exp(-27671.7/T) + 6*exp(-41492.4/T)));
    %elec(T)=diff(T^2*diff(4 + 6*exp(-27658.7/T)));
    Y=(double(elec(x))+1.5)*1.380649*10^(-23);
end