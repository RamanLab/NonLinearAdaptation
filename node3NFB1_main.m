tspan=[0 500];
P=lhsdesign(11,1000);
K_1=[];
p=1;
M=[];
for k=1:1:1000
    t=[];
[t,y]=ode15s(@(t,y)node3NFB1(t,y,0,P(:,k)),tspan,[0;0;0]);
[t1,y1]=ode15s(@(t,y)node3NFB1(t,y,1,P(:,k)),tspan,y(length(y),:)');
t=[t;t(end)+t1];
M(k)=max(y1(:,1))-y(length(y),1);
% if (M>=0.5)
K_1(k)=y1(length(y1),1)/y(length(y),1);
% end
% p=p+1;
end
stem(log2(K_1(find(M>=0.5))))