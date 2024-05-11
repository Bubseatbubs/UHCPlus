effect give @s minecraft:slowness 10 4 false
execute as @e[tag=UHCP_Ferrum,tag=!UHCP_IsJumping,sort=nearest,limit=1] run function uhcp:titans/ferrum/jump/jump
tellraw @s {"text":"You weren't holding a Shield in your Offhand! Ferrum sent you flying!","color":"dark_red","bold":true}
execute as @s run attribute @s minecraft:generic.gravity modifier add 95c5d624-7157-4cee-95eb-0d079cbfec99 "" -0.6 add_value
tag @s add UHCP_InflictedWithGravityGlobe
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
playsound minecraft:item.mace.smash_ground_heavy master @s ~ ~ ~ 1 1 1