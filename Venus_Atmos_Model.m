%% Figures
clear,clc
alt_target = 53;
%Givens using "Zasova 2006 num2structure of the Venusian Atmosphere" Paper
Table2 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_Less_Than_35', 'Range','M3:U54');
Table3 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_BW_35_55', 'Range','M3:U54');
Table4 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_BW_50_70', 'Range','M3:U54');
Table5 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_BW_70_80', 'Range','M3:U54');
Table6 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_85', 'Range','M3:U54');
Table7 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Density', 'Range','A2:E27');

n = 39;
m = 45;
l = 12;

P_len = length(Table2.P_Bar) - n;
P_len_1 = length(Table2.P_Bar_1) - n;
P_len_2 = length(Table2.P_Bar_2) - n ;

T_len = length(Table2.P_Bar) - m;
T_len_1 = length(Table2.P_Bar_1) - m;
T_len_2 = length(Table2.P_Bar_2) - m;

rho_len = length(Table7.Density) - l;
N_len = length(Table7.NumberDensity) - l;
M_len = length(Table7.MolecularMass) - l;
Visc_len = length(Table7.Viscosity) - l;

%% Table Two Functions - Returns Heqight

P_Bar_Function_Eq_Two = fit(Table2.P_Bar,Table2.Var1,'cubicinterp');
P_Bar_Function_Two = @(x) feval(P_Bar_Function_Eq_Two,x);

P_Bar_1_Function_Eq_Two = fit(Table2.P_Bar_1,Table2.Var1,'cubicinterp');
P_Bar_1_Function_Two = @(x) feval(P_Bar_1_Function_Eq_Two,x);

P_Bar_2_Function_Eq_Two = fit(Table2.P_Bar_2,Table2.Var1,'cubicinterp');
P_Bar_2_Function_Two = @(x) feval(P_Bar_2_Function_Eq_Two,x);

P_Bar_3_Function_Eq_Two = fit(Table2.P_Bar_3,Table3.Var1,'cubicinterp');
P_Bar_3_Function_Two = @(x) feval(P_Bar_3_Function_Eq_Two,x);

options_temp = fitoptions('Method','linearinterp');

T_K_Function_Eq_Two = fit(Table2.T_K,Table2.Var1,'linear',options_temp);
T_K_Function_Two = @(x) feval(T_K_Function_Eq_Two,x);

T_K_1_Function_Eq_Two = fit(Table2.T_K_1,Table2.Var1,'linear',options_temp);
T_K_1_Function_Two = @(x) feval(T_K_1_Function_Eq_Two,x);

T_K_2_Function_Eq_Two = fit(Table2.T_K_2,Table2.Var1,'linear',options_temp);
T_K_2_Function_Two = @(x) feval(T_K_2_Function_Eq_Two,x);

T_K_3_Function_Eq_Two = fit(Table2.T_K_3,Table2.Var1,'linear',options_temp);
T_K_3_Function_Two = @(x) feval(T_K_3_Function_Eq_Two,x);

%% Table Three Functions - Returns Height
P_Bar_Function_Eq_Three = fit(Table3.P_Bar,Table3.Var1,'cubicinterp');
P_Bar_Function_Three = @(x) feval(P_Bar_Function_Eq_Three,x);

P_Bar_1_Function_Eq_Three = fit(Table3.P_Bar_1,Table3.Var1,'cubicinterp');
P_Bar_1_Function_Three = @(x) feval(P_Bar_1_Function_Eq_Three,x);

P_Bar_2_Function_Eq_Three = fit(Table3.P_Bar_2,Table3.Var1,'cubicinterp');
P_Bar_2_Function_Three = @(x) feval(P_Bar_2_Function_Eq_Three,x);

P_Bar_3_Function_Eq_Three = fit(Table3.P_Bar_3,Table3.Var1,'cubicinterp');
P_Bar_3_Function_Three = @(x) feval(P_Bar_3_Function_Eq_Three,x);

T_K_Function_Eq_Three = fit(Table3.T_K,Table3.Var1,'linear',options_temp);
T_K_Function_Three = @(x) feval(T_K_Function_Eq_Three,x);

T_K_1_Function_Eq_Three = fit(Table3.T_K_1,Table3.Var1,'linear',options_temp);
T_K_1_Function_Three = @(x) feval(T_K_1_Function_Eq_Three,x);

T_K_2_Function_Eq_Three = fit(Table3.T_K_2,Table3.Var1,'linear',options_temp);
T_K_2_Function_Three = @(x) feval(T_K_2_Function_Eq_Three,x);

T_K_3_Function_Eq_Three = fit(Table3.T_K_3,Table3.Var1,'linear',options_temp);
T_K_3_Function_Three = @(x) feval(T_K_3_Function_Eq_Three,x);

%% Table Four Functions - Returns Height
P_Bar_Function_Eq_Four = fit(Table4.P_Bar,Table4.Var1,'cubicinterp');
P_Bar_Function_Four = @(x) feval(P_Bar_Function_Eq_Four,x);

P_Bar_1_Function_Eq_Four = fit(Table4.P_Bar_1,Table4.Var1,'cubicinterp');
P_Bar_1_Function_Four = @(x) feval(P_Bar_1_Function_Eq_Four,x);

P_Bar_2_Function_Eq_Four = fit(Table4.P_Bar_2,Table4.Var1,'cubicinterp');
P_Bar_2_Function_Four = @(x) feval(P_Bar_2_Function_Eq_Four,x);

P_Bar_3_Function_Eq_Four = fit(Table4.P_Bar_3,Table4.Var1,'cubicinterp');
P_Bar_3_Function_Four = @(x) feval(P_Bar_3_Function_Eq_Four,x);

options_temp2 = fitoptions('Method','linearinterp', 'Normalize','on');

