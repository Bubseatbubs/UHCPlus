execute on passengers run kill @s
setblock ~ ~ ~ air replace
particle block{block_state: "minecraft:chiseled_deepslate"} ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 0.1 25 normal
playsound block.deepslate_bricks.break master @a[distance=..4] ~ ~ ~ 1 1 0.75
kill @s