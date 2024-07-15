# Notify when there are no players to add to teams
function uhcp:settings/pages/team
tellraw @s {"text":"There are no players to add to teams!","color":"red"}
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
