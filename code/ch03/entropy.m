clc; clear

p = linspace(0.01, 1, 100);
ent = p.*log2(p);
plot(p, ent)
