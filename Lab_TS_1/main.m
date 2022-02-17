t = linspace(0, 0.02, 10);
%t = linspace(0, 0.5, 100);
%t = linspace(0, 0.5, 1000);
%t = linspace(0, 1, 100);
%t = linspace(0, 1, 1000);
n = length(t);
y = zeros(1, n);
y = signalGen(t);
plot(t, y, 'b-', 'LineWidth', 1.5);
grid ON;
legend('Semnal Sinusoidal');
title('Grafic Semnal Sinusoidal');

%   Am observat ca numarul de perioade creste odata cu marirea 
% graficului si amplitudinea ori scade ori creste pana la jumatatea
% domeniului



