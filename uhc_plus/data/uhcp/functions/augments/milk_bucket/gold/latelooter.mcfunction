# Mining fatigue I, haste II
execute if score %time uhcp_gameTime matches 24000.. run tag @s add UHCP_EffectLLMF
execute if score %time uhcp_gameTime matches ..23999 run tag @s add UHCP_EffectLLH

schedule function uhcp:augments/milk_bucket/gold/effect/latelooter 1t
