# Return Web-o-Rang relic
scoreboard players set @s uhcp_leave 1000
execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:relics/web_o_rang/damaged
execute if score @s uhcp_lava_currentLayers matches 0 run function uhcp:relics/web_o_rang/loot
scoreboard players reset @s uhcp_leave
