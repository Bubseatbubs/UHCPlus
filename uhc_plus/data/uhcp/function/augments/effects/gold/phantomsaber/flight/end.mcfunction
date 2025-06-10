# Upon Phantom Saber making it to destination
tag @s remove UHCP_PhantomFly
tag @s remove UHCP_CurrentPhantom
data modify entity @s teleport_duration set value 3

# Identify targets
tag @e[distance=..2.5,tag=!UHCP_Owner,predicate=uhcp:targetable] add UHCP_PhantomCandidate
tag @a[tag=UHCP_PhantomCandidate,gamemode=!survival] remove UHCP_PhantomCandidate
execute unless score %friendly_fire uhcp_settings matches 1 as @a[tag=UHCP_PhantomCandidate] if score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s remove UHCP_PhantomCandidate
playsound minecraft:item.trident.return master @a[distance=..12] ~ ~ ~ 1 1 0.75
execute unless entity @e[tag=UHCP_PhantomCandidate] run return run tag @a remove UHCP_Owner

# Hit effects
execute as @e[tag=UHCP_PhantomCandidate] run damage @s 7 uhcp:instant_damage by @p[tag=UHCP_Owner]
particle minecraft:sweep_attack ~ ~ ~ 0.01 0.01 0.01 0.1 1 normal
particle minecraft:enchanted_hit ~ ~ ~ 0.25 0.25 0.25 0.1 100 normal
tag @e remove UHCP_PhantomCandidate
