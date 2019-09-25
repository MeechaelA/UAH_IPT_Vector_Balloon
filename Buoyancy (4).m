%% Figures
clear,clc

%Givens using "Structure of the Venusian Atmosphere" Paper
Table2 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_Less_Than_35', 'Range','A3:I53');
Table3 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_BW_35_55', 'Range','A3:I53');
Table4 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_BW_50_70', 'Range','A3:I53');
Table5 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_BW_70_80', 'Range','A3:I53');
Table6 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Phi_85', 'Range','A3:I53');
Table7 = readtable('Venus_Atmos.xlsx', 'Sheet', 'Density', 'Range','A2:E27');

%% Table Two Functions - Returns Heqight
P_Bar_Function_E_Two = polyfit(Table2.P_Bar,Table2.Var1,5);
P_Bar_Function_Two = @(x) P_Bar_Function_Eq_Two(1)*x^5+P_Bar_Function_Eq_Two(2)*x^4+P_Bar_Function_Eq_Two(3)*x^3+P_Bar_Function_Eq_Two(4)*x^2+P_Bar_Function_Eq_Two(5)*x+P_Bar_Function_Eq_Two(6);

P_Bar_1_Function_Eq_Two = polyfit(Table2.P_Bar_1,Table2.Var1,5);
P_Bar_1_Function_Two = @(x) P_Bar_1_Function_Eq_Two(1)*x^5+P_Bar_1_Function_Eq_Two(2)*x^4+P_Bar_1_Function_Eq_Two(3)*x^3+P_Bar_1_Function_Eq_Two(4)*x^2+P_Bar_1_Function_Eq_Two(5)*x+P_Bar_1_Function_Eq_Two(6);

P_Bar_2_Function_Eq_Two = polyfit(Table2.P_Bar_2,Table2.Var1,5);
P_Bar_2_Function_Two = @(x) P_Bar_2_Function_Eq_Two(1)*x^5+P_Bar_2_Function_Eq_Two(2)*x^4+P_Bar_2_Function_Eq_Two(3)*x^3+P_Bar_2_Function_Eq_Two(4)*x^2+P_Bar_2_Function_Eq_Two(5)*x+P_Bar_2_Function_Eq_Two(6);

T_K_Function_Eq_Two = polyfit(Table2.T_K,Table2.Var1,5);
T_K_Function_Two = @(x) T_K_Function_Eq_Two(1)*x^5+T_K_Function_Eq_Two(2)*x^4+T_K_Function_Eq_Two(3)*x^3+T_K_Function_Eq_Two(4)*x^2+T_K_Function_Eq_Two(5)*x+T_K_Function_Eq_Two(6);

T_K_1_Function_Eq_Two = polyfit(Table2.T_K_1,Table2.Var1,5);
T_K_1_Function_Two = @(x) T_K_1_Function_Eq_Two(1)*x^5+T_K_1_Function_Eq_Two(2)*x^4+T_K_1_Function_Eq_Two(3)*x^3+T_K_1_Function_Eq_Two(4)*x^2+T_K_1_Function_Eq_Two(5)*x+T_K_1_Function_Eq_Two(6);

T_K_2_Function_Eq_Two = polyfit(Table2.T_K_2,Table2.Var1,5);
T_K_2_Function_Two = @(x) T_K_2_Function_Eq_Two(1)*x^5+T_K_2_Function_Eq_Two(2)*x^4+T_K_2_Function_Eq(3)*x^3+T_K_2_Function_Eq(4)*x^2+T_K_2_Function_Eq(5)*x+T_K_2_Function_Eq(6);

%% Table Three Functions - Returns Height
P_Bar_Function_Eq_Three = polyfit(Table3.P_Bar,Table3.Var1,5);
P_Bar_Function_Three = @(x) P_Bar_Function_Eq_Three(1)*x^5+P_Bar_Function_Eq_Three(2)*x^4+P_Bar_Function_Eq_Three(3)*x^3+P_Bar_Function_Eq_Three(4)*x^2+P_Bar_Function_Eq_Three(5)*x+P_Bar_Function_Eq_Three(6);

