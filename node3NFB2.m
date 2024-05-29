function dydt=node3NFB2(t,y,u,KMB,Kbc)
Kab=12;
Kca=16;
Fb=2;
%Kbc=8;
Kcb=10;
Kia=8;
Fa=6;
x_star=[0.4;0.64;0.5];
 
dydt_1=Kia*u*(1-y(1))-10*y(1)/(y(1)+1);
dydt_2=Kbc*y(3)-Fb*y(2)/(KMB+y(2)); % Violation: Negative feedback without buffer
dydt_3=Kca*y(1)*(1-y(3))-Kcb*y(2)*y(3)/(y(3)+1);
dydt=[dydt_1;dydt_2;dydt_3];
end
