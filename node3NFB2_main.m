K_1=[];
KMB=[10^-7 10^-6 10^-5 10^-4 10^-3 10^-2 10^-1 1 10 100];
Kbc=[4 6 8 10 12 ];
for j=1:1:length(Kbc) 
for k=1:1:length(KMB)
[t,y]=ode45(@(t,y)node3NFB2(t,y,0.3,KMB(k),Kbc(j)),tspan,[0.4;0.64;0.5]);
[t1,y1]=ode45(@(t,y)node3NFB2(t,y,1,KMB(k),Kbc(j)),tspan,y(length(y),:)');
K_1(k)=y1(length(y1),3)/y(length(y),3);
end
plot(log2(KMB),log2(K_1))
hold on
end