# Randomize array for teams
execute store result score %range uhcp_aug_sh_item run random value 1..232792560
scoreboard players operation %range uhcp_aug_sh_item %= %last uhcp_aug_sh_item
function uhcp:augments/effects/gold/scavengerhunt/locate

execute if score %last uhcp_aug_sh_item matches ..1 run return fail
scoreboard players remove %last uhcp_aug_sh_item 1
function uhcp:augments/effects/gold/scavengerhunt/array
