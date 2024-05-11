scoreboard players set %top uhcp_top_CD 1200
scoreboard players operation %top_min uhcp_top_CD = @s uhcp_top_CD
scoreboard players operation %top_min uhcp_top_CD /= %top uhcp_top_CD
scoreboard players set %top uhcp_top_CD 20
scoreboard players operation %top_sec uhcp_top_CD = @s uhcp_top_CD
scoreboard players operation %top_sec uhcp_top_CD /= %top uhcp_top_CD
scoreboard players set %top uhcp_top_CD 60
scoreboard players operation %top uhcp_top_CD *= %top_min uhcp_top_CD
scoreboard players operation %top_sec uhcp_top_CD -= %top uhcp_top_CD

execute if score %top_sec uhcp_top_CD matches 0..9 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" /trigger top","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%top_min","objective":"uhcp_top_CD"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"%top_sec","objective":"uhcp_top_CD"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
execute if score %top_sec uhcp_top_CD matches 10..59 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" /trigger top","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%top_min","objective":"uhcp_top_CD"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"%top_sec","objective":"uhcp_top_CD"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 1 1
scoreboard players reset @s top