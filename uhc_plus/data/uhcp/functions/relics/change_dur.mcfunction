execute store result storage uhcp:cd weapon.damage int 1 run scoreboard players get %damage uhcp_a_durability
data modify entity @s SelectedItem.components."minecraft:damage" set from storage uhcp:cd weapon.damage
execute in uhcp:main run setblock 0 0 0 barrel
item replace block 0 0 0 container.0 from entity @s container.0