y0=100*lhsdesign(5,100);
figure
tspan=[0 100];
subplot(1,3,1)
plot(out.tout,out.Input)
ylim([0 600])
subplot(1,3,2)
plot(out.tout,out.yk_non_lin1/max(out.yk_non_lin1))
hold on
plot(out.tout,out.yk_non_lin2/max(out.yk_non_lin2))
hold on
plot(out.tout,out.yk_non_lin3/max(out.yk_non_lin3))
hold on
plot(out.tout,out.yk_non_lin4/max(out.yk_non_lin4))
hold on
plot(out.tout,out.yk_non_lin5/max(out.yk_non_lin5))
hold off
figure
for k=1:1:100
[t,y]=ode45(@(t,y)node5NFB(t,y,50),tspan,y0(:,k));
[t1,y1]=ode45(@(t,y)node5NFB(t,y,200),tspan,y(length(y),:)');
[t2,y2]=ode45(@(t,y)node5NFB(t,y,250),tspan,y1(length(y1),:)');
%subplot(1,3,3)
%plot([y(:,1);y1(:,1);y2(:,1)],[y(:,2);y1(:,2);y2(:,2)])
t=[t;t(end)+t1;t1(end)+t(end)+t2];
plot(t,log2(1+[y(:,2);y1(:,2);y2(:,2)]))
hold on
end
