tag @s add UHCP_Owner
summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["UHCP_SCloneStand","UHCP_Summon","UHCP_New","UHCP_InitScore"],Pose:{LeftArm:[275f,0f,0f],RightArm:[267f,0f,0f],LeftLeg:[330f,0f,0f],RightLeg:[12f,0f,0f]},DisabledSlots:4144959,HandItems:[{},{}],ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:6260410}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:2367520}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:4866626}}},{}],CustomName:'{"text":"ShadowClone"}'}
summon minecraft:wolf ~ ~ ~ {Silent:1b,Health:50f,CustomNameVisible:0b,CustomName:'{"text":"Mirage","color":"yellow","bold":true}',Sitting:0b,Tags:["UHCP_SClone","UHCP_Summon","UHCP_New","UHCP_InitScore"],HandItems:[{id:"minecraft:diamond_axe",components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}},"minecraft:attribute_modifiers":{"modifiers":[{"id":"uhcp:wolf_attack_damage","type":"minecraft:generic.attack_damage","amount":1.0d,"operation":"add_multiplied_base","slot":"mainhand"}]}}},{}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2000,show_particles:0b}],attributes:[{id:"minecraft:generic.attack_damage",base:5.0d},{id:"minecraft:generic.max_health",base:50.0d},{id:"minecraft:generic.scale",base:0.016d}]}
summon minecraft:giant ~ ~ ~ {NoAI:1b,Silent:1b,Health:15f,attributes:[{id:"minecraft:generic.max_health",base:15.0d},{id:"minecraft:generic.scale",base:0.166d}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2000,show_particles:0b}],Tags:["UHCP_Hitbox","UHCP_InitScore","UHCP_New"]}

# Initialize aspects of clone
loot replace entity @n[tag=UHCP_SCloneStand,tag=UHCP_New] weapon.mainhand loot uhcp:relics/smooth_getaway/weapon
loot replace entity @n[tag=UHCP_SCloneStand,tag=UHCP_New] armor.head loot uhcp:player_head
execute if items entity @s armor.chest * run item replace entity @n[tag=UHCP_SCloneStand,tag=UHCP_New] armor.chest from entity @s armor.chest
execute if items entity @s armor.legs * run item replace entity @n[tag=UHCP_SCloneStand,tag=UHCP_New] armor.legs from entity @s armor.legs
execute if items entity @s armor.feet * run item replace entity @n[tag=UHCP_SCloneStand,tag=UHCP_New] armor.feet from entity @s armor.feet
execute as @n[tag=UHCP_SCloneStand,tag=UHCP_New] run data modify entity @s CustomName set from entity @s ArmorItems[3].components."minecraft:profile".name
execute as @e[type=minecraft:wolf,tag=UHCP_New] at @s run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID

# Mirror Image
execute as @s[tag=UHCP_MirrorImage] run scoreboard players set @n[tag=UHCP_SCloneStand,tag=UHCP_New] uhcp_timer -400

# Init IDs
scoreboard players add %entities uhcp_game_id 1
scoreboard players operation @e[tag=UHCP_InitScore] uhcp_game_id = %entities uhcp_game_id
scoreboard players operation @e[tag=UHCP_InitScore] uhcp_team = @p[tag=UHCP_Owner] uhcp_team
execute as @e[tag=UHCP_InitScore] run function uhcp:teams/join
execute if score %pvp uhcp_settings matches ..0 run team join no_collision @e[tag=UHCP_InitScore,scores={uhcp_team=15..}]
tag @e[tag=UHCP_InitScore] remove UHCP_InitScore
tag @s remove UHCP_Owner
tag @e remove UHCP_New