T_K_Function_Eq_Four = fit(Table4.T_K,Table4.Var1,'linear',options_temp2);
T_K_Function_Four = @(x) feval(T_K_Function_Eq_Four,x);

T_K_1_Function_Eq_Four = fit(Table4.T_K_1,Table4.Var1,'linear',options_temp2);
T_K_1_Function_Four = @(x) feval(T_K_1_Function_Eq_Four,x);

T_K_2_Function_Eq_Four = fit(Table4.T_K_2,Table4.Var1,'linear',options_temp2);
T_K_2_Function_Four = @(x) feval(T_K_2_Function_Eq_Four,x);

T_K_3_Function_Eq_Four = fit(Table4.T_K_3,Table4.Var1,'linear',options_temp);
T_K_3_Function_Four = @(x) feval(T_K_3_Function_Eq_Four,x);

%% Table Five Functions - Returns Height
P_Bar_Function_Eq_Five = fit(Table5.P_Bar,Table5.Var1,'cubicinterp');
P_Bar_Function_Five = @(x) feval(P_Bar_Function_Eq_Five,x);

P_Bar_1_Function_Eq_Five = fit(Table5.P_Bar_1,Table5.Var1,'cubicinterp');
P_Bar_1_Function_Five = @(x) feval(P_Bar_1_Function_Eq_Five,x);

P_Bar_2_Function_Eq_Five = fit(Table5.P_Bar_2,Table5.Var1,'cubicinterp');
P_Bar_2_Function_Five = @(x) feval(P_Bar_2_Function_Eq_Five,x);

P_Bar_3_Function_Eq_Five = fit(Table5.P_Bar_3,Table5.Var1,'cubicinterp');
P_Bar_3_Function_Five = @(x) feval(P_Bar_3_Function_Eq_Five,x);

T_K_Function_Eq_Five = fit(Table5.T_K,Table5.Var1,'linear',options_temp2);
T_K_Function_Five = @(x) feval(T_K_Function_Eq_Five,x);

T_K_1_Function_Eq_Five = fit(Table5.T_K_1,Table5.Var1,'linear',options_temp2);
T_K_1_Function_Five = @(x) feval(T_K_1_Function_Eq_Five,x);

T_K_2_Function_Eq_Five = fit(Table5.T_K_2,Table5.Var1,'linear',options_temp2);
T_K_2_Function_Five = @(x) feval(T_K_2_Function_Eq_Five,x);

T_K_3_Function_Eq_Five = fit(Table5.T_K_3,Table5.Var1,'linear',options_temp2);
T_K_3_Function_Five = @(x) feval(T_K_3_Function_Eq_Five,x);

%% Table 6 Functions - Returns Height
P_Bar_Function_Eq_Six = fit(Table6.P_Bar,Table6.Var1,'cubicinterp');
P_Bar_Function_Six = @(x) feval(P_Bar_Function_Eq_Six,x);

P_Bar_1_Function_Eq_Six = fit(Table6.P_Bar_1,Table6.Var1,'cubicinterp');
P_Bar_1_Function_Six = @(x) feval(P_Bar_1_Function_Eq_Six,x);

P_Bar_2_Function_Eq_Six = fit(Table6.P_Bar_2,Table6.Var1,'cubicinterp');
P_Bar_2_Function_Six = @(x) feval(P_Bar_2_Function_Eq_Six,x);

P_Bar_3_Function_Eq_Six = fit(Table6.P_Bar_3,Table6.Var1,'cubicinterp');
P_Bar_3_Function_Six = @(x) feval(P_Bar_3_Function_Eq_Six,x);

T_K_Function_Eq_Six = fit(Table6.T_K,Table6.Var1,'linear',options_temp);
T_K_Function_Six = @(x) feval(T_K_Function_Eq_Six,x);

T_K_1_Function_Eq_Six = fit(Table6.T_K_1,Table6.Var1,'linear',options_temp);
T_K_1_Function_Six = @(x) feval(T_K_1_Function_Eq_Six,x);

T_K_2_Function_Eq_Six = fit(Table6.T_K_2,Table6.Var1,'linear',options_temp);
T_K_2_Function_Six = @(x) feval(T_K_2_Function_Eq_Six,x);

T_K_3_Function_Eq_Six = fit(Table6.T_K_3,Table2.Var1,'linear',options_temp);
T_K_3_Function_Six = @(x) feval(T_K_3_Function_Eq_Six,x);

%% Table 7 - Functions - Returns Height

Density_Function_Eq = fit(Table7.Density.*1000,Table7.Altitude,'cubicinterp');
Density_Function = @(x) feval(Density_Function_Eq,x);
Density = Table7.Density*1000;

Molecular_Mass_Function_Eq = polyfit(Table7.MolecularMass,Table7.Altitude,1);
Molecular_Mass_Function = @(x) polyval(Molecular_Mass_Function_Eq,x);

Number_Density_Function_Eq = fit(Table7.NumberDensity,Table7.Altitude,'cubicinterp');
Number_Density_Function = @(x) feval(Number_Density_Function_Eq,x);

Viscosity_Function_Eq = fit(Table7.Viscosity,Table7.Altitude,'cubicinterp');
Viscosity_Function = @(x) feval(Viscosity_Function_Eq,x);

%% Figures
figure(1)
sgtitle('\phi < 35^{\circ}')
subplot(2,4,1)
plot(Table2.P_Bar,Table2.Var1,'bo',Table2.P_Bar,P_Bar_Function_Two(Table2.P_Bar),'r-') 

