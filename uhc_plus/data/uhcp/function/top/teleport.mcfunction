execute if entity @s[predicate=uhcp:dimensions/minecraft/overworld] run function uhcp:top/overworld
execute if entity @s[predicate=uhcp:dimensions/minecraft/the_end] run spreadplayers ~ ~ 0 1 false @s
execute if entity @s[predicate=uhcp:dimensions/minecraft/the_nether] run spreadplayers ~ ~ 0 1 under 127 false @s
scoreboard players add @s uhcp_top_delay 1
tag @s remove UHCP_IsTeleporting

# Remove player, add back players who are currently teleporting
bossbar set uhcp:top_charge players
execute as @a[tag=UHCP_IsTeleporting] run bossbar set uhcp:top_charge players @s

scoreboard players reset @s uhcp_top_charge
scoreboard players reset @s top