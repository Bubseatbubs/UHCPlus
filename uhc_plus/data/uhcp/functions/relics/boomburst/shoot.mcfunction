advancement revoke @s only uhcp:relics/shot_boomburst

# Modify Item
item modify entity @s weapon.mainhand uhcp:update_boomburst

execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 50
item modify entity @s weapon.mainhand uhcp:update_dur

