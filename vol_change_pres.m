function [vol_change_pres] = vol_change_pres(old_vol, old_pres, new_pres)
    vol_change_pres = old_vol.*(new_pres./old_pres);
end