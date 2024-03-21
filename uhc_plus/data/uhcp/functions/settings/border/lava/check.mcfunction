# Check time for border size
execute unless score %border_size uhcp_settings matches 100 run function uhcp:settings/lava/countdown/border/calculate
execute if score %border_size uhcp_settings matches 100 run scoreboard players set %border_time uhcp_initStatus 0
execute if score %border_time uhcp_initStatus > %lava_countdown uhcp_settings run function uhcp:settings/border/lava/raise
