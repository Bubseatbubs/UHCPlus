item replace entity @s armor.chest with elytra{HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
execute at @s run setblock ~ 250 ~ glass
tp @s ~ 251 ~
execute at @s run summon marker ~ 250 ~ {Tags:["UHCP_Summon","UHCP_Scout"]}
playsound entity.zombie.converted_to_drowned master @s ~ ~ ~ 1 0.5 1