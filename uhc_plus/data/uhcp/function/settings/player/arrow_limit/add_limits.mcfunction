# Add Apollo arrow limits according to current mode
execute if score %mode uhcp_settings matches 0 run return run function uhcp:settings/player/arrow_limit/uhcp
execute if score %mode uhcp_settings matches 1 run function uhcp:settings/player/arrow_limit/ssiege
