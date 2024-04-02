function uhcp:settings/pages/team/1
# Notify when there are no players to add to teams
tellraw @s {"text":"There are no players to add to teams!","color":"red"}
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1
