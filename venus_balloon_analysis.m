clc,clear,close all
run('Venus_Atmos_Model.m')
%% Volume
g = 8.87;

mass_he = 50;
pres_he = 101325; %Pa - Pressure inside balloon -> can be further analyzed
temp_he = 273.15;     %K - Temperature inside Balloon -> can be further analyzed
R_he = 2207.1
rho_he = rho_he_func(temp_he, pres_he);
vol_he = mass_he/rho_he;

rho_payload = 10;
vol_payload = 1;
mass_payload = rho_payload/vol_payload;

pres_atmos = 101325;
temp_atmos = 273.15;



%total_volume = vol_air + vol_he
P_internal = 0.8; %Bar
dP = P_internal-Pressures_B_35(53);
rho_he = Pressures_B_35(53)+dP/(R_he*Temp_B_35(53));

R_air = 287.05;
rho_air = Pressures_B_35(53)+dP/(R_air*Temp_B_35(53));

vol_he = mass_he./rho_he;

vol_air = 10;
vol_total = vol_air+vol_he;
mass_air = rho_air.*(vol_total-mass_he./rho_he);

%% Thermal
P_t = 0.6; %Atmospheric transmittance of Venus
I_o = 1367; % you know
e = 6.8*10^-3; % orbit eccentricity

n = linspace(0,225,4);
MA = 2*n*pi/225;
xi = MA+2*e.*sin(MA)+1.25*e^2*sin(2.*MA);
I_d = I_o * ((1+e*cos(xi))/(1-e^2)).^2*P_t;

omega = 0:pi;
P_atm = Pressures_B_35(53);
P_0 = 93;
m = P_atm/P_0.*(sqrt(1229+(614.*sin(omega)).^2)-614.*sin(omega));
I_s = 0.5.*I_d.*sin(omega).*(1-P_t.^m)/(1-1.4*log(P_t));

C_r = 0.75;
I_r = C_r*(I_d.*sin(omega)+I_s);
I = I_r+I_d+I_s;


%% Kinematic and Dynamic Model
F_b = rho_atm*g*vol_total;
B = F_b - G;



close all