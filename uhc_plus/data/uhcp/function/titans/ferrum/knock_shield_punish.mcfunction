effect give @s minecraft:slowness 10 4 false
execute as @n[tag=UHCP_Ferrum,tag=!UHCP_IsJumping] run function uhcp:titans/ferrum/jump/jump
tellraw @s {"text":"You weren't holding a shield in your offhand! Ferrum sent you flying!","color":"dark_red","bold":true}
attribute @s minecraft:gravity modifier add uhcp:gravity_globe -0.6 add_value
tag @s add UHCP_InflictedWithGravityGlobe
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
playsound minecraft:item.mace.smash_ground_heavy master @s ~ ~ ~ 1 1 1
