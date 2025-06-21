# Get attackers current damage
execute store result score %damage uhcp_initStatus run attribute @s attack_damage get 100

function ssiege:bases/sniffers/hitboxes/crit_check

# Get Sharpness damage
execute store result score %sharpness_lvl uhcp_initStatus run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:sharpness" 1
scoreboard players set %sharpness uhcp_initStatus 0
execute if score %sharpness_lvl uhcp_initStatus matches 1 run scoreboard players set %sharpness uhcp_initStatus 100
execute if score %sharpness_lvl uhcp_initStatus matches 2 run scoreboard players set %sharpness uhcp_initStatus 150
execute if score %sharpness_lvl uhcp_initStatus matches 3 run scoreboard players set %sharpness uhcp_initStatus 200
execute if score %sharpness_lvl uhcp_initStatus matches 4 run scoreboard players set %sharpness uhcp_initStatus 250
execute if score %sharpness_lvl uhcp_initStatus matches 5 run scoreboard players set %sharpness uhcp_initStatus 300

# Apply sharpness buff
scoreboard players operation %damage uhcp_initStatus += %sharpness uhcp_initStatus

# Multiplicative scalars
scoreboard players set %multiplier uhcp_initStatus 10

# Titan Slayer Perk
scoreboard players operation %multiplier uhcp_initStatus += @s ssiege_perk_titanslayer

# Titan's Might Buff
scoreboard players operation %multiplier uhcp_initStatus += @s ssiege_buff_titanslayer

# Not quite fully charged attack penalty
execute if score @s ssiege_attack_cooldown matches 1.. run scoreboard players remove %multiplier uhcp_initStatus 2

scoreboard players operation %damage uhcp_initStatus *= %multiplier uhcp_initStatus
scoreboard players operation %damage uhcp_initStatus /= #10 uhcp_const

# Attacks that deal less than 1 damage or less get rounded down to 0
execute if score %damage uhcp_initStatus matches ..100 run return run scoreboard players set %damage uhcp_initStatus 0