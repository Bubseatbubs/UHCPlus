scoreboard players set @s ssiege_recall_charge -1
stopsound @s master minecraft:block.portal.trigger
stopsound @s master minecraft:block.beacon.activate
playsound block.note_block.bass master @s ~ ~ ~ 1 1 1
tellraw @s {text:"Your recall was interrupted by damage!",color:red}
advancement revoke @s only ssiege:player_recall_interrupted_damage