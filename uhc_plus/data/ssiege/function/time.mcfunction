# Sniffer Siege time based events

# Augment-based time events
execute as @a[scores={uhcp_game_time=0..},gamemode=survival] if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/timed

# TODO: Titan spawning logic

# TODO: Time-based Encounters logic