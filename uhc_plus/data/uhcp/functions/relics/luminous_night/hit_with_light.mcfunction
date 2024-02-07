advancement revoke @s only uhcp:relics/hurt_with_light


# Set Cooldown
loot replace entity @s weapon.mainhand loot uhcp:relics/luminous_night/change_to_dark
execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 100
item modify entity @s weapon.mainhand uhcp:update_dur

effect give @s instant_health 1 0 true
