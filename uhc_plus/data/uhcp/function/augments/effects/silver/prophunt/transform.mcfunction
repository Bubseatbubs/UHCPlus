# Reset timer
scoreboard players set @s uhcp_aug_count 0

# Prior transformation
execute unless entity @s[tag=!UHCP_IsAttackTitan,tag=!UHCP_IsPanda,tag=!UHCP_IsRabbit,tag=!UHCP_SmoothGetaway] run return run function uhcp:augments/effects/silver/prophunt/prevent

# Identify block
execute if block ~ ~-0.5 ~ #uhcp:prop_hunt/banned_block run return run function uhcp:augments/effects/silver/prophunt/fail
clone ~ ~-0.5 ~ ~ ~-0.5 ~ to uhcp:main 8 -10 8 strict
execute in uhcp:main store result score @s uhcp_initStatus run loot replace block 0 0 0 container.0 mine 8 -10 8 minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]
execute if score @s uhcp_initStatus matches 0 run return run function uhcp:augments/effects/silver/prophunt/fail

# Transform into block
scoreboard players set @s uhcp_aug_tier 1

# Effects
effect give @s minecraft:invisibility infinite 0 true
attribute @s minecraft:scale modifier add uhcp:scale -0.55 add_multiplied_base
attribute @s minecraft:block_interaction_range modifier add uhcp:block_range -0.55 add_multiplied_base
attribute @s minecraft:entity_interaction_range modifier add uhcp:entity_range -0.55 add_multiplied_base
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
playsound minecraft:entity.breeze.deflect master @s ~ ~ ~ 1 1 1
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal @s

# Summon block display
summon minecraft:block_display ~ ~ ~ {teleport_duration:1,Tags:["UHCP_Prop","UHCP_Summon","UHCP_New"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:air"}}
scoreboard players operation @n[tag=UHCP_New] uhcp_id = @s uhcp_id
execute in uhcp:main run data modify entity @e[tag=UHCP_New,limit=1] block_state.Name set from block 0 0 0 Items[0].id
tag @e remove UHCP_New
