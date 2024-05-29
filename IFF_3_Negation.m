% This code simulates the three-node coherent feedforward network for different initial conditions. Fig. 3-d of the main manuscript.

tspan=[0 15];
y0=30*lhsdesign(3,100);
for k=1:1:100
[t,y]=ode45(@(t,y)node3IFFN(t,y,0),tspan,y0(:,k));
[t1,y1]=ode45(@(t,y)node3IFFN(t,y,0.3),tspan,y(length(y),:)');
[t2,y2]=ode45(@(t,y)node3IFFN(t,y,1),tspan,y1(length(y1),:)');
t=[t;t(end)+t1;t1(end)+t(end)+t2];
plot(t,[y(:,3);y1(:,3);y2(:,3)]/max([y(:,3);y1(:,3);y2(:,3)]))
hold on
end
