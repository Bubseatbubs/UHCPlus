# End game
execute as @a[tag=UHCP_Compare,limit=1] if score @s uhcp_team matches 1..14 run function uhcp:end/team
execute as @a[tag=UHCP_Compare,limit=1] if score @s uhcp_team matches 15.. run function uhcp:end/solo

# Play sound
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1

# Alive players
effect give @a[gamemode=survival] minecraft:resistance infinite 5 true
effect give @a[gamemode=survival] minecraft:saturation infinite 255 true
