subplot(1,2,1)
plot(out.tout,out.Input)
subplot(1,2,2)
plot(out.tout,(out.yk_non_lin2))
hold on
plot(out.tout,(out.yk_non_lin9))