title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table2.T_K,Table2.Var1,'ro', Table2.T_K, T_K_Function_Two(Table2.T_K),'b-')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table2.P_Bar_1,Table2.Var1,'bo',Table2.P_Bar_1,P_Bar_1_Function_Two(Table2.P_Bar),'r-') 
xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table2.T_K_1,Table2.Var1,'ro',Table2.T_K_1, T_K_1_Function_Two(Table2.T_K_1),'b-')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table2.P_Bar_2,Table2.Var1,'bo', Table2.P_Bar_2, P_Bar_2_Function_Two(Table2.P_Bar_2),'r-')
title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table2.T_K_2,Table2.Var1,'ro',Table2.T_K_2, T_K_2_Function_Two(Table2.T_K_2),'b-')

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table2.P_Bar_3,Table2.Var1,'bo', Table2.P_Bar_3,P_Bar_3_Function_Two(Table2.P_Bar_3),'b-')
title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table2.T_K_3,Table2.Var1,'ro',Table2.T_K_3, T_K_3_Function_Two(Table2.T_K_3),'b-')
xlabel('Temperature [k]')
ylabel('Height [km]')


figure(2)
sgtitle('\phi = 35^{\circ} - 55^{\circ}')
subplot(2,4,1)
plot(Table3.P_Bar,Table3.Var1,'bo',Table3.P_Bar, P_Bar_Function_Three(Table3.P_Bar),'r-');

title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table3.T_K,Table3.Var1,'ro',Table3.T_K, T_K_Function_Three(Table3.T_K),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table3.P_Bar_1,Table3.Var1,'bo',Table3.P_Bar_1,P_Bar_1_Function_Three(Table3.P_Bar_1),'r-') 
xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table3.T_K_1,Table3.Var1,'ro',Table3.T_K_1, T_K_1_Function_Three(Table3.T_K_1),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table3.P_Bar_2,Table3.Var1,'bo',Table3.P_Bar_2,P_Bar_2_Function_Three(Table3.P_Bar_2),'r-') 

title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table3.T_K_2,Table3.Var1,'ro',Table3.T_K_2, T_K_2_Function_Three(Table3.T_K_2),'b-');
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table3.P_Bar_3,Table3.Var1,'bo',Table3.P_Bar_3,P_Bar_3_Function_Three(Table3.P_Bar_3),'r-') 
title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table3.T_K_3,Table3.Var1,'ro',Table3.T_K_3, T_K_3_Function_Three(Table3.T_K_3),'b-');
xlabel('Temperature [k]')
ylabel('Height [km]')


figure(3)
sgtitle('\phi = 50^{\circ} - 70^{\circ}')
subplot(2,4,1)
plot(Table4.P_Bar,Table4.Var1,'bo',Table4.P_Bar,P_Bar_Function_Four(Table4.P_Bar),'r-') 
title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table4.T_K,Table4.Var1,'ro',Table4.T_K, T_K_Function_Four(Table4.T_K),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table4.P_Bar_1,Table4.Var1,'bo',Table4.P_Bar_1,P_Bar_1_Function_Four(Table4.P_Bar_1),'r-') 
xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table4.T_K_1,Table4.Var1,'ro',Table4.T_K_1, T_K_1_Function_Four(Table4.T_K_1),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table4.P_Bar_2,Table4.Var1,'bo',Table4.P_Bar_2,P_Bar_2_Function_Four(Table4.P_Bar_2),'r-') 
title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table4.T_K_2,Table4.Var1,'ro',Table4.T_K_2, T_K_2_Function_Four(Table4.T_K_2),'b-');
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table4.P_Bar_3,Table4.Var1,'bo',Table4.P_Bar_3,P_Bar_3_Function_Four(Table4.P_Bar_3),'r-') 
title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table4.T_K_3,Table4.Var1,'ro',Table4.T_K_3, T_K_3_Function_Four(Table4.T_K_3),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')


figure(4)
sgtitle('\phi = 70^{\circ} - 80^{\circ}')
subplot(2,4,1)
plot(Table5.P_Bar,Table5.Var1,'bo',Table5.P_Bar,P_Bar_Function_Five(Table5.P_Bar),'r-') 

title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table5.T_K,Table5.Var1,'ro',Table5.T_K,T_K_Function_Five(Table5.T_K),'b-') 

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table5.P_Bar_1,Table5.Var1,'bo',Table5.P_Bar_1,P_Bar_1_Function_Five(Table5.P_Bar_1),'r-') 

xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table5.T_K_1,Table5.Var1,'ro',Table5.T_K_1, T_K_1_Function_Five(Table5.T_K_1),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table5.P_Bar_2,Table5.Var1,'bo',Table5.P_Bar_2,P_Bar_2_Function_Five(Table5.P_Bar_2),'r-') 

title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table5.T_K_2,Table5.Var1,'ro',Table5.T_K_2, T_K_2_Function_Five(Table5.T_K_2),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table5.P_Bar_3,Table5.Var1,'bo',Table5.P_Bar_3,P_Bar_3_Function_Five(Table5.P_Bar_3),'r-') 

title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table5.T_K_3,Table5.Var1,'ro',Table5.T_K_3, T_K_3_Function_Five(Table5.T_K_3),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

figure(5)
sgtitle('\phi = 85^{\circ}')
subplot(2,4,1)
plot(Table6.P_Bar,Table6.Var1,'bo',Table6.P_Bar,P_Bar_Function_Six(Table6.P_Bar),'r-') 

title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table6.T_K,Table6.Var1,'ro',Table6.T_K, T_K_Function_Six(Table6.T_K),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table6.P_Bar_1,Table6.Var1,'bo',Table6.P_Bar_1,P_Bar_1_Function_Six(Table6.P_Bar_1),'r-') 

xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table6.T_K_1,Table6.Var1,'ro',Table6.T_K_1, T_K_1_Function_Six(Table6.T_K_1),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table6.P_Bar_2,Table6.Var1,'bo',Table6.P_Bar_2,P_Bar_2_Function_Six(Table6.P_Bar_2),'r-') 

title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table6.T_K_2,Table6.Var1,'ro',Table6.T_K_2, T_K_2_Function_Six(Table6.T_K_2),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table6.P_Bar_3,Table6.Var1,'bo',Table6.P_Bar_3,P_Bar_3_Function_Six(Table6.P_Bar_3),'r-') 

