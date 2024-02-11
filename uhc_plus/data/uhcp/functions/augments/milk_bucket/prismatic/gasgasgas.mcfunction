# Speed II, speed I
execute if score %time uhcp_gameTime matches ..11999 run tag @s add UHCP_EffectGGG2
execute if score %time uhcp_gameTime matches 12000.. run tag @s add UHCP_EffectGGG1

schedule function uhcp:augments/milk_bucket/prismatic/effect/gagasgas 1t
