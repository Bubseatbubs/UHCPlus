scoreboard players set @s ssiege_recall_charge -1
tellraw @s {text:"Your recall was interrupted!",color:red}
advancement revoke @s only ssiege:player_recall_interrupted