title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table6.T_K_3,Table6.Var1,'ro',Table6.T_K_3, T_K_3_Function_Six(Table6.T_K_3),'b-');

xlabel('Temperature [k]')
ylabel('Height [km]')



figure(6)
sgtitle('1972 - Venus Atmosphere (Model 1) (most probable molecular mass and mean solar activity)')
subplot(2,2,1)
plot(Table7.Density*1000, Table7.Altitude,'bo',Density, Density_Function(Density),'r-')
ylim([0 100])
xlabel('$\displaystyle \textnormal{Density} [\frac{kg}{m^3}]$','Interpreter','latex')
ylabel('Height [km]')

subplot(2,2,2)
plot(Table7.MolecularMass,Table7.Altitude,'bo',Table7.MolecularMass, Molecular_Mass_Function(Table7.MolecularMass),'r-')
xlabel('$\displaystyle \textnormal{Molecular Mass} [\frac{g}{g \cdot mole}]$','Interpreter','latex')
ylabel('Height [km]')

subplot(2,2,3)
plot(Table7.NumberDensity,Table7.Altitude,'bo',Table7.NumberDensity, Number_Density_Function(Table7.NumberDensity),'r-')
xlabel('$\textnormal{Number Density} [\frac{1}{cm^3}$]','Interpreter','latex')
ylabel('Height [km]')

subplot(2,2,4)
plot(Table7.Viscosity,Table7.Altitude,'bo',Table7.Viscosity, Viscosity_Function(Table7.Viscosity),'r-')
xlabel('$\textnormal{Viscosity} [\frac{kg}{m \cdot s}$]','interpreter','latex')
ylabel('Height [km]')



%% Temperature and Pressure

Pressures_B_35 =        @(target) [fsolve(@(x) target-P_Bar_Function_Eq_Two(x),0.01), fsolve(@(x) target-P_Bar_1_Function_Eq_Two(x),0.01), fsolve(@(x) target-P_Bar_2_Function_Eq_Two(x),0.01), fsolve(@(x) target-P_Bar_3_Function_Eq_Two(x),0.01)];
Pressures_BW_35_55 =    @(target) [fsolve(@(x) target-P_Bar_Function_Eq_Three(x),0.01), fsolve(@(x) target-P_Bar_1_Function_Eq_Three(x),0.01), fsolve(@(x) target-P_Bar_2_Function_Eq_Three(x),0.01), fsolve(@(x) target-P_Bar_3_Function_Eq_Three(x),0.01)];
Pressures_BW_50_70 =    @(target) [fsolve(@(x) target-P_Bar_Function_Eq_Four(x),0.01), fsolve(@(x) target-P_Bar_1_Function_Eq_Four(x),0.01), fsolve(@(x) target-P_Bar_2_Function_Eq_Four(x),0.01), fsolve(@(x) target-P_Bar_3_Function_Eq_Four(x),0.01)];
Pressures_BW_70_80 =    @(target) [fsolve(@(x) target-P_Bar_Function_Eq_Five(x),0.01), fsolve(@(x) target-P_Bar_1_Function_Eq_Five(x),0.01), fsolve(@(x) target-P_Bar_2_Function_Eq_Five(x),0.01), fsolve(@(x) target-P_Bar_3_Function_Eq_Five(x),0.01)];
Pressures_A_85 =        @(target) [fsolve(@(x) target-P_Bar_Function_Eq_Six(x),0.01), fsolve(@(x) target-P_Bar_1_Function_Eq_Six(x),0.01), fsolve(@(x) target-P_Bar_2_Function_Eq_Six(x),0.01), fsolve(@(x) target-P_Bar_3_Function_Eq_Six(x),0.01)];

Pressures_B_35_53 =     Pressures_B_35(alt_target);       
Pressures_BW_35_55_53 = Pressures_BW_35_55(alt_target); 
Pressures_BW_50_70_53 = Pressures_BW_50_70(alt_target);
Pressures_BW_70_80_53 = Pressures_BW_70_80(alt_target);  
Pressures_A_85_53 =     Pressures_A_85(alt_target);

Pressures_53 = [Pressures_B_35_53; Pressures_BW_35_55_53; Pressures_BW_50_70_53; Pressures_BW_70_80_53; Pressures_A_85_53;];

Temp_B_35 =        @(target) [fsolve(@(x) target-T_K_Function_Two(x),0.01), fsolve(@(x) target-T_K_1_Function_Two(x),0.01), fsolve(@(x) target-T_K_2_Function_Two(x),0.01), fsolve(@(x) target-T_K_3_Function_Two(x),0.01)];
Temp_BW_35_55 =    @(target) [fsolve(@(x) target-T_K_Function_Three(x),0.01), fsolve(@(x) target-T_K_1_Function_Three(x),0.01), fsolve(@(x) target-T_K_2_Function_Three(x),0.01), fsolve(@(x) target-T_K_3_Function_Three(x),0.01)];
Temp_BW_50_70 =    @(target) [fsolve(@(x) target-T_K_Function_Four(x),0.01), fsolve(@(x) target-T_K_1_Function_Four(x),0.01), fsolve(@(x) target-T_K_2_Function_Four(x),0.01), fsolve(@(x) target-T_K_3_Function_Four(x),0.01)];
Temp_BW_70_80 =    @(target) [fsolve(@(x) target-T_K_Function_Five(x),0.01), fsolve(@(x) target-T_K_1_Function_Five(x),0.01), fsolve(@(x) target-T_K_2_Function_Five(x),0.01), fsolve(@(x) target-T_K_3_Function_Five(x),0.01)];
Temp_A_85 =        @(target) [fsolve(@(x) target-T_K_Function_Six(x),0.01), fsolve(@(x) target-T_K_1_Function_Six(x),0.01), fsolve(@(x) target-T_K_2_Function_Six(x),0.01), fsolve(@(x) target-T_K_3_Function_Six(x),0.01)];

