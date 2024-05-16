function dydt=node3NFB3(t,y,u)
Kab=12;
Kca=16;
Fb=2;
Kbc=8;
Kcb=10;
Kia=8;
Fa=6;
x_star=[0.4;0.64;0.5];
    
dydt_1=Kia*u+20/(0.5+y(2))-9*y(1);
dydt_2=Kbc*y(3)-Fb;
dydt_3=Kca/(y(1)*y(3)+1)-y(3);
dydt=[dydt_1;dydt_2;dydt_3];
end




