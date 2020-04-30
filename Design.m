%% Michael Angeles
% Venus Airship Design
clc, clear, close all

%% Buoyant Lift
a = 1;
b = a;
c = 1;
original_vol = ellipse_volume(a,b,c); %[m3]
cel2kel = 273.15;
gas_temp = 160.6; %[K]
gas_pres = 0.70520*100000; %[Pa]
hel_r_spec = 2007.92; %[J/(kg*K)]
gas_density = density(gas_pres, gas_temp, hel_r_spec);
gas_mass = gas_density*original_vol;

atmos_temp = 160.6; %[K]
atmos_pres = 0.70520*100000; %[Pa]
venus_r_spec = 188.92; %[J/(kg*K)]Placeholder for CO2
venus_density = density(atmos_pres, atmos_temp, venus_r_spec);
original_buoyant_lift = buoy_lift(original_vol, venus_density, gas_density);    

freestream_velocity = 70;   
dynamic_pressure = 0.5*venus_density*freestream_velocity^2;




%% Aerodynamics
S_plan = pi*2*c*2*b/4;
FR = 2*c/2*b;
de = (6*original_vol/(pi*FR))^1/3;
AR = 4*2*b/(pi*2*c);

NL = 2;
vol23 = original_vol^(2/3);
S_plan_23 = NL*vol23;
AR_23 = b^2/S_plan_23;

CL_Alpha = deg2rad(pi*AR_23/2);

CO2_kinematic_viscosity = py.CoolProp.CoolProp.PropsSI('V','P',517964,'T',216.632,'CO2')/venus_density;
reynolds_number_revolute_body = reynolds_number(venus_density, freestream_velocity, 2*b, CO2_kinematic_viscosity);

CD_0 = 0.02;
CD_L = 0.01;

FF_body = 1 + 1.5/(FR)^3/2+7/FR^3;
S_wet_body = 3.88*vol23*(FR)^1/3;
CF_body = 0.455/(log10(reynolds_number_revolute_body)^2.58);

t = 0.01;
c_wing = 0.25;
b_wing = 0.5;
S_wet_wing = b_wing^2/(b_wing*c_wing);
FF_wings = 1+1.2*(t/c_wing)+100*(t/c_wing)^4;
reynolds_number_wings = reynolds_number(venus_density, freestream_velocity, c, CO2_kinematic_viscosity);
CF_wings = 0.455/(log10(reynolds_number_wings)^2.58);

CD_F = CF_body*S_wet_body/vol23+4*(CF_wings*S_wet_wing)/vol23;

CD = CD_L+CD_0+CD_F;






%K = CD_alpha/CL^2;
%% Wing Sizing
lvt = c - 1/2*b_wing;
xvt = 1*10*9/original_vol;
cvt = -0.0049*xvt+0.0641;
svt = cvt*2*c*vol23/lvt;
vert_tail_vol_coef = lvt*svt/(2*c*vol23);

lht = c - 1/2*b_wing;
xht = 1*10*9/original_vol;
cht = -0.0051*xvt+0.0717;
sht = cht*2*c*vol23/lht;
horz_tail_vol_coef = lht*sht/(2*c*vol23);

alpha = [-4, 0, 4, 6, 10];

CM_0 = [-0.02 -0.01 0.02 0.04 0.055];

CD_0 = [0.03 0.028 0.03 0.032 0.042];

CL_0 = [-0.04 -0.02 0.01 0.04 0.07];

figure(1)
subplot(3,1,1)
plot(alpha, CM_0);
xlabel('Angle of Attack')
ylabel('Moment Coefficient')

subplot(3,1,2)
plot(alpha, CD_0);
xlabel('Angle of Attack')
ylabel('Drag Coefficient')

subplot(3,1,3)
plot(alpha, CL_0);
xlabel('Angle of Attack')
ylabel('Lift Coefficient')

dCM = diff(CM_0)/diff(alpha);
dCL = diff(CL_0)/diff(alpha);
dCM_dCL = dCM/dCL;

X_ac = c*2*(dCM_dCL);

%% Inertia
pv_thickness = 0.000254;
pv_density = 2.2*1000;
pv_volume = ellipse_volume(a,b,c) - ellipse_volume(a-pv_thickness,b-pv_thickness,c-pv_thickness);
pv_mass = pv_density*pv_volume;

V_wing = b_wing^2/(b_wing*c_wing)*t;
m_wing = V_wing*pv_density;

