spreadplayers ~ ~ 0 1 false @s
scoreboard players add @s uhcp_topDelay 1
tag @s remove uhcp_isTeleporting

# Remove player, add back players who are currently teleporting
bossbar set uhcp_topcharge players
execute as @a[tag=uhcp_isTeleporting] run bossbar set uhcp_topcharge players @s

scoreboard players reset @s uhcp_topCharge
scoreboard players reset @s top