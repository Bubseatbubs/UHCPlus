tag @s add UHCP_Owner
summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["UHCP_SCloneStand","UHCP_Summon","UHCP_New","UHCP_InitScore"],Pose:{LeftArm:[275f,0f,0f],RightArm:[267f,0f,0f],LeftLeg:[330f,0f,0f],RightLeg:[12f,0f,0f]},DisabledSlots:4144959,HandItems:[{},{}],ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:6260410}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:2632752}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:10793663}}},{}],CustomName:'{"text":"ShadowClone"}'}
summon minecraft:wolf ~ ~ ~ {Silent:1b,Health:50f,CustomNameVisible:0b,CustomName:'{"text":"Mirage","color":"yellow","bold":true}',Sitting:0b,Tags:["UHCP_SClone","UHCP_Summon","UHCP_New","UHCP_InitScore"],HandItems:[{id:"minecraft:diamond_axe",components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}},"minecraft:attribute_modifiers":{"modifiers":[{"type":"minecraft:generic.attack_damage","uuid":[I;779861500,100813331,-1378878052,-1280472323],"name":"wolfatckdmg","amount":1.0d,"operation":"add_multiplied_base","slot":"mainhand"}]}}},{}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2000,show_particles:0b}],Attributes:[{Name:"generic.attack_damage",Base:5},{Name:"generic.max_health",Base:50},{Name:"generic.scale",Base:0.016}]}
summon minecraft:giant ~ ~ ~ {NoAI:1b,Silent:1b,Health:15f,Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.scale",Base:0.166}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2000,show_particles:0b}],Tags:["UHCP_Hitbox","UHCP_InitScore","UHCP_New"]}

loot replace entity @e[tag=UHCP_SCloneStand,tag=UHCP_New,sort=nearest,limit=1] weapon.mainhand loot uhcp:relics/smooth_getaway/weapon
scoreboard players add %global uhcp_id 1
scoreboard players operation @e[tag=UHCP_InitScore] uhcp_id = %global uhcp_id
scoreboard players operation @e[tag=UHCP_InitScore] uhcp_team = @p[tag=UHCP_Owner] uhcp_team
execute as @e[tag=UHCP_InitScore] run function uhcp:teams/join
execute as @e[tag=UHCP_InitScore] if score @s uhcp_team matches 15.. run team join no_collision @s
tag @e[tag=UHCP_InitScore] remove UHCP_InitScore
tag @s remove UHCP_Owner