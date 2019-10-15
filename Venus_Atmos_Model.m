%% Figus
clear,clc

%Givens using "Structure of the Venusian Atmosphere" Paper
Table2 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_Less_Than_35', 'Range','A3:I53');
Table3 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_BW_35_55', 'Range','A3:I53');
Table4 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_BW_50_70', 'Range','A3:I53');
Table5 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_BW_70_80', 'Range','A3:I53');
Table6 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_85', 'Range','A3:I53');
Table7 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Density', 'Range','A2:E27');

n = 39
m = 45
l = 12

P_len = length(Table2.P_Bar) - n
P_len_1 = length(Table2.P_Bar_1) - n
P_len_2 = length(Table2.P_Bar_2) - n 

T_len = length(Table2.P_Bar) - m
T_len_1 = length(Table2.P_Bar_1) - m
T_len_2 = length(Table2.P_Bar_2) - m

rho_len = length(Table7.Density) - l
N_len = length(Table7.NumberDensity) - l
M_len = length(Table7.MolecularMass) - l
Visc_len = length(Table7.Viscosity) - l


%% Table Two Functions - Returns Heqight
    
P_Bar_Function_Eq_Two = polyfit(Table2.P_Bar,Table2.Var1,P_len);
P_Bar_Function_Two = @(x) polyval(P_Bar_Function_Eq_Two,x);

P_Bar_1_Function_Eq_Two = polyfit(Table2.P_Bar_1,Table2.Var1,P_len);
P_Bar_1_Function_Two = @(x) polyval(P_Bar_1_Function_Eq_Two,x);

P_Bar_2_Function_Eq_Two = polyfit(Table2.P_Bar_2,Table2.Var1,P_len);
P_Bar_2_Function_Two = @(x) polyval(P_Bar_2_Function_Eq_Two,x);

P_Bar_3_Function_Eq_Two = polyfit(Table2.P_Bar_3,Table3.Var1,P_len);
P_Bar_3_Function_Two = @(x) polyval(P_Bar_3_Function_Eq_Two,x);

T_K_Function_Eq_Two = polyfit(Table2.T_K,Table2.Var1,T_len);
T_K_Function_Two = @(x) polyval(T_K_Function_Eq_Two,x);

T_K_1_Function_Eq_Two = polyfit(Table2.T_K_1,Table2.Var1,T_len);
T_K_1_Function_Two = @(x) polyval(T_K_1_Function_Eq_Two,x);

T_K_2_Function_Eq_Two = polyfit(Table2.T_K_2,Table2.Var1,T_len);
T_K_2_Function_Two = @(x) polyval(T_K_2_Function_Eq_Two,x);

T_K_3_Function_Eq_Two = polyfit(Table2.T_K_3,Table2.Var1,T_len);
T_K_3_Function_Two = @(x) polyval(T_K_3_Function_Eq_Two,x);

%% Table Three Functions - Returns Height
P_Bar_Function_Eq_Three = polyfit(Table3.P_Bar,Table3.Var1,P_len);
P_Bar_Function_Three = @(x) polyval(P_Bar_Function_Eq_Three,x);

P_Bar_1_Function_Eq_Three = polyfit(Table3.P_Bar_1,Table3.Var1,P_len);
P_Bar_1_Function_Three = @(x) polyval(P_Bar_1_Function_Eq_Three,x);

P_Bar_2_Function_Eq_Three = polyfit(Table3.P_Bar_2,Table3.Var1,P_len);
P_Bar_2_Function_Three = @(x) polyval(P_Bar_2_Function_Eq_Three,x);

P_Bar_3_Function_Eq_Three = polyfit(Table3.P_Bar_3,Table3.Var1,P_len);
P_Bar_3_Function_Three = @(x) polyval(P_Bar_3_Function_Eq_Three,x);

T_K_Function_Eq_Three = polyfit(Table3.T_K,Table3.Var1,T_len);
T_K_Function_Three = @(x) polyval(T_K_Function_Eq_Three,x);

T_K_1_Function_Eq_Three = polyfit(Table3.T_K_1,Table3.Var1,T_len);
T_K_1_Function_Three = @(x) polyval(T_K_1_Function_Eq_Three,x);

T_K_2_Function_Eq_Three = polyfit(Table3.T_K_2,Table3.Var1,T_len);
T_K_2_Function_Three = @(x) polyval(T_K_2_Function_Eq_Three,x);

T_K_3_Function_Eq_Three = polyfit(Table3.T_K_3,Table3.Var1,T_len);
T_K_3_Function_Three = @(x) polyval(T_K_3_Function_Eq_Three,x);
%% Table Four Functions - Returns Height
P_Bar_Function_Eq_Four = polyfit(Table4.P_Bar,Table4.Var1,P_len);
P_Bar_Function_Four = @(x) polyval(P_Bar_Function_Eq_Four,x);

