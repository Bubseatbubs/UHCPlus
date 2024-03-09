advancement revoke @s only uhcp:relics/flux_factor/ability
tag @s add UHCP_Owner


scoreboard players reset @e[distance=..6] uhcp_a_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..6] store result score @s uhcp_a_count run function uhcp:relics/checkattacker
tag @e[distance=..6,scores={uhcp_a_count=1},sort=nearest,limit=1] add UHCP_VoltTarget

# Stop function if no targets are near
execute unless entity @e[tag=UHCP_VoltTarget] run tag @s remove UHCP_Owner
execute unless entity @e[tag=UHCP_VoltTarget] run return 0

execute at @e[tag=UHCP_VoltTarget] anchored eyes run summon minecraft:item_display ~ ~1.5 ~ {Tags:["UHCP_Voltrune","UHCP_Summon","UHCP_New"],teleport_duration:5,item:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1866502663,-357676868,-1247017823,1972656282],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2E3Y2RhOTAwNGZjMTk3ZDY2YWZiYzJiMDAzYTViOWVmMTNjZjQ2MDBiMWZjNzQ5MDA2NzU5MGYwNDcxODFlIn19fQ=="}]}}}}
execute at @e[tag=UHCP_VoltTarget] run playsound minecraft:block.enchantment_table.use player @a[distance=..6] ~ ~ ~ 1.0 0.6 1.0
execute at @e[tag=UHCP_VoltTarget] run playsound minecraft:entity.blaze.death player @a[distance=..6] ~ ~ ~ 1.0 2.0 1.0

execute as @a if score @s uhcp_a_selectedAugment matches 240 run tag @e[tag=UHCP_New,sort=nearest,limit=1] add UHCP_ZeusFavor

execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 50
item modify entity @s weapon.mainhand uhcp:update_dur

# Gets team value
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_team = @s uhcp_team

execute at @e[tag=UHCP_New,sort=nearest,limit=1] positioned ~ ~0.6 ~ run function uhcp:relics/voltrune/particles
execute at @e[tag=UHCP_New,sort=nearest,limit=1] positioned ~ ~0.6 ~ rotated ~90 ~ run function uhcp:relics/voltrune/particles
execute at @e[tag=UHCP_New,sort=nearest,limit=1] positioned ~ ~0.6 ~ rotated ~180 ~ run function uhcp:relics/voltrune/particles
execute at @e[tag=UHCP_New,sort=nearest,limit=1] positioned ~ ~0.6 ~ rotated ~270 ~ run function uhcp:relics/voltrune/particles

tag @s remove UHCP_Owner
tag @e remove UHCP_VoltTarget
tag @e remove UHCP_New
scoreboard players reset @e[distance=..6] uhcp_a_count
scoreboard players reset @s uhcp_a_stack
