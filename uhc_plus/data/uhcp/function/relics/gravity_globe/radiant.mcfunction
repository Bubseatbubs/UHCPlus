# Radiant version of relic
execute as @a[distance=..6,tag=UHCP_InflictedWithGravityGlobe] run attribute @s minecraft:gravity modifier add uhcp:gravity_globe -0.6 add_value
execute as @e[distance=..10,type=!minecraft:player,predicate=uhcp:targetable] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus run data modify entity @s Motion[1] set value 3.5d

tag @s remove UHCP_Owner
tag @e remove UHCP_New
