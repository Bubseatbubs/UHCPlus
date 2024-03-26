function uhcp:relics/durability/reset
function uhcp:relics/smooth_getaway/store_armor
item replace entity @s weapon.mainhand with minecraft:air

execute at @s positioned ~-1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute at @s positioned ~1 ~ ~ run function uhcp:relics/smooth_getaway/summon

execute as @a if score @s uhcp_a_selectedAugment matches 239 at @s run function uhcp:relics/smooth_getaway/shadowclone

particle minecraft:campfire_signal_smoke ~ ~ ~ 2 0.5 2 0.1 100 normal
particle minecraft:flash ~ ~ ~ 1 0.5 1 0.1 10 normal
playsound entity.zombie.converted_to_drowned master @a[distance=..8] ~ ~ ~ 1 0.5 0.5

loot replace entity @e[tag=UHCP_New,type=armor_stand] armor.head loot uhcp:player_head
effect give @s invisibility 10 0 true
effect give @s resistance 3 5 true
execute as @a if score @s uhcp_a_selectedAugment matches 239 run effect give @s speed 10 1 false

tag @s add UHCP_Owner
scoreboard players reset @e[distance=..6] uhcp_a_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..6] store result score @s uhcp_a_count run function uhcp:relics/checkattacker
tag @e[distance=..6,scores={uhcp_a_count=1},sort=nearest,limit=1] add UHCP_SCloneTarget

execute as @e[type=wolf,tag=UHCP_New] run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID
execute as @e[tag=UHCP_New,type=armor_stand] run data modify entity @s CustomName set from entity @s ArmorItems[3].components."minecraft:profile".name
execute as @e[tag=UHCP_New] run scoreboard players operation @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team

tag @s add UHCP_SmoothGetaway
tag @s remove UHCP_Owner
tag @e remove UHCP_New
