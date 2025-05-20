scoreboard players reset @s uhcp_leave
summon minecraft:wolf ~ ~ ~ {CanPickUpLoot:false,CollarColor:0b,variant:"black",CustomNameVisible:true,Health:60.0f,Tags:["UHCP_Summon","UHCP_New"],CustomName:{"text":"Fenrir Jr.","color":"dark_red","bold":true},equipment:{mainhand:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}},body:{id:"minecraft:wolf_armor",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}}},drop_chances:{mainhand:0.000,body:0.000},attributes:[{id:"minecraft:knockback_resistance",base:0.5d},{id:"minecraft:max_health",base:60.0d},{id:"minecraft:scale",base:2.0d}]}
scoreboard players operation @n[type=minecraft:wolf,tag=UHCP_New] uhcp_team = @s uhcp_team
data modify entity @n[type=minecraft:wolf,tag=UHCP_New] Owner set from entity @s UUID
execute as @n[type=minecraft:wolf,tag=UHCP_New] run function uhcp:teams/join
playsound minecraft:entity.wolf.growl master @s ~ ~ ~ 0.6 1 0.6
