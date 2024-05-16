
function dydt=node5IFF(t,y,u)
Kia=5;
Fa=8;
Kba=8;
Fb=6;
Kcb=8;
Fc=4;
Kdc=8;
Fd=5;
Keb=8;
Ked=8;
In=0.3;
x_star=[0.1875; 0.250; 0.5000; 0.8000; 0.3125];

dydt_1=Kia*u*1/(y(1)+1)-Fa*y(1);
dydt_2=Kba*y(1)-3*Fb*y(2);
dydt_3=Kcb*y(2)-5*Fc*y(3);
dydt_4=Kdc*y(3)-Fd*y(4);
dydt_5=Keb*y(2)-2.5*Ked*y(4)*y(5)-y(5);
dydt=[dydt_1;dydt_2;dydt_3;dydt_4;dydt_5];
end
