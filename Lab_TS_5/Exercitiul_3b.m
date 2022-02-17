p = sym2poly(cmmmc);
c = roots(p);
c = real(c);
nr = length(c);
ok = 0;

for i = 1:nr
    if (c(i) >= 0)
        disp("Nu este stabil extern");
        ok = 1;
        break;
    end
end

if ok == 0
    disp("Este stabil extern");
end