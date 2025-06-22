effect give @s instant_health 1 1 true
effect give @s regeneration 3 0 true
tellraw @s ["",{"text":"[Healing Orbs]","bold":true,"color":"gold"},{"text":" You restored","color":"white"},{"text":" 5🖤","color":"red"},{"text":"!","color":"white"}]
execute as @a[distance=..32,scores={uhcp_augment=359}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1