Temp_B_35_53 =  Temp_B_35(alt_target);
Temp_BW_35_55_53 = Temp_BW_35_55(alt_target);
Temp_BW_50_70_53 = Temp_BW_50_70(alt_target);
Temp_BW_70_80_53 = Temp_BW_70_80(alt_target);
Temp_A_85_53 = Temp_A_85(alt_target);

Temps_53 = [Temp_B_35_53; Temp_BW_35_55_53; Temp_BW_50_70_53; Temp_BW_70_80_53; Temp_A_85_53;];

R = 43.531;
gas_constant = 8.314;
R_specific = R/gas_constant;

rho_B_35 =      @(target) (Pressures_B_35(target).*1000)./(R_specific .*Temp_B_35(target));
rho_BW_35_55 =  @(target) (Pressures_BW_35_55(target).*1000)./(R_specific .*Temp_BW_35_55(target));
rho_BW_50_70 =  @(target) (Pressures_BW_50_70(target).*1000)./(R_specific .*Temp_BW_50_70(target));
rho_BW_70_80 =  @(target) (Pressures_BW_70_80(target).*1000)./(R_specific .*Temp_BW_70_80(target));
rho_A_85 =      @(target) (Pressures_A_85(target).*1000)./(R_specific .*Temp_A_85(target));

rho_B_35_53 =      rho_B_35(53);
rho_BW_35_55_53 =  rho_BW_35_55(53);
rho_BW_50_70_53 =  rho_BW_50_70(53);
rho_BW_70_80_53 =  rho_BW_70_80(53);
rho_A_85_53 =      rho_A_85(53);

% rho_B_35_targets = zeros(1,100)
% for i = 1:100
%     rho_B_35_targets(i) = rho_B_35(targets)
% end
%%
%Densities_53 = [rho_B_35_53; rho_BW_35_55_53; rho_BW_50_70_53; rho_BW_70_80_53; rho_A_85_53;];

%Temps = array2table(Temps_53, 'VariableNames', {'Ls 20-90','Ls 90-130','Ls 200-270','Ls 270-310 [K]'},'RowNames', {'phi<35','35<phi<55','50<phi<70','70<phi<80', 'phi>85'});
%Press = array2table(Pressures_53,'VariableNames', {'Ls 20-90','Ls 90-130','Ls 200-270','Ls 270-310 [Pa]'},'RowNames', {'phi<35','35<phi<55','50<phi<70','70<phi<80', 'phi>85'});
%Denss = array2table(Densities_53,'VariableNames', {'Ls 20-90','Ls 90-130','Ls 200-270','Ls 270-310 [kg/m^3]'},'RowNames', {'phi<35','35<phi<55','50<phi<70','70<phi<80', 'phi>85'});

%Temp_BW_35_55_targets = Temp_BW_35_55(targets);
%Pressures_BW_35_55_targets = Pressures_BW_35_55(targets)'; 
%rho_BW_35_55_targets =  rho_BW_35_55(targets)';

% Conduct Level Flight at alt_target km
rho_5_km = fsolve(@(x)  (5-Density_Function(x)),1); %kg/m^3
rho_10_km = fsolve(@(x) (10-Density_Function(x)),1); %kg/m^3
rho_20_km = fsolve(@(x) (20-Density_Function(x)),1); %kg/m^3
rho_25_km = fsolve(@(x) (25-Density_Function(x)),1); %kg/m^3
rho_30_km = fsolve(@(x) (30-Density_Function(x)),1); %kg/m^3
rho_40_km = fsolve(@(x) (40-Density_Function(x)),1); %kg/m^3
rho_41_km = fsolve(@(x) (41-Density_Function(x)),1); %kg/m^3
rho_42_km = fsolve(@(x) (42-Density_Function(x)),1); %kg/m^3
rho_43_km = fsolve(@(x) (43-Density_Function(x)),1); %kg/m^3
rho_44_km = fsolve(@(x) (44-Density_Function(x)),1); %kg/m^3
rho_45_km = fsolve(@(x) (45-Density_Function(x)),1); %kg/m^3
rho_46_km = fsolve(@(x) (46-Density_Function(x)),1); %kg/m^3
rho_47_km = fsolve(@(x) (47-Density_Function(x)),1); %kg/m^3
rho_48_km = fsolve(@(x) (48-Density_Function(x)),1); %kg/m^3
rho_49_km = fsolve(@(x) (49-Density_Function(x)),1); %kg/m^3
rho_50_km = fsolve(@(x) (50-Density_Function(x)),1); %kg/m^3
rho_51_km = fsolve(@(x) (51-Density_Function(x)),1); %kg/m^3
rho_52_km = fsolve(@(x) (52-Density_Function(x)),1); %kg/m^3
rho_53_km = fsolve(@(x) (alt_target-Density_Function(x)),1); %kg/m^3
rho_54_km = fsolve(@(x) (54-Density_Function(x)),1); %kg/m^3
rho_55_km = fsolve(@(x) (55-Density_Function(x)),1); %kg/m^3
rho_56_km = fsolve(@(x) (56-Density_Function(x)),1); %kg/m^3
rho_57_km = fsolve(@(x) (57-Density_Function(x)),1); %kg/m^3
rho_58_km = fsolve(@(x) (58-Density_Function(x)),1); %kg/m^3
rho_59_km = fsolve(@(x) (59-Density_Function(x)),1); %kg/m^3
rho_60_km = fsolve(@(x) (60-Density_Function(x)),1); %kg/m^3
rho_61_km = fsolve(@(x) (61-Density_Function(x)),1); %kg/m^3
rho_62_km = fsolve(@(x) (62-Density_Function(x)),1); %kg/m^3
rho_63_km = fsolve(@(x) (63-Density_Function(x)),1); %kg/m^3
rho_64_km = fsolve(@(x) (64-Density_Function(x)),1); %kg/m^3
rho_65_km = fsolve(@(x) (65-Density_Function(x)),1); %kg/m^3
rho_66_km = fsolve(@(x) (66-Density_Function(x)),1); %kg/m^3
rho_67_km = fsolve(@(x) (67-Density_Function(x)),1); %kg/m^3
rho_68_km = fsolve(@(x) (68-Density_Function(x)),1); %kg/m^3
rho_69_km = fsolve(@(x) (69-Density_Function(x)),1); %kg/m^3
rho_70_km = fsolve(@(x) (70-Density_Function(x)),1); %kg/m^3



