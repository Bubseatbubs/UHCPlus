advancement revoke @s only uhcp:augments/hurt_with_smooth_getaway

summon armor_stand ~-1 ~ ~ {CustomNameVisible:1b,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Tags:["UHCP_SCloneStand","UHCP_SCloneStandWolf","UHCP_New"],DisabledSlots:63,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6260410}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2632752}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10793663}}},{}],CustomName:'{"text":"ShadowClone"}'}
summon wolf ~-1 ~ ~ {Silent:1b,Health:2f,Tags:["UHCP_SClone","UHCP_New"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2000,show_particles:0b}]}

summon armor_stand ~1 ~ ~ {CustomNameVisible:1b,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Tags:["UHCP_SCloneStand","UHCP_SCloneStandWolf","UHCP_New"],DisabledSlots:63,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6260410}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2632752}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10793663}}},{}],CustomName:'{"text":"ShadowClone"}'}
summon wolf ~1 ~ ~ {Silent:1b,Health:2f,Tags:["UHCP_SClone","UHCP_New"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2000,show_particles:0b}]}

particle minecraft:campfire_signal_smoke ~ ~ ~ 1.5 0.5 1.5 0.1 500 normal
playsound entity.zombie.converted_to_drowned master @a[distance=..8] ~ ~ ~ 1 0.5 0.5

# Set Cooldown
execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 1
item modify entity @s weapon.mainhand uhcp:update_dur

loot replace entity @e[tag=UHCP_New] armor.head loot uhcp:player_head
effect give @s invisibility 10 0 false

tag @s add UHCP_Owner
scoreboard players reset @e[distance=..6] uhcp_a_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..6] store result score @s uhcp_a_count run function uhcp:augments/effects/gold/radiantrelics/checkattacker
tag @e[distance=..6,scores={uhcp_a_count=1},sort=nearest,limit=1] add UHCP_SCloneTarget

# execute as @e[type=wolf,tag=UHCP_New] run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID

execute as @e[tag=UHCP_New,type=armor_stand,sort=nearest,limit=2] run data modify entity @s CustomName set from entity @s ArmorItems[3].tag.SkullOwner.Name

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

execute as @e[tag=UHCP_New] store result score @s uhcp_team run scoreboard players get @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_team

tag @s remove UHCP_Owner
tag @e remove UHCP_New