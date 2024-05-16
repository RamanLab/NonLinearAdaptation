y0=100*lhsdesign(5,100);
figure
tspan=[0 10];
subplot(1,3,1)
plot(out.tout,out.Input)
subplot(1,3,2)
subplot(1,3,1)
plot(out.tout,out.Input)
ylim([0 900])
subplot(1,3,2)
plot(out.tout,out.yk_niff1)
hold on
plot(out.tout,(out.yk_niff2))
hold on
plot(out.tout,(out.yk_niff3))
hold on
plot(out.tout, (out.yk_niff4))
hold on
plot(out.tout,(out.yk_niff5))
subplot(1,3,3)
for k=1:1:100
y=[];y1=[];t=[];t1=[];t2=[];
[t,y]=ode23s(@(t,y)node5IFF2(t,y,0),tspan,y0(:,k));
%y(y<0.005)=0;
[t1,y1]=ode23s(@(t,y)node5IFF2(t,y,200),tspan,y(length(y),:)');
%y1(y1<0.005)=0;
[t2,y2]=ode23s(@(t,y)node5IFF2(t,y,600),tspan,y1(length(y1),:)');
t=[t;t(end)+t1;t(end)+t1(end)+t2];
plot(t,([y(:,3);y1(:,3);y2(:,3)]))
hold on
end