%%
targets = linspace(50,100,100);

Pressures_B_35_ls2090 = @(target)   (fsolve(@(x) target-P_Bar_Function_Eq_Two(x),0.81));
Pressures_B_35_ls90130 = @(target)  (fsolve(@(x) target-P_Bar_1_Function_Eq_Two(x),0.81));
Pressures_B_35_ls200270 = @(target) (fsolve(@(x) target-P_Bar_2_Function_Eq_Two(x),0.81));
Pressures_B_35_ls270310 = @(target) (fsolve(@(x) target-P_Bar_3_Function_Eq_Two(x),0.81));
Pressures_B_35 = @(target) [Pressures_B_35_ls2090(target),Pressures_B_35_ls90130(target),Pressures_B_35_ls200270(target),Pressures_B_35_ls270310(target)];

Temp_B_35_ls2090 =      @(target) fsolve(@(x) target-T_K_Function_Two(x),0.81);
Temp_B_35_ls90130 =     @(target) fsolve(@(x) target-T_K_1_Function_Two(x),0.81);
Temp_B_35_ls200270 =    @(target) fsolve(@(x) target-T_K_2_Function_Two(x),0.81);
Temp_B_35_ls270310 =    @(target) fsolve(@(x) target-T_K_3_Function_Two(x),0.81);
Temp_B_35 = @(target) [Temp_B_35_ls2090(target) Temp_B_35_ls90130(target) Temp_B_35_ls200270(target) Temp_B_35_ls270310(target)];

rho_B_35ls2090      = @(target) (Pressures_B_35_ls2090(target).*1000)./(R_specific .*Temp_B_35_ls2090(target));
rho_B_35ls90130     = @(target) (Pressures_B_35_ls90130(target).*1000)./(R_specific .*Temp_B_35_ls90130(target));
rho_B_35ls200270    = @(target) (Pressures_B_35_ls200270(target).*1000)./(R_specific .*Temp_B_35_ls200270(target));
rho_B_35ls270310    = @(target) (Pressures_B_35_ls270310(target).*1000)./(R_specific .*Temp_B_35_ls270310(target));

rho_B_35ls2090_53 = rho_B_35ls2090(53);
rho_B_35ls90130_53 = rho_B_35ls90130(53);
rho_B_35ls200270_53 = rho_B_35ls200270(53);
rho_B_35ls270310_53 = rho_B_35ls270310(53);

rho_B_35ls2090_sol   = arrayfun(@(targets) rho_B_35ls2090(targets),targets)  ;  
rho_B_35ls90130_sol  = arrayfun(@(targets) rho_B_35ls90130(targets),targets);
rho_B_35ls200270_sol = arrayfun(@(targets) rho_B_35ls200270(targets),targets);
rho_B_35ls270310_sol = arrayfun(@(targets) rho_B_35ls270310(targets),targets);


%% Analysis
Diameters = 0:0.01:50; %m
Radi = Diameters/2; %m
Vol_Balloon = @(r) (4/3)*pi.*r.^3;   %m^3
Mass_Total = @(rho,Radi) Vol_Balloon(Radi)*rho;

figure(7)
plot(Vol_Balloon(Radi),    Mass_Total(rho_58_km,Radi),...
     Vol_Balloon(Radi),    Mass_Total(rho_57_km,Radi),...
     Vol_Balloon(Radi),    Mass_Total(rho_56_km,Radi),...
     Vol_Balloon(Radi),    Mass_Total(rho_55_km,Radi),...
     Vol_Balloon(Radi),    Mass_Total(rho_54_km,Radi),...
     Vol_Balloon(Radi),    Mass_Total(rho_53_km,Radi), ...
     Vol_Balloon(Radi),    Mass_Total(rho_52_km,Radi), ...
     Vol_Balloon(4.76215), Mass_Total(1.3814,4.76215),'r*',...
     Vol_Balloon(4.76215), Mass_Total(0.8,4.76215),'b*')

title('Stable Altitudes - Mass and Volume','fontsize',18)
legend('58 [km]','57 [km]','56 [km]','55 [km]','54 [km]','53 [km]','52 [km]','Max Density','Min Density','Location','Northwest','fontsize',16)
xlabel('Volume of Balloon [m^3]','fontsize',18)
ylabel('Mass of Balloon [kg]','fontsize',18)
ylim([200 800])
xlim([200 800])

figure(8)
sgtitle('Density - 1972 Model (VIRA) vs. Time Dependent Model')
plot(Table7.Density*1000, Table7.Altitude,'bo',Density, Density_Function(Density),'r-', rho_B_35ls2090_sol, targets, 'b-', rho_B_35ls90130_sol, targets, 'g-', rho_B_35ls200270_sol, targets, 'm-', rho_B_35ls270310_sol, targets, 'y')
ylim([50 60])
legend('VIRA Data Points', 'VIRA Function', '$\displaystyle {L_s 20^{\circ}-90^{\circ}}$','$\displaystyle {L_s 90^{\circ}-130^{\circ}}$','$\displaystyle {L_s 200^{\circ}-270^{\circ}}$','$\displaystyle {L_s 270^{\circ}-310^{\circ}}$','Interpreter','latex','fontsize',18)
xlabel('$\displaystyle \textnormal{Density} \ [\frac{kg}{m^3}]$','Interpreter','latex','fontsize',18)
ylabel('$\displaystyle \textnormal{Height} \ [\textnormal{km}]$', 'Interpreter','latex','fontsize',18)


