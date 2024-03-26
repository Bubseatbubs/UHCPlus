advancement revoke @s only uhcp:augments/gained_enough_stacks
scoreboard players set @s uhcp_aug_gloryOfRa -10
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
particle end_rod ~ ~ ~ 0.3 10 0.3 0.1 1000 normal
clear @s clock[minecraft:custom_data~{sundiskofra:1b}]
effect give @s absorption 10 5 true

execute store result score %random uhcp_aug_count run random value 0..10

execute if score %random uhcp_aug_count matches 0 run function uhcp:augments/effects/prismatic/gloryofra/loot/0
execute if score %random uhcp_aug_count matches 1 run function uhcp:augments/effects/prismatic/gloryofra/loot/1
execute if score %random uhcp_aug_count matches 2 run function uhcp:augments/effects/prismatic/gloryofra/loot/2
execute if score %random uhcp_aug_count matches 3 run function uhcp:augments/effects/prismatic/gloryofra/loot/3
execute if score %random uhcp_aug_count matches 4 run function uhcp:augments/effects/prismatic/gloryofra/loot/4
execute if score %random uhcp_aug_count matches 5 run function uhcp:augments/effects/prismatic/gloryofra/loot/5
execute if score %random uhcp_aug_count matches 6 run function uhcp:augments/effects/prismatic/gloryofra/loot/6
execute if score %random uhcp_aug_count matches 7 run function uhcp:augments/effects/prismatic/gloryofra/loot/7
execute if score %random uhcp_aug_count matches 8 at @s run function uhcp:augments/effects/prismatic/gloryofra/loot/8
execute if score %random uhcp_aug_count matches 9 run function uhcp:augments/effects/prismatic/gloryofra/loot/9
execute if score %random uhcp_aug_count matches 10 run function uhcp:augments/effects/prismatic/gloryofra/loot/10

