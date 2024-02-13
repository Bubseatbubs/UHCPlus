# Haste I
effect give @a[tag=UHCP_EffectDefault] minecraft:haste infinite 0 true

# Remove tags
scoreboard players reset %uhcp_effectDefault uhcp_initStatus
tag @a remove UHCP_EffectDefault
