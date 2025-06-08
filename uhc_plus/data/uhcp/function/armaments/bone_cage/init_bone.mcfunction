execute store result entity @s Motion[0] double 0.01 run random value -15..15
execute store result entity @s Motion[2] double 0.01 run random value -15..15
data modify entity @s Owner set from entity @p[tag=UHCP_CurrentBoneCage] UUID
tag @s remove UHCP_BoneCageBone
