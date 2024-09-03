function Y=cv_O(x)
    syms elec(T)
    elec(T)=diff(T^2*diff(5 + 3*exp(-228/T) + exp(-326/T) + 5*exp(-22850/T)));
    %elec(T)=diff(T^2*diff(5 + 3*exp(-228/T)));
    Y=(double(elec(x))+1.5)*1.380649*10^(-23);
end