# Apply effects
execute as @a[tag=UHCP_EffectLLMF] run function uhcp:milk_bucket/gold/effect/latelooter/mining_fatigue
execute as @a[tag=UHCP_EffectLLH] run function uhcp:milk_bucket/gold/effect/latelooter/haste

# Remove tags
tag @a remove UHCP_EffectLLMF
tag @a remove UHCP_EffectLLH
