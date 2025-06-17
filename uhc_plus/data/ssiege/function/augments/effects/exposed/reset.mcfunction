scoreboard players set @s ssiege_exposed -1
attribute @s armor modifier remove ssiege:exposed_armor
attribute @s armor_toughness modifier remove ssiege:exposed_toughness
tellraw @s ["",{"text":"[Expose Weakness]","bold":true,"color":"aqua"},{"text":" You are no longer exposed.","color":"green"}]
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1