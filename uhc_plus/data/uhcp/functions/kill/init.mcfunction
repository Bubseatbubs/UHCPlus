# Activates when a player kills another player
advancement revoke @s only uhcp:entity_actions/killed_player

execute if score %soul_apples uhcp_settings matches 1.. run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0.01 100 normal @s
execute if score %soul_apples uhcp_settings matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1

loot give @s loot uhcp:consumables/soul_apple
