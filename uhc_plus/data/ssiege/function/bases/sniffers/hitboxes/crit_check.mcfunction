scoreboard players set %crit uhcp_initStatus 1

execute as @s store result score @s uhcp_initStatus run data get entity @s Motion[1] 1000
execute unless score @s uhcp_initStatus matches ..-80 run scoreboard players set %crit uhcp_initStatus 0

execute as @s store result score @s uhcp_initStatus run data get entity @s OnGround 1
execute unless score @s uhcp_initStatus matches 0 run scoreboard players set %crit uhcp_initStatus 0

execute if score %crit uhcp_initStatus matches 0 run return run playsound entity.player.attack.strong player @a[distance=..16] ~ ~ ~ 1 1 0.15

# Apply crit multiplier
scoreboard players operation %damage uhcp_initStatus *= #3 uhcp_const
scoreboard players operation %damage uhcp_initStatus /= #2 uhcp_const

particle crit ~ ~1 ~ 0.5 0.5 0.5 0 10
playsound entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1 1 0.15