P_Bar_1_Function_Eq_Four = polyfit(Table4.P_Bar_1,Table4.Var1,P_len);
P_Bar_1_Function_Four = @(x) polyval(P_Bar_1_Function_Eq_Four,x);

P_Bar_2_Function_Eq_Four = polyfit(Table4.P_Bar_2,Table4.Var1,P_len);
P_Bar_2_Function_Four = @(x) polyval(P_Bar_2_Function_Eq_Four,x);

P_Bar_3_Function_Eq_Four = polyfit(Table4.P_Bar_3,Table4.Var1,P_len);
P_Bar_3_Function_Four = @(x) polyval(P_Bar_3_Function_Eq_Four,x);

T_K_Function_Eq_Four = polyfit(Table4.T_K,Table4.Var1,T_len);
T_K_Function_Four = @(x) polyval(T_K_Function_Eq_Four,x);

T_K_1_Function_Eq_Four = polyfit(Table4.T_K_1,Table4.Var1,T_len);
T_K_1_Function_Four = @(x) polyval(T_K_1_Function_Eq_Four,x);

T_K_2_Function_Eq_Four = polyfit(Table4.T_K_2,Table4.Var1,T_len);
T_K_2_Function_Four = @(x) polyval(T_K_2_Function_Eq_Four,x);

T_K_3_Function_Eq_Four = polyfit(Table4.T_K_3,Table4.Var1,T_len);
T_K_3_Function_Four = @(x) polyval(T_K_3_Function_Eq_Four,x);
%% Table Five Functions - Returns Height
P_Bar_Function_Eq_Five = polyfit(Table5.P_Bar,Table5.Var1,P_len);
P_Bar_Function_Five = @(x) polyval(P_Bar_Function_Eq_Five,x);

P_Bar_1_Function_Eq_Five = polyfit(Table5.P_Bar_1,Table5.Var1,P_len);
P_Bar_1_Function_Five = @(x) polyval(P_Bar_1_Function_Eq_Five,x);

P_Bar_2_Function_Eq_Five = polyfit(Table5.P_Bar_2,Table5.Var1,P_len);
P_Bar_2_Function_Five = @(x) polyval(P_Bar_2_Function_Eq_Five,x);

P_Bar_3_Function_Eq_Five = polyfit(Table5.P_Bar_3,Table5.Var1,P_len);
P_Bar_3_Function_Five = @(x) polyval(P_Bar_3_Function_Eq_Five,x);

T_K_Function_Eq_Five = polyfit(Table5.T_K,Table5.Var1,T_len);
T_K_Function_Five = @(x) polyval(T_K_Function_Eq_Five,x);

T_K_1_Function_Eq_Five = polyfit(Table5.T_K_1,Table5.Var1,T_len);
T_K_1_Function_Five = @(x) polyval(T_K_1_Function_Eq_Five,x);

T_K_2_Function_Eq_Five = polyfit(Table5.T_K_2,Table5.Var1,T_len);
T_K_2_Function_Five = @(x) polyval(T_K_2_Function_Eq_Five,x);

T_K_3_Function_Eq_Five = polyfit(Table5.T_K_3,Table5.Var1,T_len);
T_K_3_Function_Five = @(x) polyval(T_K_3_Function_Eq_Five,x);
%% Table 6 Functions - Returns Height
P_Bar_Function_Eq_Six = polyfit(Table6.P_Bar,Table6.Var1,P_len);
P_Bar_Function_Six = @(x) polyval(P_Bar_Function_Eq_Six,x);

P_Bar_1_Function_Eq_Six = polyfit(Table6.P_Bar_1,Table6.Var1,P_len);
P_Bar_1_Function_Six = @(x) polyval(P_Bar_1_Function_Eq_Six,x);

P_Bar_2_Function_Eq_Six = polyfit(Table6.P_Bar_2,Table6.Var1,P_len);
P_Bar_2_Function_Six = @(x) polyval(P_Bar_2_Function_Eq_Six,x);

P_Bar_3_Function_Eq_Six = polyfit(Table6.P_Bar_3,Table6.Var1,P_len);
P_Bar_3_Function_Six = @(x) polyval(P_Bar_3_Function_Eq_Six,x);

T_K_Function_Eq_Six = polyfit(Table6.T_K,Table6.Var1,T_len);
T_K_Function_Six = @(x) polyval(T_K_Function_Eq_Six,x);