P_Bar_1_Function_Eq_Three = polyfit(Table3.P_Bar_1,Table3.Var1,5);
P_Bar_1_Function_Three = @(x) P_Bar_1_Function_Eq_Three(1)*x^5+P_Bar_1_Function_Eq_Three(2)*x^4+P_Bar_1_Function_Eq_Three(3)*x^3+P_Bar_1_Function_Eq_Three(4)*x^2+P_Bar_1_Function_Eq_Three(5)*x+P_Bar_1_Function_Eq_Three(6);

P_Bar_2_Function_Eq_Three = polyfit(Table3.P_Bar_2,Table3.Var1,5);
P_Bar_2_Function_Three = @(x) P_Bar_2_Function_Eq_Three(1)*x^5+P_Bar_2_Function_Eq_Three(2)*x^4+P_Bar_2_Function_Eq_Three(3)*x^3+P_Bar_2_Function_Eq_Three(4)*x^2+P_Bar_2_Function_Eq_Three(5)*x+P_Bar_2_Function_Eq_Three(6);

T_K_Function_Eq_Three = polyfit(Table3.T_K,Table3.Var1,5);
T_K_Function_Three = @(x) T_K_Function_Eq_Three(1)*x^5+T_K_Function_Eq_Three(2)*x^4+T_K_Function_Eq_Three(3)*x^3+T_K_Function_Eq_Three(4)*x^2+T_K_Function_Eq_Three(5)*x+T_K_Function_Eq_Three(6);

T_K_1_Function_Eq_Three = polyfit(Table3.T_K_1,Table3.Var1,5);
T_K_1_Function_Three = @(x) T_K_1_Function_Eq_Three(1)*x^5+T_K_1_Function_Eq_Three(2)*x^4+T_K_1_Function_Eq_Three(3)*x^3+T_K_1_Function_Eq_Three(4)*x^2+T_K_1_Function_Eq_Three(5)*x+T_K_1_Function_Eq_Three(6);

T_K_2_Function_Eq_Three = polyfit(Table3.T_K_2,Table3.Var1,5);
T_K_2_Function_Three = @(x) T_K_2_Function_Eq_Three(1)*x^5+T_K_2_Function_Eq_Three(2)*x^4+T_K_2_Function_Eq_Three(3)*x^3+T_K_2_Function_Eq_Three(4)*x^2+T_K_2_Function_Eq_Three(5)*x+T_K_2_Function_Eq_Three(6);

%% Table Four Functions - Returns Height
P_Bar_Function_Eq_Four = polyfit(Table4.P_Bar,Table4.Var1,5);
P_Bar_Function_Four = @(x) P_Bar_Function_Eq_Four(1)*x^5+P_Bar_Function_Eq_Four(2)*x^4+P_Bar_Function_Eq_Four(3)*x^3+P_Bar_Function_Eq_Four(4)*x^2+P_Bar_Function_Eq_Four(5)*x+P_Bar_Function_Eq_Four(6);
 
P_Bar_1_Function_Eq_Four = polyfit(Table4.P_Bar_1,Table4.Var1,5);
P_Bar_1_Function_Four = @(x) P_Bar_1_Function_Eq_Four(1)*x^5+P_Bar_1_Function_Eq_Four(2)*x^4+P_Bar_1_Function_Eq_Four(3)*x^3+P_Bar_1_Function_Eq_Four(4)*x^2+P_Bar_1_Function_Eq_Four(5)*x+P_Bar_1_Function_Eq_Four(6);
 
P_Bar_2_Function_Eq_Four = polyfit(Table4.P_Bar_2,Table4.Var1,5);
P_Bar_2_Function_Four = @(x) P_Bar_2_Function_Eq_Four(1)*x^5+P_Bar_2_Function_Eq_Four(2)*x^4+P_Bar_2_Function_Eq_Four(3)*x^3+P_Bar_2_Function_Eq_Four(4)*x^2+P_Bar_2_Function_Eq_Four(5)*x+P_Bar_2_Function_Eq_Four(6);
 
T_K_Function_Eq_Four = polyfit(Table4.T_K,Table4.Var1,5);
T_K_Function_Four = @(x) T_K_Function_Eq_Four(1)*x^5+T_K_Function_Eq_Four(2)*x^4+T_K_Function_Eq_Four(3)*x^3+T_K_Function_Eq_Four(4)*x^2+T_K_Function_Eq_Four(5)*x+T_K_Function_Eq_Four(6);
 
