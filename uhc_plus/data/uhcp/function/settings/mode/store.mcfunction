# Store current mode's scores
execute if score %mode uhcp_settings matches 0 run return run function uhcp:settings/mode/store/uhcp
execute if score %mode uhcp_settings matches 1 run function uhcp:settings/mode/store/ssiege
