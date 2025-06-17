attribute @s knockback_resistance modifier add uhcp:knockback_resistance .2 add_value
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Iron Golem","color":"yellow"},{"text":" gave you "},{"text":"20% increased Knockback Resistance","color":"yellow"},{"text":"!"}]