T_K_1_Function_Eq_Six = polyfit(Table6.T_K_1,Table6.Var1,T_len);
T_K_1_Function_Six = @(x) polyval(T_K_1_Function_Eq_Six,x);

T_K_2_Function_Eq_Six = polyfit(Table6.T_K_2,Table6.Var1,T_len);
T_K_2_Function_Six = @(x) polyval(T_K_2_Function_Eq_Six,x);

T_K_3_Function_Eq_Six = polyfit(Table6.T_K_3,Table2.Var1,T_len);
T_K_3_Function_Six = @(x) polyval(T_K_3_Function_Eq_Six,x);
%% Table 7 - Functions - Returns Height

Density_Function_Eq = polyfit(Table7.Density.*1000,Table7.Altitude,rho_len);
Density_Function = @(x) polyval(Density_Function_Eq,x);
Density = Table7.Density*1000;

Molecular_Mass_Function_Eq = polyfit(Table7.MolecularMass,Table7.Altitude,1);
Molecular_Mass_Function = @(x) Molecular_Mass_Function_Eq(1).*x+Molecular_Mass_Function_Eq(2);

Number_Density_Function_Eq = polyfit(Table7.NumberDensity,Table7.Altitude,2);
Number_Density_Function = @(x) Number_Density_Function_Eq(1).*x+Number_Density_Function_Eq(2);


Viscosity_Function_Eq = polyfit(Table7.Viscosity,Table7.Altitude,6);
Viscosity_Function = @(x) Viscosity_Function_Eq(1).*x.^6+Viscosity_Function_Eq(2).*x.^5+Viscosity_Function_Eq(3).*x.^4+Viscosity_Function_Eq(4).*x.^3+Viscosity_Function_Eq(5).*x.^2+Viscosity_Function_Eq(6).*x+Viscosity_Function_Eq(7);

%% Figures
figure(1)
%sgtitle('\phi < 35^{\circ}')
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
%sgtitle('\phi = 35^{\circ} - 55^{\circ}')
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
plot(Table3.T_K_2,Table3.Var1,'ro',Table3.T_K_2, T_K_Function_Three(Table3.T_K_2),'b-');
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
%sgtitle('\phi = 50^{\circ} - 70^{\circ}')
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
%sgtitle('\phi = 70^{\circ} - 80^{\circ}')
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
%sgtitle('\phi = 85^{\circ}')
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
%sgtitle('1972 - Venus Atmosphere (Model 1) (most probable molecular mass and mean solar activity)')
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


%% Analysis
% Conduct Level Flight at 53 km

rho_50_km = fsolve(@(x) (50-Density_Function(x)),1); %kg/m^3
rho_60_km = fsolve(@(x) (60-Density_Function(x)),1); %kg/m^3
rho_70_km = fsolve(@(x) (70-Density_Function(x)),1); %kg/m^3
rho_80_km = fsolve(@(x) (80-Density_Function(x)),1); %kg/m^3
rho_53_km = fsolve(@(x) (53-Density_Function(x)),1); %kg/m^3


Diameters = 0:0.01:50; %m
Radi = Diameters/2; %m
Vol_Balloon = @(r) (4/3)*pi.*r.^3;   %m^3
Mass_Total = @(rho) Vol_Balloon(Radi)*rho;

figure(7)
plot(Vol_Balloon(Radi), Mass_Total(rho_50_km),Vol_Balloon(Radi), Mass_Total(rho_60_km),Vol_Balloon(Radi), Mass_Total(rho_70_km),Vol_Balloon(Radi), Mass_Total(rho_80_km), Vol_Balloon(Radi), Mass_Total(rho_53_km), Vol_Balloon(3.4/2),21.5,'r*',Vol_Balloon(7.1/2),162.5,'r*',Vol_Balloon(11.1663/2),625,'b*',Vol_Balloon(11.1663/2),625,'b*','LineWidth',2);
title('Stable Altitudes - Mass and Volume','fontsize',18)
legend('50 [km]','60 [km]','70 [km]','80 [km]','53 [km]','Vega 1 & 2','NASA Venus Reference (VDRM)','Cupid','Aeneas','location','Northwest')
xlabel('Volume of Balloon [m^3]','fontsize',18)
ylabel('Mass of Balloon [kg]','fontsize',18)
ylim([0 900])
xlim([0 1250])

%% Temperature and Pressure

