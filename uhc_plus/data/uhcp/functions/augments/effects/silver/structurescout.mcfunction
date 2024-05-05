item replace entity @s armor.chest with minecraft:elytra[minecraft:enchantments={levels:{"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},show_in_tooltip:false},minecraft:unbreakable={},minecraft:custom_data={struct_scout:1b}] 1
execute at @s run setblock ~ 250 ~ glass
tp @s ~ 251 ~
execute at @s run summon marker ~ 250 ~ {Tags:["UHCP_Summon","UHCP_Scout"]}
playsound entity.zombie.converted_to_drowned master @s ~ ~ ~ 1 0.5 1

scoreboard players set @s uhcp_game_time 1200
