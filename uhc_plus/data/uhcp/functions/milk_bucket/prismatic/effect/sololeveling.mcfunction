# Apply effects
effect give @a[tag=UHCP_EffectSLR] minecraft:resistance infinite 0 false
effect give @a[tag=UHCP_EffectSLSp] minecraft:speed infinite 0 false
effect give @a[tag=UHCP_EffectSLSt] minecraft:strength infinite 0 false

# Remove tags
tag @a remove UHCP_EffectSLR
tag @a remove UHCP_EffectSLSp
tag @a remove UHCP_EffectSLSt
