function f = obj_Test(x)
mu = 4*pi*10^(-7);% V·s/(A·m)
Lt=0.003;
f = -mu * x(1) * x(2) *x(4) / Lt;
end