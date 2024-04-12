tellraw @s [{"text":"Upgrade Complete: [","color":"dark_gray","bold":true},{"text":"Offensive Configuration","color":"gray","bold":false},{"text":"]"}]

function uhcp:augments/effects/prismatic/cyberneticdownload/get_current_attributes
scoreboard players add %cd_attack_damage uhcp_aug_count 5
item modify entity @s armor.chest uhcp:cybernetic_download/update