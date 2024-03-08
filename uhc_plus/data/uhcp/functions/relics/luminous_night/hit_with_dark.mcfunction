advancement revoke @s only uhcp:relics/luminous_night/dark_ability


# Set Cooldown
loot replace entity @s weapon.mainhand loot uhcp:relics/luminous_night/change_to_light
execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 100
item modify entity @s weapon.mainhand uhcp:update_dur

scoreboard players reset @e[distance=..6] uhcp_a_count
execute as @a[tag=!UHCP_Owner,distance=..6] store result score @s uhcp_a_count run function uhcp:relics/checkattacker
tag @a[distance=..6,scores={uhcp_a_count=1},sort=nearest,limit=1] add UHCP_DarkTarget

effect give @a[tag=UHCP_DarkTarget,sort=nearest,limit=1] blindness 2 0 false
tag @a remove UHCP_DarkTarget