% Pressure_B_35 = [fsolve(@(x) 53-P_Bar_Function_Two(x),0.7), fsolve(@(x) 53-P_Bar_1_Function_Two(x),0.7),fsolve(@(x) 53-P_Bar_1_Function_Two(x),0.7)];
% Pressure_BW_35_55 = [fsolve(@(x) 53-P_Bar_Function_Three(x),0.7), fsolve(@(x) 53-P_Bar_Function_Three(x),0.7),fsolve(@(x) 53-P_Bar_Function_Three(x),0.7)];
% Pressure_BW_50_70 = [fsolve(@(x) 53-P_Bar_Function_Four(x),0.7), fsolve(@(x) 53-P_Bar_Function_Four(x),0.7),fsolve(@(x) 53-P_Bar_Function_Four(x),0.7)];
% Pressure_BW_70_80 = [fsolve(@(x) 53-P_Bar_Function_Five(x),0.7), fsolve(@(x) 53-P_Bar_Function_Five(x),0.7),fsolve(@(x) 53-P_Bar_Function_Five(x),0.7)];
% Pressure_B_85 = [fsolve(@(x) 53-P_Bar_Function_Six(x),0.7), fsolve(@(x) 53-P_Bar_Function_Six(x),0.7),fsolve(@(x) 53-P_Bar_Function_Six(x),0.7)];

% Temp_B_35 = [fsolve(@(x) 53-T_K_Function_Two(x),350), fsolve(@(x) 53-T_K_1_Function_Two(x),350),fsolve(@(x) 53-T_K_2_Function_Two(x),350)];
% Temp_BW_35_55 = [fsolve(@(x) 53-T_K_Function_Three(x),350), fsolve(@(x) 53-T_K_1_Function_Three(x),350),fsolve(@(x) 53-T_K_2_Function_Three(x),350)];
% Temp_BW_50_70 = [fsolve(@(x) 53-T_K_Function_Four(x),350), fsolve(@(x) 53-T_K_1_Function_Four(x),350),fsolve(@(x) 53-T_K_2_Function_Four(x),350)];
% Temp_BW_70_80 = [fsolve(@(x) 53-T_K_Function_Five(x),350), fsolve(@(x) 53-T_K_1_Function_Five(x),350),fsolve(@(x) 53-T_K_2_Function_Five(x),350)];
% Temp_B_85 = [fsolve(@(x) 53-T_K_Function_Six(x),350), fsolve(@(x) 53-T_K_1_Function_Six(x),350),fsolve(@(x) 53-T_K_2_Function_Six(x),350)];

% Pres_Solar_Long_20_90 = [Pressure_B_35(1),Pressure_BW_35_55(1),Pressure_BW_50_70(1),Pressure_BW_70_80(1),Pressure_B_85(1)];
% Pres_Solar_Long_90_130 = [Pressure_B_35(2),Pressure_BW_35_55(2),Pressure_BW_50_70(2),Pressure_BW_70_80(2),Pressure_B_85(2)];
% Pres_Solar_Long_200_270 = [Pressure_B_35(3),Pressure_BW_35_55(3),Pressure_BW_50_70(3),Pressure_BW_70_80(3),Pressure_B_85(3)];
%Solar_Long_270_310 = [Pressure_B_35(3),Pressure_BW_35_55(3),Pressure_BW_50_70(3),Pressure_BW_70_80(3),Pressure_B_85(3)];

% Temp_Solar_Long_20_90 = [Temp_B_35(1),Temp_BW_35_55(1),Temp_BW_50_70(1),Temp_BW_70_80(1),Temp_B_85(1)];
% Temp_Solar_Long_90_130 = [Temp_B_35(2),Temp_BW_35_55(2),Temp_BW_50_70(2),Temp_BW_70_80(2),Temp_B_85(2)];
% Temp_Solar_Long_200_270 = [Temp_B_35(3),Temp_BW_35_55(3),Temp_BW_50_70(3),Temp_BW_70_80(3),Temp_B_85(3)];
%Temp_Solar_Long_270_310 = [Temp_B_35(3),Temp_BW_35_55(3),Temp_BW_50_70(3),Temp_BW_70_80(3),Temp_B_85(3)];

%% Sphere Plot
% figure;
% 
% Temp_Range_20_90  
% 
% 
% N = 5;
% thetavec = linspace(0,pi,N);
% phivec = linspace(0,2*pi,2*N);
% [th, ph] = meshgrid(thetavec,phivec);
% R = ones(size(th)); % should be your R(theta,phi) surface in general
% 
% x = R.*sin(th).*cos(ph);
% y = R.*sin(th).*sin(ph);
% z = R.*cos(th);
% c_data = ones(size(th)).*Temp_Solar_Long_20_90;
% 
% surf(x,y,z,c_data);
% axis vis3d


%% Free Space Propagation Model
% freq = 2.4;
% d_km = 50;
% r_venus = 6051.8; %km
% sat_alpha = rad2deg(10); 
% H = 150;          %km
% 
% FSL = 20*log(d_km)+20*log(freq)+92.45;
%%
