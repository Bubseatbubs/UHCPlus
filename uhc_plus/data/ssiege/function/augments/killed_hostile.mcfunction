advancement revoke @s only ssiege:player_killed_hostile_mob
execute if score %encounter ssiege_current_encounter matches 13 run function ssiege:start/encounters/effects/13
execute if score @s uhcp_augment matches 304 run function ssiege:augments/effects/gold/blood_diamonds/give
execute if score @s uhcp_augment matches 323 run function ssiege:augments/effects/gold/harvestseasonii