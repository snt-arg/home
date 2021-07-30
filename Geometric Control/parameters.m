% Parameters
clear
clc
J = diag([0.0820; 0.0845; 0.1377]);
m = 4.34;
d = 0.315;
ctauf = 8.004e-4;
x_0 = [0 0 0]';
v_0 = [0 0 0]';
R_0 = eye(3);
omega_0 = [0 0 0]';
%kx = 16;
%kv = 5.6;
%kR = 8.81;
%kOmega = 2.54;
e3 = [0 0 1]';
g = 9.81;
rotor_matrix=[1 1 1 1;0 -d 0 d;d 0 -d 0;-ctauf ctauf -ctauf ctauf];