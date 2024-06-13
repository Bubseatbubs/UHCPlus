scoreboard players add @s uhcp_aug_tier 1
execute if score @s uhcp_aug_tier matches ..400 run return 0
function uhcp:augments/effects/prismatic/cyberneticdownload/menu
scoreboard players reset @s uhcp_aug_tier