T_K_1_Function_Eq_Four = polyfit(Table4.T_K_1,Table4.Var1,5);
T_K_1_Function_Four = @(x) T_K_1_Function_Eq_Four(1)*x^5+T_K_1_Function_Eq_Four(2)*x^4+T_K_1_Function_Eq_Four(3)*x^3+T_K_1_Function_Eq_Four(4)*x^2+T_K_1_Function_Eq_Four(5)*x+T_K_1_Function_Eq_Four(6);
 
T_K_2_Function_Eq_Four = polyfit(Table4.T_K_2,Table4.Var1,5);
T_K_2_Function_Four = @(x) T_K_2_Function_Eq_Four(1)*x^5+T_K_2_Function_Eq_Four(2)*x^4+T_K_2_Function_Eq_Four(3)*x^3+T_K_2_Function_Eq_Four(4)*x^2+T_K_2_Function_Eq_Four(5)*x+T_K_2_Function_Eq_Four(6);

%% Table Five Functions - Returns Height
P_Bar_Function_Eq_Five = polyfit(Table5.P_Bar,Table5.Var1,5);
P_Bar_Function_Five = @(x) P_Bar_Function_Eq_Five(1)*x^5+P_Bar_Function_Eq_Five(2)*x^4+P_Bar_Function_Eq_Five(3)*x^3+P_Bar_Function_Eq_Five(4)*x^2+P_Bar_Function_Eq_Five(5)*x+P_Bar_Function_Eq_Five(6);
 
P_Bar_1_Function_Eq_Five = polyfit(Table5.P_Bar_1,Table5.Var1,5);
P_Bar_1_Function_Five = @(x) P_Bar_1_Function_Eq_Five(1)*x^5+P_Bar_1_Function_Eq_Five(2)*x^4+P_Bar_1_Function_Eq_Five(3)*x^3+P_Bar_1_Function_Eq_Five(4)*x^2+P_Bar_1_Function_Eq_Five(5)*x+P_Bar_1_Function_Eq_Five(6);
 
P_Bar_2_Function_Eq_Five = polyfit(Table5.P_Bar_2,Table5.Var1,5);
P_Bar_2_Function_Five = @(x) P_Bar_2_Function_Eq_Five(1)*x^5+P_Bar_2_Function_Eq_Five(2)*x^4+P_Bar_2_Function_Eq_Five(3)*x^3+P_Bar_2_Function_Eq_Five(4)*x^2+P_Bar_2_Function_Eq_Five(5)*x+P_Bar_2_Function_Eq_Five(6);
 
T_K_Function_Eq_Five = polyfit(Table5.T_K,Table5.Var1,5);
T_K_Function_Five = @(x) T_K_Function_Eq_Five(1)*x^5+T_K_Function_Eq_Five(2)*x^4+T_K_Function_Eq_Five(3)*x^3+T_K_Function_Eq_Five(4)*x^2+T_K_Function_Eq_Five(5)*x+T_K_Function_Eq_Five(6);
 
T_K_1_Function_Eq_Five = polyfit(Table5.T_K_1,Table5.Var1,5);
T_K_1_Function_Five = @(x) T_K_1_Function_Eq_Five(1)*x^5+T_K_1_Function_Eq_Five(2)*x^4+T_K_1_Function_Eq_Five(3)*x^3+T_K_1_Function_Eq_Five(4)*x^2+T_K_1_Function_Eq_Five(5)*x+T_K_1_Function_Eq_Five(6);
 
T_K_2_Function_Eq_Five = polyfit(Table5.T_K_2,Table5.Var1,5);
T_K_2_Function_Five = @(x) T_K_2_Function_Eq_Five(1)*x^5+T_K_2_Function_Eq_Five(2)*x^4+T_K_2_Function_Eq(3)*x^3+T_K_2_Function_Eq(4)*x^2+T_K_2_Function_Eq(5)*x+T_K_2_Function_Eq(6);
 
%% Table 6 Functions - Returns Height
P_Bar_Function_Eq_Six = polyfit(Table6.P_Bar,Table6.Var1,5);
P_Bar_Function_Six = @(x) P_Bar_Function_Eq_Six(1)*x^5+P_Bar_Function_Eq_Six(2)*x^4+P_Bar_Function_Eq_Six(3)*x^3+P_Bar_Function_Eq_Six(4)*x^2+P_Bar_Function_Eq_Six(5)*x+P_Bar_Function_Eq_Six(6);
 
