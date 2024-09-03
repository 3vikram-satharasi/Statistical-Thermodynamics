function Y=cv_NO(x)
    syms elec(T)
    elec(T)=diff(T^2*diff(2 +2*exp(-174/T) +2*exp(-63300/T)));
    %elec(T)=diff(T^2*diff(2 +2*exp(-174/T)));
    Y=(double(elec(x))+2.5+ (2740/x)^2*exp(2740/x)/(exp(2740/x)-1)^2)*1.380649*10^(-23);
end