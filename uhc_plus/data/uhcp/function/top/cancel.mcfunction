tag @s remove UHCP_IsTeleporting

# Remove player, add back players who are currently teleporting
bossbar set uhcp:top_charge players
execute as @a[tag=UHCP_IsTeleporting] run bossbar set uhcp:top_charge players @s
scoreboard players reset @s uhcp_top_charge
scoreboard players reset @s top
scoreboard players reset @s uhcp_top_delay

tellraw @s {"text":"Teleportation canceled.","color":"dark_red","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}}
playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 1 1 1
scoreboard players set @s uhcp_top_CD 100

kill @n[tag=UHCP_TopCheck,distance=..3]
