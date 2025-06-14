title @a times 20 80 20
execute if entity @e[tag=bluesniffer] run title @a title {"text":"Blue Team Wins!","color":"blue"}
execute if entity @e[tag=redsniffer] run title @a title {"text":"Red Team Wins!","color":"red"}
data merge entity @n[tag=SSIEGE_sniffer] {Invulnerable:1b}

# Play sound
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1

# Set everyone to Creative
gamemode creative @a

# Freeze time
scoreboard players set %time_freeze uhcp_initStatus 1

# Show Stats
function ssiege:end/stats