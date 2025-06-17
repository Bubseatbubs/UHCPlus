team empty red
team empty blue

scoreboard players set %temp uhcp_initStatus 1
execute as @a[sort=random,scores={uhcp_ready=0..1}] run function uhcp:settings/team/ssiege_randomize_helper

# Unready players
execute if entity @a[scores={uhcp_ready=1}] run function uhcp:settings/team/randomize/unready

# Notification
function uhcp:settings/pages/team
tellraw @a [{"text":"Teams","bold":true},{"text":" have been randomized.","bold":false}]
execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1 1
