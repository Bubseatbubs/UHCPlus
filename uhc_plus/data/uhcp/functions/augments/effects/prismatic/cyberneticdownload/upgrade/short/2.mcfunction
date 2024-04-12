tellraw @s [{"text":"Upgrade Complete: [","color":"dark_gray","bold":true},{"text":"Netherite Configuration","color":"gray","bold":false},{"text":"]"}]
execute unless entity @s[tag=!UHCP_CD_Netherite] run give @p minecraft:netherite_ingot
execute unless entity @s[tag=!UHCP_CD_Netherite] run return run give @p minecraft:netherite_upgrade_smithing_template

item modify entity @s armor.chest uhcp:cybernetic_download/upgrade_to_netherite
tag @s add UHCP_CD_Netherite

function uhcp:augments/effects/prismatic/cyberneticdownload/get_current_attributes
scoreboard players add %cd_armor uhcp_aug_count 2
scoreboard players add %cd_armor_toughness uhcp_aug_count 1
item modify entity @s armor.chest uhcp:cybernetic_download/update