%% Buoyant Lift
clc, close all 

a = 6;
b = a;
c = 1;
original_vol = sphere_volume(a); %[m3]
hel_r_spec = 2007.92; %[J/(kg*K)]
gas_pres = 80000;
altitudes = 0:1:100;

rho_B_35ls2090_hel      = @(target) (gas_pres)./(hel_r_spec .*Temp_B_35_ls2090(target));
rho_B_35ls90130_hel     = @(target) (gas_pres)./(hel_r_spec .*Temp_B_35_ls90130(target));
rho_B_35ls200270_hel    = @(target) (gas_pres)./(hel_r_spec .*Temp_B_35_ls200270(target));
rho_B_35ls270310_hel    = @(target) (gas_pres)./(hel_r_spec .*Temp_B_35_ls270310(target));
rho_B_35ls2090_sol_hel   = arrayfun(@(targets) rho_B_35ls2090_hel(targets),altitudes);  
rho_B_35ls90130_sol_hel  = arrayfun(@(targets) rho_B_35ls90130_hel(targets),altitudes);
rho_B_35ls200270_sol_hel = arrayfun(@(targets) rho_B_35ls200270_hel(targets),altitudes);
rho_B_35ls270310_sol_hel = arrayfun(@(targets) rho_B_35ls270310_hel(targets),altitudes);

gas_mass_2090 = rho_B_35ls2090_sol_hel.*original_vol;
gas_mass_90130 = rho_B_35ls90130_sol_hel.*original_vol;
gas_mass_200270 = rho_B_35ls200270_sol_hel.*original_vol;
gas_mass_270310 = rho_B_35ls270310_sol_hel.*original_vol;

rho_B_35ls2090_sol   = arrayfun(@(targets) rho_B_35ls2090(targets),altitudes)  ;  
rho_B_35ls90130_sol  = arrayfun(@(targets) rho_B_35ls90130(targets),altitudes);
rho_B_35ls200270_sol = arrayfun(@(targets) rho_B_35ls200270(targets),altitudes);
rho_B_35ls270310_sol = arrayfun(@(targets) rho_B_35ls270310(targets),altitudes);

original_buoyant_lift_2090 = buoy_lift(original_vol, rho_B_35ls2090_sol, rho_B_35ls2090_sol_hel);    
original_buoyant_lift_90130 = buoy_lift(original_vol, rho_B_35ls90130_sol, rho_B_35ls90130_sol_hel);    
original_buoyant_lift_200270 = buoy_lift(original_vol, rho_B_35ls200270_sol, rho_B_35ls200270_sol_hel);    
original_buoyant_lift_270310 = buoy_lift(original_vol, rho_B_35ls270310_sol, rho_B_35ls270310_sol_hel);    

pv_thickness = 0.0010000;
pv_density = 1.22*1000;
pv_stress = gas_pres*a/(2*pv_thickness)
pv_volume = sphere_volume(a) - sphere_volume((a-pv_thickness));
pv_mass = pv_density.*pv_volume;

t = pv_thickness;
c_wing = 0.25;
b_wing = 0.5;
V_wing = b_wing^2/(b_wing*c_wing)*t;
m_wing = 4*V_wing*pv_density;

a_gon = 0.1;
b_gon = 0.1;
c_gon = 0.1;
t_gon = 0.000154;
density_gondola = 1740;

vol_gondola = a_gon*b_gon*c_gon;
gondola_mass = (vol_gondola-(vol_gondola*.9))*density_gondola;

payload_mass = 0:1:100;
m_total_2090 =  gondola_mass+gas_mass_2090+pv_mass+payload_mass;
m_total_90130 =  gondola_mass+gas_mass_90130+pv_mass+payload_mass;
m_total_200270 =  gondola_mass+gas_mass_200270+pv_mass+payload_mass;
m_total_270310 =   gondola_mass+gas_mass_270310+pv_mass+payload_mass;

m_other_2090 = gondola_mass+pv_mass;
m_other_90130 = gondola_mass+pv_mass;
m_other_200270 = gondola_mass+pv_mass;
m_other_270310 = gondola_mass+pv_mass;

g = 8.87;

alt_stability_2090 = original_buoyant_lift_2090 - m_total_2090;
alt_stability_90130 = original_buoyant_lift_90130 - m_total_90130;
alt_stability_200270 = original_buoyant_lift_200270 - m_total_200270;
alt_stability_270310 = original_buoyant_lift_270310 - m_total_270310;

figure
hold on
m_total_2090_fit = fit(m_total_2090',alt_stability_2090','smoothingspline');
m_total_2090_fun = @(x) feval(m_total_2090_fit,x);
m_total_2090_sol = fzero(m_total_2090_fun,55)

m_gas_2090_fit = fit(gas_mass_2090',alt_stability_2090','smoothingspline');
m_gas_2090_fun = @(x) feval(m_gas_2090_fit,x);
[m_gas_2090_sol, alt_2090_sol]  = fzero(m_gas_2090_fun,55)

m_payload_2090_fit = fit(payload_mass',alt_stability_2090','smoothingspline');
m_payload_2090_fun = @(x) feval(m_payload_2090_fun,x);
m_payload_2090_sol = fzero(m_payload_2090_fit,10)

m_total_90130_fit = fit(m_total_90130',alt_stability_90130','smoothingspline');
m_total_90130_fun = @(x) feval(m_total_90130_fit,x);
m_total_90130_sol = fzero(m_total_90130_fun,55)

