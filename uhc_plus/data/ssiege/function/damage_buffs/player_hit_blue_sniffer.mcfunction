# ssiege:damage_buffs/player_hit_sniffer.mcfunction
# This function is called when a player hits a slayer with a full attack (2+ damage)
# It calculates and applies bonus damage based on titanslayer buffs
# Context: Executed as the player who triggered the advancement

execute as @s[team=blue] run return fail
scoreboard players add @s ssiege_sniffer_hits 1

# Tag the attacker temporarily
tag @s add ssiege_attacker

# Store the attacker's scoreboard values
execute store result storage ssiege:temp perk_titanslayer int 1 run scoreboard players get @s ssiege_perk_titanslayer
execute store result storage ssiege:temp buff_titanslayer int 1 run scoreboard players get @s ssiege_buff_titanslayer

# Calculate total bonus damage and apply it using a macro function
function ssiege:damage_buffs/blue_sniffer_damage with storage ssiege:temp

# Remove the temporary tag
tag @s remove ssiege_attacker

# Revoke the advancement so it can trigger again
advancement revoke @s only ssiege:player_hit_entity/player_hit_blue_sniffer