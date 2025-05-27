tag @s add UHCP_Owner
attribute @s minecraft:scale modifier remove uhcp:scale
effect clear @s minecraft:invisibility
# Longer weaker resistance effect in Sniffer Siege
execute if score %current_mode mode matches 0 run effect give @s minecraft:resistance 1 5
execute if score %current_mode mode matches 1 run effect give @s minecraft:resistance 3 0
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 1 1 1
execute as @e[tag=UHCP_Prop] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run kill @s
tag @s remove UHCP_Owner
scoreboard players set @s uhcp_aug_tier 0
scoreboard players set @s uhcp_aug_count 0
