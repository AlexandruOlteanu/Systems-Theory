function [y] = signalGen(t)
    y = 220 * sqrt(2) * sin(100 * acos(-1) * t);
end