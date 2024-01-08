# Controls everything to do with coordinates hud

scoreboard players add @a ch_toggleConst 0
scoreboard players set @a[scores={ch_toggleConst=0}] ch_toggleConst -1

scoreboard players enable @a ch_help
execute as @a[scores={ch_help=1..}] at @s run function ch:help

scoreboard players enable @a ch_toggle
execute as @a[scores={ch_toggle=1..}] at @s run function ch:toggle_trigger

function ch:get_24_time

execute as @a[scores={ch_toggleConst=1..}] at @s run function ch:get_player_coords
execute as @a[scores={ch_toggleConst=1..}] at @s run function ch:display_hud