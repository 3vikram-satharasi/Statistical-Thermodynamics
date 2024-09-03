function y= Q_rot(theta,T)
    k1=0;
    k2=0;
    j=0;
    while(k2-k1>=10^-6||k2==0)
        k1=k2;
        k2=k2+(2*j+1)*exp(-j*(j+1)*(theta/T));
        j=j+1;
    end
    y=k2;
end