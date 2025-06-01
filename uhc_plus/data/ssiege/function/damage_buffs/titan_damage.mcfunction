# ssiege:damage_buffs/apply_titanslayer_damage.mcfunction
# Macro function that applies bonus damage based on titanslayer buffs
# Parameters: $(perk_titanslayer), $(buff_titanslayer)
# Context: Executed as the player who triggered the advancement (has ssiege_attacker tag)

# Apply bonus damage from perk_titanslayer if > 0
$execute if score @s ssiege_perk_titanslayer matches 1.. as @e[tag=UHCP_Titan,limit=1,sort=nearest] at @s run damage @s $(perk_titanslayer) minecraft:player_attack by @a[tag=ssiege_attacker,limit=1]

# Apply bonus damage from buff_titanslayer if > 0
$execute if score @s ssiege_buff_titanslayer matches 1.. as @e[tag=UHCP_Titan,limit=1,sort=nearest] at @s run damage @s $(buff_titanslayer) minecraft:player_attack by @a[tag=ssiege_attacker,limit=1]
