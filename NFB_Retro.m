%% Run MUL_NFB_NON_LIN before. This code generates the figure 7 of the manuscript. We assess the retroactivity property of the NFB module
subplot(1,2,1)
plot(out.tout,out.Input)
subplot(1,2,2)
plot(out.tout,(out.yk_non_lin2))
hold on
plot(out.tout,(out.yk_non_lin9))
