execute as @p[team=spectator] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1000000 1 1
execute as @p[team=spectator] at @s run title @s title {"text":"No longer spectating","color":"gray"}
team leave @s[team=spectator]



