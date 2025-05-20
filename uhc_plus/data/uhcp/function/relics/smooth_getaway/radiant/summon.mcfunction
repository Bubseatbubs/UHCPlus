# Summon entities
execute summon minecraft:armor_stand run function uhcp:relics/smooth_getaway/armor_stand
summon minecraft:wolf ~ ~ ~ {CanPickUpLoot:false,Silent:true,Health:50.0f,CustomNameVisible:false,CustomName:{"text":"Mirage","color":"yellow","bold":true},Sitting:false,Tags:["UHCP_SClone","UHCP_Summon","UHCP_New"],equipment:{mainhand:{id:"minecraft:diamond_axe",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false,"minecraft:attribute_modifiers":[{"id":"uhcp:wolf_attack_damage","type":"minecraft:attack_damage","amount":1.0d,"operation":"add_multiplied_base","slot":"mainhand"}]}}},drop_chances:{mainhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}],attributes:[{id:"minecraft:attack_damage",base:10.0d},{id:"minecraft:max_health",base:50.0d},{id:"minecraft:scale",base:0.016d}]}
data modify entity @n[tag=UHCP_SClone,tag=UHCP_New] Owner set from entity @s UUID
summon minecraft:giant ~ ~ ~ {NoAI:true,CanPickUpLoot:false,Silent:true,Health:15f,attributes:[{id:"minecraft:max_health",base:15.0d},{id:"minecraft:scale",base:0.166d}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Tags:["UHCP_Hitbox","UHCP_New"]}

# Initialize aspects of clone
execute if items entity @s armor.chest * run item replace entity @n[tag=UHCP_NewSCS] armor.chest from entity @s armor.chest
execute if items entity @s armor.legs * run item replace entity @n[tag=UHCP_NewSCS] armor.legs from entity @s armor.legs
execute if items entity @s armor.feet * run item replace entity @n[tag=UHCP_NewSCS] armor.feet from entity @s armor.feet
loot replace entity @n[tag=UHCP_NewSCS] armor.head loot uhcp:player_head
execute as @n[tag=UHCP_NewSCS] run data modify entity @s CustomName.text set from entity @s equipment.head.components."minecraft:profile".name
execute if score %pvp uhcp_settings matches ..0 if score @s uhcp_team matches 1..14 run function uhcp:relics/smooth_getaway/name_color

# Init IDs
scoreboard players add %entities uhcp_game_id 1
scoreboard players operation @e[tag=UHCP_New] uhcp_game_id = %entities uhcp_game_id
tag @e remove UHCP_NewSCS
function uhcp:teams/new/join
