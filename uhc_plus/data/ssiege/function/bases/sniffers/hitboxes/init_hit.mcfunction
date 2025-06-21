# Run damage calculation based on attack cooldown
execute if score @s ssiege_attack_cooldown matches 5.. run scoreboard players set %damage uhcp_initStatus 0
execute if score @s ssiege_attack_cooldown matches ..4 run function ssiege:bases/sniffers/hitboxes/calculate

# Set attack cooldown
function ssiege:bases/sniffers/hitboxes/calculate_attack_cooldown

execute if score %damage uhcp_initStatus matches 0 run playsound minecraft:entity.player.attack.nodamage player @a[distance=..16] ~ ~ ~ 1 1 0.15

execute store result storage ssiege:temp damage int 0.01 run scoreboard players get %damage uhcp_initStatus

function ssiege:bases/sniffers/hitboxes/damage_display/init