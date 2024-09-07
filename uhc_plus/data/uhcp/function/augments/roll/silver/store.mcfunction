# Prepare chest minecart
data merge entity @s {NoGravity:1b,Invulnerable:1b}
tag @s add UHCP_StoreAugment
scoreboard players operation @s uhcp_id = @a[tag=UHCP_GeneratingAugments,limit=1] uhcp_id
scoreboard players operation @s uhcp_team = @a[tag=UHCP_GeneratingAugments,limit=1] uhcp_team
team join no_collision @s

# Roll patron augment
execute if score %patrons uhcp_settings matches 1 run function uhcp:augments/roll/silver/patron
scoreboard players set @s uhcp_aug_choosingAugment 1

# Roll silver augments
loot replace entity @s container.0 loot uhcp:augments/silver
loot replace entity @s container.1 loot uhcp:augments/silver
loot replace entity @s container.2 loot uhcp:augments/silver

# Roll reroll augments
loot replace entity @s container.4 loot uhcp:augments/silver
loot replace entity @s container.5 loot uhcp:augments/silver
loot replace entity @s container.6 loot uhcp:augments/silver

# Give player rolled augments
item replace entity @a[tag=UHCP_GeneratingAugments,limit=1] container.3 from entity @s container.0
item replace entity @a[tag=UHCP_GeneratingAugments,limit=1] container.4 from entity @s container.1
item replace entity @a[tag=UHCP_GeneratingAugments,limit=1] container.5 from entity @s container.2
