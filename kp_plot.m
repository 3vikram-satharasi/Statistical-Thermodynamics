clc;clear;
T=400:100:6000;
T1=[100 200 250 298.15,300 350 400 450 ];
T1=[T1,500:100:6000];
kp=zeros(length(T),3);
kp_data=zeros(length(T1),3);
kp_data(:,1)=importdata("data_KpNO.txt");
kp_data(:,2)=importdata("data_KpN.txt");
kp_data(:,3)=importdata("data_KpO.txt");
kp_data([1 2 3 4 5 6],:)=[];
T1([1 2 3 4 5 6])=[];
for j=1:length(T)
    kp(j,1)=log10(kp_NO(T(j)));
    kp(j,2)=log10(kp_N(T(j)));
    kp(j,3)=log10(kp_O(T(j)));
end
figure(1)
plot(T1,kp_data(:,1),"LineWidth",1.5,"DisplayName","Data from JANAF","Marker","*");
hold on;
plot(T,kp(:,1),"LineWidth",1.5,"DisplayName","Calculated Data");
hold off;
title("K_P for NO");
xlabel("Temperature");
ylabel("log(K_p)");
grid minor;
legend("Location","northwest");
figure(2)
plot(T1,kp_data(:,2),"LineWidth",1.5,"DisplayName","Data from JANAF","Marker","*");
hold on;
plot(T,kp(:,2),"LineWidth",1.5,"DisplayName","Calculated Data");
hold off;
title("K_P for N");
xlabel("Temperature");
ylabel("log(K_p)");
grid minor;
legend("Location","northwest");
figure(3)
plot(T1,kp_data(:,3),"LineWidth",1.5,"DisplayName","Data from JANAF","Marker","*");
hold on;
plot(T,kp(:,3),"LineWidth",1.5,"DisplayName","Calculated Data");
hold off;
title("K_P for O");
xlabel("Temperature");
ylabel("log(K_p)");
grid minor;
legend("Location","northwest");
kp_data(8,:)=[];
figure(4)
plot(T,(kp(:,2)-kp_data(:,2)))
hold on;
plot(T,(kp(:,3)-kp_data(:,3)))
plot(T,(kp(:,1)-kp_data(:,1)))
hold off;