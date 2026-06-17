% setup_parameters.m
% Default parameters for the longitudinal vehicle dynamics Simulink model.
% Values are based on the accompanying technical report and typical
% passenger vehicle parameters.

clearvars -except repoRoot modelName modelPath

%% Vehicle parameters
m = 1200;              % Vehicle mass [kg]
g = 9.81;              % Gravitational acceleration [m/s^2]

l = 2.4;               % Vehicle wheelbase / length parameter [m]
a1 = 1.1;              % Distance from CG to front axle [m]
a2 = 1.4;              % Distance from CG to rear axle [m]
h = 0.0508;            % CG height / model height parameter [m]

%% Wheel and tire parameters
r = (15 * 0.0254) / 2 + (0.185 * 0.65);  % Tire radius estimate [m]
rw = 0.98 * r;                            % Effective wheel radius [m]
R0 = rw;                                  % Dynamic tire radius [m]

Jw = 1.2;              % Wheel inertia [kg*m^2]
Jwheel = Jw;           % Alternative variable name
J_wheel = Jw;          % Alternative variable name

mu = 0.8;              % Tire-road friction coefficient [-]
mu0 = 0.015;           % Rolling resistance coefficient [-]
mu1 = 7e-6;            % Speed-dependent rolling resistance coefficient [-]

%% Aerodynamic parameters
cx = 0.32;             % Drag coefficient [-]
Cx = cx;               % Alternative variable name
Cd = cx;               % Alternative variable name

A = 2.0;               % Frontal area [m^2]
rho = 1.22;            % Air density [kg/m^3]

%% Road parameters
theta = 0;             % Road slope angle [rad]

%% Tire stiffness / Pacejka-related parameters
Calfaf = 75000;        % Front cornering stiffness [N/rad]
Calfar = 75000;        % Rear cornering stiffness [N/rad]

B = 10;                % Pacejka shape/stiffness factor
C = 1.9;               % Pacejka shape factor
D = 1.0;               % Pacejka peak factor
E = 0.97;              % Pacejka curvature factor

%% Suspension-related parameters from the report
ms = 375;
cs = 1200;
ks = 35000;
cu = 0;
ku = 193000;
csky = 3000;

%% Input torques / default simulation values
Mtraction = 500;       % Default traction torque [N*m]
Mbraking = 0;          % Default braking torque [N*m]

Ttraction = Mtraction; % Alternative variable name
Tbraking = Mbraking;   % Alternative variable name

%% Initial conditions
v0 = 0;                % Initial vehicle speed [m/s]
omega0 = max(v0 / rw, 0);  % Initial wheel angular speed [rad/s]

disp("Default vehicle parameters loaded successfully.");
