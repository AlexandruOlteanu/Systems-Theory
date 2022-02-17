grafic1 = out.sinf;
grafic2 = out.sind;
grafic3 = out.sinfd;

figure(1);
plot(grafic1, "b");
legend("Raspunsul fortat al SLN reprezentat pe stare");

figure(2);
plot(grafic2, "g");
legend("Raspunsul SLD reprezentat pe stare");

figure(3);
plot(grafic3, "r");
legend("Raspunsul fortat al SLD reprezentat intrare-iesire");