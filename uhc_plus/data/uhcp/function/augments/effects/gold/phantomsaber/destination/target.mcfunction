# Owner
tag @s add UHCP_Owner

# Determine target (new or old)
tag @e[distance=..5,tag=!UHCP_Owner,predicate=uhcp:targetable] add UHCP_PhantomCandidate
scoreboard players reset @e[tag=UHCP_PhantomCandidate] uhcp_initStatus
execute as @e[tag=UHCP_PhantomCandidate] store result score @s uhcp_initStatus run function uhcp:relics/checkattacker
tag @n[tag=UHCP_PhantomCandidate,scores={uhcp_initStatus=1}] add UHCP_PhantomTarget
tag @e remove UHCP_PhantomCandidate
execute unless entity @e[tag=UHCP_PhantomTarget] run return run tag @s remove UHCP_Owner
playsound minecraft:item.trident.throw master @a[distance=..12] ~ ~ ~ 1 1 0.75

# Existing marker
execute as @e[tag=UHCP_PhantomDestination] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run return run function uhcp:augments/effects/gold/phantomsaber/destination/reuse

# New marker
execute at @n[tag=UHCP_PhantomTarget] positioned ~ ~1.5 ~ summon minecraft:marker run function uhcp:augments/effects/gold/phantomsaber/destination/summon
tag @e remove UHCP_PhantomTarget
function uhcp:augments/effects/gold/phantomsaber/destination/search
tag @s remove UHCP_Owner
