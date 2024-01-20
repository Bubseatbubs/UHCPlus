tag @s remove uhcp_isTeleporting

# Remove player, add back players who are currently teleporting
bossbar set uhcp_topcd players
execute as @a[tag=uhcp_isTeleporting] run bossbar set uhcp_topcd players @s
scoreboard players reset @s uhcp_topCD
scoreboard players reset @s top
scoreboard players reset @s uhcp_topDelay

tellraw @s {"text":"Teleportation canceled.","color":"dark_red","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}}
playsound block.amethyst_cluster.break master @s ~ ~ ~ 1 1 1