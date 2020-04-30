function rho_he = rho_he_func(temp, pres)
    R = 2077.1;
    rho_he = pres/(R*temp);
end