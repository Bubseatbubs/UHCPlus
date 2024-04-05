# Speed II, speed I
execute if score %time uhcp_game_time matches ..23999 run tag @s add UHCP_EffectGGG2
execute if score %time uhcp_game_time matches 24000.. run tag @s add UHCP_EffectGGG1

schedule function uhcp:milk_bucket/prismatic/effect/gagasgas 1t
