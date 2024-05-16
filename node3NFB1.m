function dydt=node3NFB1(t,y,u,P)
Kia=P(1);
Kab=P(2);
KMI=P(3);
Kaa=P(4);
KMaa=P(5);
Kba=P(6);
KMa=P(7);
Kbb=P(8);
KMb=P(9);
Kca=P(10);
Kcb=P(11);


dydt_1=Kia*u+Kab/(KMI+y(2))-Kaa*y(1)/(y(1)+KMaa);
dydt_2=Kba/(y(1)+KMa)-Kbb*y(2)/(KMb+y(2));
dydt_3=Kca*y(1)-Kcb*y(3);

dydt=[dydt_1;dydt_2;dydt_3];
end
