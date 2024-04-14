# Enable PvP
team leave @a
function uhcp:teams/join_entities
team join no_collision @a[tag=UHCP_IsPanda,scores={uhcp_team=15..}]
team join no_collision @a[tag=UHCP_IsRabbit,scores={uhcp_team=15..}]
team join no_collision @e[tag=UHCP_KungfuPanda,scores={uhcp_team=15..}]
team join no_collision @e[tag=UHCP_MagicRabbit,scores={uhcp_team=15..}]

# Notification
tellraw @a [{"text":"The Grace Period","color":"dark_gray","bold":true},{"text":" has finished. You can now attack other enemy Players.","color":"gray","bold":false}]
execute as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
