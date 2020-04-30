function rho_he = rho_func(temp, pres)
    R = 2077;
    rho_he = pres/R/temp;
end