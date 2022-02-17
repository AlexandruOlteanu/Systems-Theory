A = [-1 0 0; -1 -2 -101; 1 1 0];
B = [0 1; 1 -1; 0 0];
C = [1 0 101];
D = [0 0];
u = [1; -2];
h = 0.01;

syms s;
syms tau;
sysms t;

H_s = inv(s * eye(3) - A);
A_d = ilaplace(H_s);
A_d_h = subs(A_d, t, h);
A_d_tau = subs(A_d, t, tau);

B_d = int(A_d_tau * B, tau, 0, h);

C_d = C;

D_d = D;

[num1s, den1s] = ss2tf(A, B, C, D, 1);
H11s = tf(num1s, den1s);
H11z = c2d(H11s, h);
[num1z, den1z] = tfdata(H11z, 'v');

[num2s, den2s] = ss2tf(A, B, C, D, 2);
H12s = tf(num2s, den2s);
H12z = c2d(H12s, h);
[num2z, den2z] = tfdata(H12z, 'v');
