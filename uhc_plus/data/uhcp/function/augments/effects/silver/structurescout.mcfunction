item replace entity @s armor.chest with minecraft:elytra[minecraft:enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},minecraft:unbreakable={},minecraft:custom_data={struct_scout:1b},minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1
execute at @s run setblock ~ 250 ~ minecraft:glass
tp @s ~ 251 ~
execute at @s run summon minecraft:marker ~ 250 ~ {Tags:["UHCP_Summon","UHCP_Scout"]}
playsound minecraft:entity.zombie.converted_to_drowned master @s ~ ~ ~ 1 0.5 1

scoreboard players set @s uhcp_game_time 1200
