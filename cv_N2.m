function Y=cv_N2(x)
    syms elec(T)
    elec(T)=diff(T^2*diff(1 +2*exp(-99600/T)));
    Y=(double(elec(x))+2.5+ (3390/x)^2*exp(3390/x)/(exp(3390/x)-1)^2)*1.380649*10^(-23);
end