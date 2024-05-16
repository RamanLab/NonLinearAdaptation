y0=100*lhsdesign(5,100);
figure
tspan=[0 2];
subplot(1,3,1)
plot(out.tout,out.Input)
ylim([0 900])
subplot(1,3,2)
plot(out.tout,log2(1+out.yk_non_lin))
hold on
plot(out.tout,log2(1+out.yk_non_lin2))
hold on
plot(out.tout,log2(1+out.yk_non_lin3))
hold on
plot(out.tout, log2(1+out.yk_non_lin4))
hold on
plot(out.tout,log2(1+out.yk_non_lin5))
hold off
subplot(1,3,3)
for k=1:1:100
y=[];y1=[];t=[];t1=[];t2=[];
[t,y]=ode23s(@(t,y)node5IFF(t,y,50),tspan,y0(:,k));
y(y<0.005)=0;
[t1,y1]=ode23s(@(t,y)node5IFF(t,y,300),tspan,y(length(y),:)');
y1(y1<0.005)=0;
[t2,y2]=ode23s(@(t,y)node5IFF(t,y,800),tspan,y1(length(y1),:)');
t=[t;t(end)+t1;t(end)+t1(end)+t2];
plot(t,log2(1+[y(:,5);y1(:,5);y2(:,5)]))
hold on
end
