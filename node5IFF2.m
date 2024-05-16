function dydt=node5IFF2(t,y,u)
Kab=14;
Fa=4;
Kba=10;
Fb=4;
Kca=8;
Kcb=3.2;
Kcd=6;
Fc=2;
Kdc=6;
Fd=0.5;
Kia=5;
Fa=6;
In=0.3;
x_star=[0.1875; 0.250; 0.5000; 0.8000; 0.3125];

dydt_1=Kia*u-Fa*y(1);
dydt_2=Kba*y(1)-Fb*y(2);
dydt_3=1+Kca*y(1)-Kcb*y(2)-2*y(3)-0*2*y(4);
dydt_4=Kia*y(3)-Fd*y(4);
dydt_5=Kia*y(4)-y(5);
dydt=[dydt_1;dydt_2;dydt_3;dydt_4;dydt_5];
end
