# Mining fatigue I, haste II
execute if score %time uhcp_gameTime matches ..9599 run tag @s add UHCP_EffectLLMF
execute if score %time uhcp_gameTime matches 9600.. run tag @s add UHCP_EffectLLH

schedule function uhcp:augments/milk_bucket/gold/effect/latelooter 1t
