execute if entity @s[predicate=uhcp:dimensions/minecraft/overworld] run function uhcp:top/overworld
execute if entity @s[predicate=uhcp:dimensions/minecraft/the_end] run spreadplayers ~ ~ 0 1 false @s
execute if entity @s[predicate=uhcp:dimensions/minecraft/the_nether] run spreadplayers ~ ~ 0 1 under 127 false @s
scoreboard players add @s uhcp_topDelay 1
tag @s remove uhcp_isTeleporting

# Remove player, add back players who are currently teleporting
bossbar set uhcp_topcharge players
execute as @a[tag=uhcp_isTeleporting] run bossbar set uhcp_topcharge players @s

scoreboard players reset @s uhcp_topCharge
scoreboard players reset @s top