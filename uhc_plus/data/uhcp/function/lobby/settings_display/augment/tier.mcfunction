execute if score %random uhcp_aug_tier matches 1 run return run tellraw @s [{"text":"Augment Tier:","color":"white","bold":true},{"text":" Random","color":"light_purple","bold":false}]
execute if score %tier uhcp_aug_tier matches -1 run return run tellraw @s [{"text":"Augment Tier:","color":"white","bold":true},{"text":" No Augments This Game","color":"red","bold":false}]
execute if score %tier uhcp_aug_tier matches 0 run return run tellraw @s [{"text":"Augment Tier:","color":"white","bold":true},{"text":" Silver","color":"gray","bold":false}]
execute if score %tier uhcp_aug_tier matches 1 run return run tellraw @s [{"text":"Augment Tier:","color":"white","bold":true},{"text":" Gold","color":"gold","bold":false}]
execute if score %tier uhcp_aug_tier matches 2 run tellraw @s [{"text":"Augment Tier:","color":"white","bold":true},{"text":" Prismatic","color":"aqua","bold":false}]
