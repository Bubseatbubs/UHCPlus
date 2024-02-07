advancement revoke @s only uhcp:relics/boomburst/shot



execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 2
item modify entity @s weapon.mainhand uhcp:update_dur

# Modify Item
item modify entity @s weapon.mainhand uhcp:update_shot_boomburst
