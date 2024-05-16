out1=out;
subplot(1,3,1)
plot(out1.tout,out1.Input)
subplot(1,3,2)
plot(out1.tout,(out1.yk_niff8)/max(out1.yk_niff8))
hold on
plot(out1.tout,(out1.yk_niff3)/max(out1.yk_niff3))
subplot(1,3,3)
plot(out.tout,(out.yk_non_lin5)/max(out.yk_non_lin5))
hold on
plot(out.tout,(out.yk_non_lin7)/max(out.yk_non_lin7))
