function buoy_lift = buoy_lift(vol,atmos_dens,gas_dens)
    buoy_lift = vol.*(atmos_dens-gas_dens);
return