title @s actionbar [{text:"Waiting for allies to respawn"}]
execute as @s[tag=!ChangePOV] run return fail
tag @s remove ChangePOV
tellraw @s {"text":"No teammates to spectate!","bold":true,"color":"dark_red"}