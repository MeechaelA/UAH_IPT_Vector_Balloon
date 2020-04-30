function rho_air = rho_air_func(temp, pres)
    R = 287.05;
    rho_air = pres/(R*temp);
end