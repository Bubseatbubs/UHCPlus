# Set game mode if unset
execute unless score %mode uhcp_settings = %mode uhcp_settings run scoreboard players operation %mode uhcp_settings = %mode_def uhcp_settings

# Set default settings scores according to mode
execute if score %mode uhcp_settings matches 0 run return run function uhcp:load/scores/uhcp
execute if score %mode uhcp_settings matches 1 run function uhcp:load/scores/ssiege
