# Initializes the Titan, setting its data, Titan ID, and health
data merge entity @s {CanPickUpLoot:0b,CustomNameVisible:0b,PersistenceRequired:1b,powered:1b,active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],equipment:{legs:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:equippable":{slot:"legs"},"minecraft:enchantments":{"minecraft:blast_protection":100,"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}}},drop_chances:{legs:0.000,chest:1.000},Fuse:6000s,Tags:["UHCP_Titan","UHCP_GigaCreeper","UHCP_New"],CustomName:{"text":"Giga Creeper","color":"red","bold":true},attributes:[{id:"minecraft:armor",base:5.0d},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:knockback_resistance",base:0.9d},{id:"minecraft:movement_speed",base:0.26d},{id:"minecraft:scale",base:8.0d},{id:"minecraft:step_height",base:2.0d}]}
scoreboard players set @s uhcp_titans_id 5

$attribute @s minecraft:max_health base set $(hp)
execute store result entity @s Health float 1 run scoreboard players get %hp uhcp_team
