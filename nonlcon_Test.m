function[c,ceq] = nonlcon_Test(x)
   
    T0 = 0.005; %m
    rho = 1.724*10^(-8); %Resistivity ρ (ohm m) for copper
    %L=0.1;
    L= x(1)*x(2)*0.01*pi;
    Q_ultimate=10E6;
    Nc_ultimate=10E2;
    I_ultimate=5;%A
    
    c(1)=x(3) * x(2)-T0; % D*Nl - T0 <= 0
    c(2)=rho * L / (pi * (x(3) / 2)^2 * x(4)^2) - Q_ultimate; % \rho*L/(pi*(D/2)^2 *I^2) <= Q_ultimate
    c(3)=x(1)- Nc_ultimate ; % Nc <= N_ultimate
    c(4)=x(4)-I_ultimate;   % I <= I_ultimate
    ceq=[];
end


