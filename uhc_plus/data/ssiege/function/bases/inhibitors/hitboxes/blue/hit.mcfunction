advancement revoke @s only ssiege:player_hit_hitbox/player_hit_blue_inhib
execute unless score %time uhcp_game_time matches 18000.. run tellraw @s ["",{"text":"The "},{"text":"Inhibitor","bold":true,"color":"blue"},{"text":" is "},{"text":"invulnerable","color":"yellow"},{"text":" for the first 15 minutes!"}]
execute unless score %time uhcp_game_time matches 18000.. run return run playsound entity.player.attack.weak master @s ~ ~ ~ 1 1 1

execute unless score %blue_warning_timer uhcp_game_time > %time uhcp_game_time run tellraw @a[team=blue] ["",{"text":"Your "},{"text":"Inhibitor","bold":true,"color":"blue"},{"text":" is under attack by "},{"selector":"@a[team=red,distance=..10]"},{"text":"!"}]
playsound minecraft:block.note_block.pling master @a[team=blue] ~ ~ ~ 1 2 1
scoreboard players operation %blue_warning_timer uhcp_game_time = %time uhcp_game_time
scoreboard players add %blue_warning_timer uhcp_game_time 200

function ssiege:bases/inhibitors/hitboxes/init_hit
execute if score %damage uhcp_initStatus matches 0 run playsound minecraft:entity.player.attack.nodamage player @a[distance=..16] ~ ~ ~ 1 1 0.15
execute unless score %damage uhcp_initStatus matches 0 run function ssiege:bases/inhibitors/hitboxes/blue/damage with storage ssiege:temp
function ssiege:bases/sniffers/hitboxes/damage_display/init