scoreboard players set %top uhcp_top_cd 1200
scoreboard players operation %top_min uhcp_top_cd = @s uhcp_top_cd
scoreboard players operation %top_min uhcp_top_cd /= %top uhcp_top_cd
scoreboard players set %top uhcp_top_cd 20
scoreboard players operation %top_sec uhcp_top_cd = @s uhcp_top_cd
scoreboard players operation %top_sec uhcp_top_cd /= %top uhcp_top_cd
scoreboard players set %top uhcp_top_cd 60
scoreboard players operation %top uhcp_top_cd *= %top_min uhcp_top_cd
scoreboard players operation %top_sec uhcp_top_cd -= %top uhcp_top_cd

execute if score %top_sec uhcp_top_cd matches 0..9 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" /trigger top","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%top_min","objective":"uhcp_top_cd"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"%top_sec","objective":"uhcp_top_cd"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
execute if score %top_sec uhcp_top_cd matches 10..59 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" /trigger top","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%top_min","objective":"uhcp_top_cd"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"%top_sec","objective":"uhcp_top_cd"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 1 1
scoreboard players reset @s top