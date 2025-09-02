clear all;clc;
x0 = [1, 1, 0.001,0.5];             %[Nc_initial, Nl_initial, D_initial, I_initial];
lb = [0,0,0,0];                     %[Nc_min, Nl_min, D_min, I_min];
ub = [10E2, 5, 0.005,5];            %[Nc_max, Nl_max, D_max, I_max];
options = optimset ('display','off','Algorithm','sqp');
[x, fval, exitflag,output,lamda] = fmincon('obj_Test', x0, [], [], [], [], lb, ub,' nonlcon_Test',options);


