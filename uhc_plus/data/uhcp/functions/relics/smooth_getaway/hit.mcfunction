advancement revoke @s only uhcp:relics/smooth_getaway/ability



execute at @s positioned ~-1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute at @s positioned ~1 ~ ~ run function uhcp:relics/smooth_getaway/summon

execute as @a if score @s uhcp_a_selectedAugment matches 239 at @s run function uhcp:relics/smooth_getaway/shadowclone

particle minecraft:campfire_signal_smoke ~ ~ ~ 1.5 0.5 1.5 0.1 50 normal
playsound entity.zombie.converted_to_drowned master @a[distance=..8] ~ ~ ~ 1 0.5 0.5

# Set Cooldown
execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 1
item modify entity @s weapon.mainhand uhcp:update_dur

loot replace entity @e[tag=UHCP_New,type=armor_stand] armor.head loot uhcp:player_head
effect give @s invisibility 10 0 false

tag @s add UHCP_Owner
scoreboard players reset @e[distance=..6] uhcp_a_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..6] store result score @s uhcp_a_count run function uhcp:relics/checkattacker
tag @e[distance=..6,scores={uhcp_a_count=1},sort=nearest,limit=1] add UHCP_SCloneTarget

# execute as @e[type=wolf,tag=UHCP_New] run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID

execute as @e[tag=UHCP_New,type=armor_stand] run data modify entity @s CustomName set from entity @s ArmorItems[3].tag.SkullOwner.Name

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

execute as @e[tag=UHCP_New] store result score @s uhcp_team run scoreboard players get @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_team

tag @s remove UHCP_Owner
tag @e remove UHCP_New