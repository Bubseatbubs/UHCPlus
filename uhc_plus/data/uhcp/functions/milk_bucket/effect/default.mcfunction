# Night Vision
effect give @a[tag=UHCP_EffectDefault] minecraft:night_vision infinite 0 true

# Remove tags
scoreboard players reset %effect_def uhcp_initStatus
tag @a remove UHCP_EffectDefault
