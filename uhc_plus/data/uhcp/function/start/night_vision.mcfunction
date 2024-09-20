# Apply night vision
execute if score %night_vision uhcp_settings matches 1 run return run effect give @a minecraft:night_vision infinite 0 true
effect give @a[tag=UHCP_Spectator] minecraft:night_vision infinite 0 true
