function dydt=node5NFB(t,y,u)
K_1p=5;
Kia=0.004;
Kac=32;
Kba=1;
Fb=2;
Kcb=20;
Fc=6;
Kdc=3;
Kde=6;
Keb=6;
Ked=8;
Ka=50;
In=0.3;
x_star=[0.0857; 0.3000; 0.4000; 0.4500; 0.3333];

dydt_1=K_1p+Kia*u+Kac/(y(5)+1)-Ka*y(1);
dydt_2=Kba*y(1)-Fb*y(2);
dydt_3=Kcb*y(2)-Fc;
dydt_4=Kdc*y(3)/(1+y(4))-5*y(4);
dydt_5=Kdc*y(4)/(y(5)+1)-5*y(5);
dydt=[dydt_1;dydt_2;dydt_3;dydt_4;dydt_5];
end
