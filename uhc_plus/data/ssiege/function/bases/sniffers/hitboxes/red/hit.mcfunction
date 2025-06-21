advancement revoke @s only ssiege:player_hit_hitbox/player_hit_red_sniffer
execute if score %red_inhib_up uhcp_game_time matches 1 run tellraw @s {"text":"You need to destroy the Inhibitor first!","color":"dark_red"}
execute if score %red_inhib_up uhcp_game_time matches 1 run return run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 1 1

function ssiege:bases/sniffers/hitboxes/init_hit
execute unless score %damage uhcp_initStatus matches 0 run function ssiege:bases/sniffers/hitboxes/red/damage with storage ssiege:temp