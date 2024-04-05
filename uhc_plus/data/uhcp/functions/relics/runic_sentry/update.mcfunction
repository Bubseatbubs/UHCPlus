tag @s add UHCP_CurrentTurret
execute unless entity @s[tag=UHCP_WellEngineered] run scoreboard players add @s uhcp_aug_tier 1
execute if score @s uhcp_aug_tier matches 400.. run function uhcp:relics/runic_sentry/delete
execute as @e[tag=UHCP_TurretHitbox] if score @s uhcp_id = @e[tag=UHCP_CurrentTurret,sort=nearest,limit=1] uhcp_id run tp @s @e[tag=UHCP_CurrentTurret,sort=nearest,limit=1]
execute at @s unless entity @e[tag=UHCP_TurretHitbox,distance=..0.5] run function uhcp:relics/runic_sentry/delete
execute as @e[predicate=uhcp:targetable,distance=..8] unless score @s uhcp_team = @e[tag=UHCP_CurrentTurret,sort=nearest,limit=1] uhcp_team run tag @s add UHCP_TurretTarget
tag @a[tag=UHCP_TurretTarget,gamemode=!survival] remove UHCP_TurretTarget
execute if block ~ ~-0.1 ~ #uhcp:no_hitbox_blocks run tp @s ~ ~-0.1 ~
execute unless entity @e[tag=UHCP_TurretTarget] on passengers if entity @s[tag=UHCP_TurretHead] at @s run tp @s ~ ~ ~ ~2 0
scoreboard players add @s uhcp_timer 1
execute if score @s uhcp_timer matches 10 on passengers if entity @s[tag=UHCP_TurretCannon] run data merge entity @s {transformation:[-0.0000f,1.0000f,0.0000f,0.1250f,-0.5000f,-0.0000f,0.0000f,1.6250f,0.0000f,0.0000f,0.4500f,-0.2225f,0.0000f,0.0000f,0.0000f,1.0000f],interpolation_duration:10,start_interpolation:0}
execute unless entity @e[tag=UHCP_TurretTarget] run return 0

execute on passengers if entity @s[tag=UHCP_TurretHead] at @s facing entity @e[tag=UHCP_TurretTarget,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~90 0
tag @e remove UHCP_TurretTarget

execute if score @s uhcp_timer matches ..40 run return 0

function uhcp:relics/runic_sentry/laser/init
playsound minecraft:item.trident.riptide_3 master @a[distance=..10] ~ ~ ~ 1.0 1.0 0.5
playsound minecraft:entity.breeze.shoot master @a[distance=..10] ~ ~ ~ 1.0 0.5 0.5
playsound minecraft:block.shroomlight.place master @a[distance=..10] ~ ~ ~ 1.0 0.5 0.5
playsound minecraft:block.shroomlight.place master @a[distance=..10] ~ ~ ~ 1.0 0.5 0.5
playsound minecraft:block.shroomlight.place master @a[distance=..10] ~ ~ ~ 1.0 0.5 0.5
scoreboard players reset @s uhcp_timer
tag @s remove UHCP_CurrentTurret
