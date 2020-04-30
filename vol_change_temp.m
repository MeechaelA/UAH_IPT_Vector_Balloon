function [vol_change_temp] = vol_change_temp(old_vol, old_temp, new_temp)
    vol_change_temp = old_vol.*(new_temp./old_temp);
end