Jxx_helium = (1/5).*(gas_density.*original_vol).*(b.^2+c.^2);
Jyy_helium = (1/5).*(gas_density.*original_vol).*(a.^2+b.^2);
Jzz_helium = (1/5).*(gas_density.*original_vol).*(a.^2+b.^2);

Jxx_hull = (1/3).*pv_mass.*(b.^2*c.^2);
Jyy_hull = (1/3).*pv_mass.*(a.^2+b.^2);
Jzz_hull = (1/3).*pv_mass.*(a.^2+b.^2);

Jxx_fins = 2*(1/12.*m_wing.*b_wing.*c_wing.^3) + 2*S_wet_wing*(0.5*c_wing)^2;
Jyy_fins = 2*(1/12.*m_wing.*b_wing.*c_wing.^3) + 2*S_wet_wing*(0.5*c_wing)^2;
Jzz_fins = 2*(1/12.*m_wing.*b_wing.*c_wing.^3) + 2*S_wet_wing*(0.5*c_wing)^2;

m_gondola = original_buoyant_lift - gas_mass - pv_mass;
m_total = m_gondola+gas_mass+pv_mass;
a_gondola = 0.1;
b_gondola = 0.1;
c_gondola = 0.1;

Jxx_gondola = (1/6).*m_gondola.*a_gondola.^2+m_gondola.*(b_gondola).^2;
Jyy_gondola = (1/6).*m_gondola.*b_gondola.^2+m_gondola.*0.^2;
Jzz_gondola = (1/6).*m_gondola.*c_gondola.^2+m_gondola.*c_gondola.^2;

I_prime = Jxx_helium;

Ixx = Jxx_fins+Jxx_gondola+Jxx_helium+Jxx_hull;
Iyy = Jyy_fins+Jyy_gondola+Jyy_helium+Jyy_hull;
Izz = Jzz_fins+Jzz_gondola+Jzz_helium+Jzz_hull;

[k_axial, k_transverse, k_rotational] = Added_Mass_Factors(2*c,2*b);
%% Stability & Controls
p = 1;
q = 1;
r = 1;

vol3 = original_vol^(1/3);
p_hat = p*vol3/freestream_velocity;
q_hat = q*vol3/freestream_velocity;
r_hat = r*vol3/freestream_velocity;

CY = 1/dynamic_pressure*vol23;

CN_0 = CM_0;

dBeta = 0;
CNbeta = dCM/dBeta;
CYbeta = dCM/dBeta;

CLq = dCL/q_hat;
CMq = dCM/q_hat;
CNr = -0.394;
CYr = 1.17;
CLw = 0.936;
CMw = -0.027;

m = m_total;
g = 8.81;

M_matrix = [m+CLw*venus_density*original_vol CLq*venus_density*original_vol^4/3;
            CMw*venus_density*original_vol^4/3 Iyy+CMq*venus_density*original_vol^5/3;];
        

        
A = M_matrix.^-1*[-(dCL)*dynamic_pressure*original_vol^2/3/freestream_velocity -CLq*(dynamic_pressure*original_vol)/freestream_velocity+m*freestream_velocity;
                    (dCM)*dynamic_pressure*original_vol^2/3*2*c/freestream_velocity CMq*(dynamic_pressure)*original_vol*2*c/freestream_velocity];

B = [1; 1;];
C = [1; 1;];
[b,a] = ss2tf(A,B,C',0);

rlocus(b,a);
%% Thermal Stablity

%% Changing pressures/temperatures - for later consideration -> might be useful to go back to chapter one and make dL function
new_gas_temp = 40 + cel2kel; %[K]
new_gas_pres = 101325; %[Pa]
new_hel_r_spec = 2077.1; %[J/(kg*K)]
new_gas_density = density(new_gas_pres, new_gas_temp, hel_r_spec);

new_atmos_temp = 20+cel2kel; %[K]
new_atmos_pres = 101325; %[Pa]
new_venus_r_spec = 188.92; %[J/(kg*K)]Placeholder for CO2
new_venus_density = density(new_atmos_pres, new_gas_pres, venus_r_spec);

vol_change_pres = vol_change_pres(original_vol, gas_pres, new_gas_pres);
vol_change_temp = vol_change_temp(original_vol, gas_temp, new_gas_temp); 

new_vol = original_vol + vol_change_pres + vol_change_temp;
new_buoy_lift = buoy_lift(new_vol, new_venus_density, gas_density);


