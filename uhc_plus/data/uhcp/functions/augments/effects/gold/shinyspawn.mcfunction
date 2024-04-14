execute align xyz run setblock ~ ~-1 ~ minecraft:diamond_block
execute align xyz run playsound block.stone.place master @a[distance=..6] ~ ~ ~ 1 1 1
execute align xyz run particle block{block_state: "minecraft:diamond_block"} ~ ~ ~ 0.25 0.25 0.25 1 25 normal
