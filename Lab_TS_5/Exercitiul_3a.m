A = A_o;
syms lambada;

pol = det(lambada*eye(3) - A);
v = sym2poly(pol);
nr = length(v);
ok = 0;

for i = 1:nr
    if (v(i) <= 0)
        disp("Nu se poate aplica criteriul Hurwitz!");
        ok = 1;
        break;
    end
end

if ok == 0
    [H, delta] = hurwitz(v);
end

nrd = length(delta);
okd = 0;

for i = 1:nrd
    if (delta(i) < 0)
        disp("Nu este stabil intern!");
        okd = 1;
        break;
    end
end

if okd == 0
    disp("Sistemul este stabil intern!");
end