# Mining fatigue I, haste II
execute if score %time uhcp_game_time matches ..9599 run tag @s add UHCP_EffectLLMF
execute if score %time uhcp_game_time matches 9600.. run tag @s add UHCP_EffectLLH

schedule function uhcp:milk_bucket/gold/effect/latelooter 1t
