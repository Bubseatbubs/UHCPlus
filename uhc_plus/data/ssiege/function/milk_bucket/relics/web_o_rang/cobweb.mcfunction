# Leave behind cobweb trail
execute store success score %block uhcp_aug_count run setblock ~ ~0.5 ~ minecraft:cobweb keep
execute if score %block uhcp_aug_count matches 0 run return fail
playsound minecraft:block.wool.place master @a[distance=..12] ~ ~ ~ 1 1 0.7
particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
execute positioned ~ ~0.5 ~ align xyz run summon minecraft:marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_TempCobweb"]}
