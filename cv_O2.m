function Y=cv_O2(x)
    syms elec(T)
    elec(T)=diff(T^2*diff(3 +2*exp(-11400/T)));
    Y=(double(elec(x))+2.5+ (2270/x)^2*exp(2270/x)/(exp(2270/x)-1)^2)*1.380649*10^(-23);
end