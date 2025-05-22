# End game
# TODO: Announce the winning team based on which Sniffer died

# Play sound
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1

# Set everyone to Creative
gamemode creative @a

# Freeze time
scoreboard players set %time_freeze uhcp_initStatus 1
