s = tf('s');
a = 1; c = 1;
d = 2; e = 1;
H = (a * s + 1) / (c * s ^ 2 + d * s + e);
[Y, T] = step(H);
plot(T, Y);
