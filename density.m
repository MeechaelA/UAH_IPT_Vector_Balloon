function density = density(pres,temp,r_spec)
    density = pres./(temp.*r_spec);
end