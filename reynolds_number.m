function reynolds_number = reynolds_number(density, velocity, length, kinematic_viscosity)
    reynolds_number = density*velocity*length/kinematic_viscosity;
end