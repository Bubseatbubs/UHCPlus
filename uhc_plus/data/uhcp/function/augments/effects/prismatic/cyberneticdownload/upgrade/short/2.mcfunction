tellraw @s [{"text":"Upgrade Complete: [","color":"dark_gray","bold":true},{"text":"Netherite Configuration","color":"gray","bold":false},{"text":"]"}]
execute as @s[tag=UHCP_CD_Netherite] run return run function uhcp:augments/effects/prismatic/cyberneticdownload/upgrade/short/alternate/2

item modify entity @s armor.chest uhcp:cybernetic_download/upgrade_to_netherite
tag @s add UHCP_CD_Netherite

scoreboard players add %cd_armor uhcp_aug_count 2
scoreboard players add %cd_armor_toughness uhcp_aug_count 1
item modify entity @s armor.chest uhcp:cybernetic_download/update