P_Bar_1_Function_Eq_Six = polyfit(Table6.P_Bar_1,Table6.Var1,5);
P_Bar_1_Function_Six = @(x) P_Bar_1_Function_Eq_Six(1)*x^5+P_Bar_1_Function_Eq_Six(2)*x^4+P_Bar_1_Function_Eq_Six(3)*x^3+P_Bar_1_Function_Eq_Six(4)*x^2+P_Bar_1_Function_Eq_Six(5)*x+P_Bar_1_Function_Eq_Six(6);
 
P_Bar_2_Function_Eq_Six = polyfit(Table6.P_Bar_2,Table6.Var1,5);
P_Bar_2_Function_Six = @(x) P_Bar_2_Function_Eq_Six(1)*x^5+P_Bar_2_Function_Eq_Six(2)*x^4+P_Bar_2_Function_Eq_Six(3)*x^3+P_Bar_2_Function_Eq_Six(4)*x^2+P_Bar_2_Function_Eq_Six(5)*x+P_Bar_2_Function_Eq_Six(6);
 
T_K_Function_Eq_Six = polyfit(Table6.T_K,Table6.Var1,5);
T_K_Function_Six = @(x) T_K_Function_Eq_Six(1)*x^5+T_K_Function_Eq_Six(2)*x^4+T_K_Function_Eq_Six(3)*x^3+T_K_Function_Eq_Six(4)*x^2+T_K_Function_Eq_Six(5)*x+T_K_Function_Eq_Six(6);
 
T_K_1_Function_Eq_Six = polyfit(Table6.T_K_1,Table6.Var1,5);
T_K_1_Function_Six = @(x) T_K_1_Function_Eq_Six(1)*x^5+T_K_1_Function_Eq_Six(2)*x^4+T_K_1_Function_Eq_Six(3)*x^3+T_K_1_Function_Eq_Six(4)*x^2+T_K_1_Function_Eq_Six(5)*x+T_K_1_Function_Eq_Six(6);
 
T_K_2_Function_Eq_Six = polyfit(Table6.T_K_2,Table6.Var1,5);
T_K_2_Function_Six = @(x) T_K_2_Function_Eq_Six(1)*x^5+T_K_2_Function_Eq_Six(2)*x^4+T_K_2_Function_Eq(3)*x^3+T_K_2_Function_Eq(4)*x^2+T_K_2_Function_Eq(5)*x+T_K_2_Function_Eq(6);

%% Table 7 - Functions - Returns Height

Density_Function_Eq = polyfit(Table7.Density.*1000,Table7.Altitude,5);
Density_Function = @(x) Density_Function_Eq(1).*x.^5 + Density_Function_Eq(2).*x.^4+Density_Function_Eq(3).*x.^3+Density_Function_Eq(4).*x.^2+Density_Function_Eq(5).*x+Density_Function_Eq(6);
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
plot(Table2.P_Bar,Table2.Var1) 

title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table2.T_K,Table2.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table2.P_Bar_1,Table2.Var1,'b*')
xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table2.T_K_1,Table2.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table2.P_Bar_2,Table2.Var1,'b*')
title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table2.T_K_2,Table2.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table2.P_Bar_3,Table2.Var1,'b*')
title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table2.T_K_3,Table2.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')


figure(2)
%sgtitle('\phi = 35^{\circ} - 55^{\circ}')
subplot(2,4,1)
plot(Table3.P_Bar,Table3.Var1,'b*')
title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table3.T_K,Table3.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table3.P_Bar_1,Table3.Var1,'b*')
xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table3.T_K_1,Table3.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table3.P_Bar_2,Table3.Var1,'b*')
title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table3.T_K_2,Table3.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table3.P_Bar_3,Table3.Var1,'b*')
title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table3.T_K_3,Table3.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')


figure(3)
%sgtitle('\phi = 50^{\circ} - 70^{\circ}')
subplot(2,4,1)
plot(Table4.P_Bar,Table4.Var1,'b*')
title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table4.T_K,Table4.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table4.P_Bar_1,Table4.Var1,'b*')
xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table4.T_K_1,Table4.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table4.P_Bar_2,Table4.Var1,'b*')
title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table4.T_K_2,Table4.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table4.P_Bar_3,Table4.Var1,'b*')
title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table4.T_K_3,Table4.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')


