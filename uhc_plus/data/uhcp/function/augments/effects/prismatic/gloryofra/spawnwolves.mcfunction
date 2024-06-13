summon minecraft:wolf ~ ~1 ~ {CollarColor:4b,Tags:["UHCP_Anubis","UHCP_New"]}
scoreboard players remove %dogs uhcp_aug_count 1
execute if score %dogs uhcp_aug_count matches 1.. run function uhcp:augments/effects/prismatic/gloryofra/spawnwolves