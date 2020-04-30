function [k_axial, k_transverse, k_rotational] = Added_Mass_Factors(length, diameter)
    % Usage
    % -----
    % Returns Added Mass Coefficients for Ellipsoid of Revolution
    % Essentially calculates weirdness factor of airship with certain
    % slenderness
    
    % Functionality
    % -------------
    % Length -> Length of Airship body
    % Diameter -> Diameter of Airship
    
    % Comments/Discrepancies
    % --------
    % There was something I discovered from the source document with
    % k_rotational, that has alpha3 before gamma3, when switched the values
    % are correct/plot the same.
    
    % Source
    % ------
    % "The inertia-coeficients of an ellipsoid moving in fluid, Horace Lamb"
    % http://naca.central.cranfield.ac.uk/reports/arc/rm/623.pdf
    
    % Function
    % --------
    e = sqrt(1-(length.^2./diameter.^2));
    
    u = acosh(length./diameter);
    gamma3 = (2./(sinh(u).^2)).*(u.*coth(u)-1);
    
    alpha3 = (1./tanh(u).^2).*(1-(2.*u)./(sinh(2.*u)));
       
    k_axial = gamma3./(2-gamma3);
        
    k_transverse = alpha3./(2-alpha3);
    
    k_rotational = ((e.^4.*(gamma3-alpha3))./((2-e.^2).*(2.*e.^2-(2-e.^2).*(gamma3-alpha3)))); 
end