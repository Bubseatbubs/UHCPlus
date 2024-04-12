tellraw @s [{"text":"Upgrade Complete: [","color":"dark_gray","bold":true},{"text":"Reach Protocol","color":"gray","bold":false},{"text":"]"}]

function uhcp:augments/effects/prismatic/cyberneticdownload/get_current_attributes
scoreboard players add %cd_entity_interaction_range uhcp_aug_count 5
item modify entity @s armor.chest uhcp:cybernetic_download/update