m_gas_90130_fit = fit(gas_mass_90130',alt_stability_90130','smoothingspline');
m_gas_90130_fun = @(x) feval(m_gas_90130_fit,x);
[m_gas_90130_sol, alt_90130_sol]  = fzero(m_gas_90130_fun,55)

m_payload_90130_fit = fit(payload_mass',alt_stability_90130','smoothingspline');
m_payload_90130_fun = @(x) feval(m_payload_90130_fun,x);
m_payload_90130_sol = fzero(m_payload_90130_fit,10)

m_total_200270_fit = fit(m_total_200270',alt_stability_200270','smoothingspline');
m_total_200270_fun = @(x) feval(m_total_200270_fit,x);
m_total_200270_sol = fzero(m_total_200270_fun,55)

m_gas_200270_fit = fit(gas_mass_2090',alt_stability_2090','smoothingspline');
m_gas_200270_fun = @(x) feval(m_gas_2090_fit,x);
[m_gas_200270_sol, alt_200270_sol]  = fzero(m_gas_2090_fun,55)

m_payload_200270_fit = fit(payload_mass',alt_stability_200270','smoothingspline');
m_payload_200270_fun = @(x) feval(m_payload_200270_fun,x);
m_payload_200270_sol = fzero(m_payload_200270_fit,10)

m_total_270310_fit = fit(m_total_270310',alt_stability_270310','smoothingspline');
m_total_270310_fun = @(x) feval(m_total_270310_fit,x);
m_total_270310_sol = fzero(m_total_270310_fun,55)

m_gas_270310_fit = fit(gas_mass_270310',alt_stability_270310','smoothingspline');
m_gas_270310_fun = @(x) feval(m_gas_270310_fit,x);
[m_gas_270310_sol, alt_270310_sol]  = fzero(m_gas_270310_fun,55)

m_payload_270310_fit = fit(payload_mass',alt_stability_270310','smoothingspline');
m_payload_270310_fun = @(x) feval(m_payload_270310_fun,x);
m_payload_270310_sol = fzero(m_payload_270310_fit,30)

figure
hold on
title('Solution Space','fontsize',18)
plot3(payload_mass,gas_mass_2090,alt_stability_2090)
plot3(payload_mass,gas_mass_90130,alt_stability_90130)
plot3(payload_mass,gas_mass_200270,alt_stability_200270)
plot3(payload_mass,gas_mass_270310,alt_stability_270310)
plot3(m_payload_2090_sol,m_gas_2090_sol,0,'b*');
plot3(m_payload_90130_sol,m_gas_90130_sol,0,'r*');
plot3(m_payload_200270_sol,m_gas_200270_sol,0,'y*');
plot3(m_payload_270310_sol,m_gas_270310_sol,0,'m*');
xlabel('Payload Mass [kg]','fontsize',18)
ylabel('Gas Mass [kg]','fontsize',18)
zlabel('Lifting Force [kg]','fontsize',18)
legend('$L_s 20^{\circ}-90^{\circ}$', '$L_s 90^{\circ}-130^{\circ}$','$L_s 200^{\circ}-270^{\circ}$','$L_s 270^{\circ}-310^{\circ}$',"Solution 1: " + num2str(m_payload_2090_sol)+", "+num2str(m_gas_2090_sol)+", "+num2str(alt_2090_sol), "Solution 2: " + num2str(m_payload_90130_sol)+", "+num2str(m_gas_90130_sol)+", "+num2str(alt_90130_sol),"Solution 3: " + num2str(m_payload_200270_sol)+", "+num2str(m_gas_200270_sol)+", "+num2str(alt_200270_sol),"Solution 4: " + num2str(m_payload_270310_sol)+", "+num2str(m_gas_270310_sol)+", "+num2str(alt_270310_sol) ,'Interpreter', 'latex','fontsize',18)
view(45,45)
grid on




hold off

alt_stability_2090_fit = fit(altitudes',alt_stability_2090','smoothingspline');
alt_stability_2090_fun = @(x) feval(alt_stability_2090_fit,x);
alt_stability_2090_sol = fzero(alt_stability_2090_fun,55)

alt_stability_90130_fit = fit(altitudes',alt_stability_90130','smoothingspline');
alt_stability_90130_fun = @(x) feval(alt_stability_90130_fit,x);
alt_stability_90130_sol = fzero(alt_stability_90130_fun,55);

alt_stability_200270_fit = fit(altitudes',alt_stability_200270','smoothingspline');
alt_stability_200270_fun = @(x) feval(alt_stability_200270_fit,x);
alt_stability_200270_sol = fzero(alt_stability_200270_fun,55);

alt_stability_270310_fit = fit(altitudes',alt_stability_270310','smoothingspline');
alt_stability_270310_fun = @(x) feval(alt_stability_270310_fit,x);
alt_stability_270310_sol = fzero(alt_stability_270310_fun,55);

figure
hold on
plot(altitudes,alt_stability_2090) 
plot(altitudes,alt_stability_90130) 
plot(altitudes,alt_stability_200270) 
plot(altitudes,alt_stability_270310) 

plot(alt_stability_2090_sol, 0, 'b*')
plot(alt_stability_90130_sol, 0, 'r*')
plot(alt_stability_200270_sol, 0, 'y*')
plot(alt_stability_270310_sol, 0,'m*')
legend('$L_s 20^{\circ}-90^{\circ}$', '$L_s 90^{\circ}-130^{\circ}$','$L_s 200^{\circ}-270^{\circ}$','$L_s 270^{\circ}-310^{\circ}$',num2str(alt_stability_2090_sol) + "[km]", num2str(alt_stability_90130_sol) + "[km]", num2str(alt_stability_200270_sol) + "[km]", num2str(alt_stability_270310_sol) + "[km]",'Interpreter','latex','fontsize',18)
xlabel('Altitude [km]','fontsize',18)
ylabel('Lifting Force [kg]','fontsize',18)
title('Altitude Potential','fontsize',18)
hold off