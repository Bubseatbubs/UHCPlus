# Augment only triggers if player has some time out of spawn
execute if score @s uhcp_game_time >= %time uhcp_game_time run return fail 
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 120
gamerule showDeathMessages false
tp @e[tag=UHCP_Beastmaster,type=wolf] 0 -200 0
kill @e[tag=UHCP_Beastmaster,type=wolf]
execute if score %game uhcp_initStatus matches 1 run gamerule showDeathMessages true

tag @s add UHCP_Beastmaster
summon minecraft:wolf ~ 300 ~ {Tags:["UHCP_New","UHCP_Beastmaster"],variant:"minecraft:rusty"}

#Not the most efficient but just copying over from beastmaster
execute as @e[type=minecraft:wolf,tag=UHCP_New] run data modify entity @s Owner set from entity @n[tag=UHCP_Beastmaster] UUID
execute as @e[type=minecraft:wolf,tag=UHCP_New,sort=random,limit=1] run data merge entity @s {Health:80f,equipment:{mainhand:{id:"minecraft:diamond_axe",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}},body:{id:"minecraft:wolf_armor",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}}},drop_chances:{mainhand:0.000,body:0.000},attributes:[{id:"minecraft:max_health",base:80.0d},{id:"minecraft:scale",base:2.0d},{id:"minecraft:movement_speed",base:0.4d},{id:"minecraft:knockback_resistance",base:0.25d},{id:"minecraft:armor",base:10.0d},{id:"minecraft:armor_toughness",base:1.0d}]}

scoreboard players operation @e[type=minecraft:wolf,tag=UHCP_New] uhcp_team = @s uhcp_team
scoreboard players operation @e[type=minecraft:wolf,tag=UHCP_New] uhcp_id = @s uhcp_id

execute as @e[type=minecraft:wolf,tag=UHCP_New] run effect give @s slowness 4 5 true
execute as @e[type=minecraft:wolf,tag=UHCP_New] run effect give @s resistance 4 5 true
tag @e remove UHCP_New
tag @s remove UHCP_Beastmaster
