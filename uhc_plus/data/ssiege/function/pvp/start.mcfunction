# Enable PvP
team leave @a
function uhcp:teams/join_entities
team join no_collision @a[tag=UHCP_IsPanda,scores={uhcp_team=15..}]
team join no_collision @a[tag=UHCP_IsRabbit,scores={uhcp_team=15..}]
team join no_collision @e[tag=UHCP_KungfuPanda,scores={uhcp_team=15..}]
team join no_collision @e[tag=UHCP_MagicRabbit,scores={uhcp_team=15..}]
team leave @e[team=grace_period]

# Notification
tellraw @a [{"text":"The Grace Period","color":"dark_gray","bold":true},{"text":" has ended. You may now attack enemy players.","color":"gray","bold":false}]
execute as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
