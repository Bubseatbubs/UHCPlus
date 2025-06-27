# Remove elytra
scoreboard players set @s uhcp_leave 1000
clear @s minecraft:elytra[minecraft:custom_data~{uhcp_structScout:true}]
scoreboard players reset @s uhcp_leave
scoreboard players set @s uhcp_game_time -1

# Effects
tellraw @s {"text":"Your elytra has been removed.","color":"red"}
execute at @s run playsound minecraft:item.armor.unequip_wolf master @s ~ ~ ~ 1 1 1
