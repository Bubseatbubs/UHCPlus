scoreboard players set %top uhcp_topCD 1200
scoreboard players operation %top_min uhcp_topCD = @s uhcp_topCD
scoreboard players operation %top_min uhcp_topCD /= %top uhcp_topCD
scoreboard players set %top uhcp_topCD 20
scoreboard players operation %top_sec uhcp_topCD = @s uhcp_topCD
scoreboard players operation %top_sec uhcp_topCD /= %top uhcp_topCD
scoreboard players set %top uhcp_topCD 60
scoreboard players operation %top uhcp_topCD *= %top_min uhcp_topCD
scoreboard players operation %top_sec uhcp_topCD -= %top uhcp_topCD

execute if score %top_sec uhcp_topCD matches 0..9 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" /trigger top","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%top_min","objective":"uhcp_topCD"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"%top_sec","objective":"uhcp_topCD"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
execute if score %top_sec uhcp_topCD matches 10..59 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" /trigger top","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%top_min","objective":"uhcp_topCD"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"%top_sec","objective":"uhcp_topCD"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
playsound block.note_block.basedrum master @s ~ ~ ~ 1 1 1
scoreboard players reset @s top