figure(4)
%sgtitle('\phi = 70^{\circ} - 80^{\circ}')
subplot(2,4,1)
plot(Table5.P_Bar,Table5.Var1,'b*')
title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table5.T_K,Table5.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table5.P_Bar_1,Table5.Var1,'b*')
xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table5.T_K_1,Table5.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table5.P_Bar_2,Table5.Var1,'b*')
title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table5.T_K_2,Table5.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table5.P_Bar_3,Table5.Var1,'b*')
title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table5.T_K_3,Table5.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

figure(5)
%sgtitle('\phi = 85^{\circ}')
subplot(2,4,1)
plot(Table6.P_Bar,Table6.Var1,'b*')
title('L_s = 20^{\circ}-90^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,5)
plot(Table6.T_K,Table6.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,2)
plot(Table6.P_Bar_1,Table6.Var1,'b*')
xlabel('Pressure [bar]')
ylabel('Height [km]')
title('L_s = 90^{\circ}-130^{\circ}')
subplot(2,4,6)
plot(Table6.T_K_1,Table6.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,3)
plot(Table6.P_Bar_2,Table6.Var1,'b*')
title('L_s = 200^{\circ}-270^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,7)
plot(Table6.T_K_2,Table6.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')

subplot(2,4,4)
plot(Table6.P_Bar_3,Table6.Var1,'b*')
title('L_s = 270^{\circ}-310^{\circ}')
xlabel('Pressure [bar]')
ylabel('Height [km]')
subplot(2,4,8)
plot(Table6.T_K_3,Table6.Var1,'r*')
xlabel('Temperature [k]')
ylabel('Height [km]')



figure(6)
%sgtitle('1972 - Venus Atmosphere (Model 1) (most probable molecular mass and mean solar activity)')
subplot(2,2,1)
plot(Table7.Density*1000, Table7.Altitude,'b*',Density, Density_Function(Density),'r-')
xlabel('$\displaystyle \textnormal{Density} [\frac{kg}{m^3}]$','Interpreter','latex')
ylabel('Height [km]')


subplot(2,2,2)
plot(Table7.MolecularMass,Table7.Altitude,'b*',Table7.MolecularMass, Molecular_Mass_Function(Table7.MolecularMass),'r-')
xlabel('$\displaystyle \textnormal{Molecular Mass} [\frac{g}{g \cdot mole}]$','Interpreter','latex')
ylabel('Height [km]')

subplot(2,2,3)
plot(Table7.NumberDensity,Table7.Altitude,'b*',Table7.NumberDensity, Number_Density_Function(Table7.NumberDensity),'r-')
xlabel('$\textnormal{Number Density} [\frac{1}{cm^3}$]','Interpreter','latex')
ylabel('Height [km]')

subplot(2,2,4)
plot(Table7.Viscosity,Table7.Altitude,'b*',Table7.Viscosity, Viscosity_Function(Table7.Viscosity),'r-')
xlabel('$\textnormal{Viscosity} [\frac{kg}{m \cdot s}$]','interpreter','latex')
ylabel('Height [km]')

% %% Analysis
% 
% % Compressiblity Factor
% %Density Characterization
% %Densities  and  temperatures in the Venus mesosphere and lower thermosphere retrieved from SOIR on board Venus%
% 
% Z = @(P,n,R,T) P/(n*R*T);
% 
% 
% 
% 
% % 0.1 m to 20 m rang of diameter
% rhoa = 0.92;        % atmosphere on venus [kg/m^3]
% d1 = 18;            % diameter 1[ft]
% d1m = 5.4864;       % diameter 1[m]
% r1 = d1m/2;         % kg/m^3
% 
% V = (4/3)*pi()*r1^3 
% 
% rhog = 0.0899;      % Hydrogen
% rhog1 = 0.1664;     % Helium
% rhog2 = 0.668;      % Methane
% 
% B = @(V,rhog)  V*(rhoa-rhog)
% 
% % Mass of balloon with Varying gases
% Hydrogen = B(V,rhog)
% Helium = B(V,rhog1)
% Methane = B(V,rhog2)
% 
% %Density at 53 km altitude


