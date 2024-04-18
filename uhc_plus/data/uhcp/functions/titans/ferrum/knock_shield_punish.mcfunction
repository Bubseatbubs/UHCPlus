effect give @s slowness 10 4 false
tellraw @s {"text":"You weren't holding a Shield in your Offhand! Ferrum sent you flying!","color":"dark_red","bold":true}
execute as @s run attribute @s generic.gravity modifier add 95c5d624-7157-4cee-95eb-0d079cbfec99 "" -0.6 add_value
tag @s add UHCP_InflictedWithGravityGlobe
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
playsound minecraft:item.mace.smash_ground_heavy master @s ~ ~ ~ 1 1 1