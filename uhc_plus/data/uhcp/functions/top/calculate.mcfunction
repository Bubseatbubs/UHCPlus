scoreboard players set %uhcp_top uhcp_topCD 1200
scoreboard players operation %uhcp_topM uhcp_topCD = @s uhcp_topCD
scoreboard players operation %uhcp_topM uhcp_topCD /= %uhcp_top uhcp_topCD
scoreboard players set %uhcp_top uhcp_topCD 20
scoreboard players operation %uhcp_topS uhcp_topCD = @s uhcp_topCD
scoreboard players operation %uhcp_topS uhcp_topCD /= %uhcp_top uhcp_topCD
scoreboard players set %uhcp_top uhcp_topCD 60
scoreboard players operation %uhcp_top uhcp_topCD *= %uhcp_topM uhcp_topCD
scoreboard players operation %uhcp_topS uhcp_topCD -= %uhcp_top uhcp_topCD

execute if score %uhcp_topS uhcp_topCD matches 0..9 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" /trigger top","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%uhcp_topM","objective":"uhcp_topCD"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"%uhcp_topS","objective":"uhcp_topCD"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
execute if score %uhcp_topS uhcp_topCD matches 10..59 run tellraw @s [{"text":"Can't cast","color":"dark_red"},{"text":" /trigger top","color":"gold"},{"text":" yet! [","color":"dark_red"},{"text":"⏰","color":"white"},{"text":": ","color":"dark_red"},{"score":{"name":"%uhcp_topM","objective":"uhcp_topCD"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"%uhcp_topS","objective":"uhcp_topCD"},"color":"light_purple"},{"text":"]","color":"dark_red"}]
playsound block.note_block.basedrum master @s ~ ~ ~ 1 1 1
scoreboard players reset @s top