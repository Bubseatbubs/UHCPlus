# Check if player is over cobweb limit
execute store result score @s ssiege_cobwebCount run clear @s minecraft:cobweb 0
scoreboard players set %cobweb_limit uhcp_initStatus 12
scoreboard players set @s uhcp_initStatus 12
execute if score @s ssiege_cobwebCount <= %cobweb_limit uhcp_initStatus run return run advancement revoke @s only ssiege:cobweb_limit

scoreboard players operation @s ssiege_cobwebCount -= @s uhcp_initStatus
scoreboard players set @s uhcp_leave 1000

# Check for cobwebs
execute store result score @s uhcp_initStatus run clear @s minecraft:cobweb 0
execute unless score @s uhcp_initStatus matches 0 run return run function ssiege:cobweb_limit/cobweb/limit

scoreboard players operation %limit ssiege_cobwebCount %= %stack ssiege_cobwebCount
execute if score %limit ssiege_cobwebCount matches 0 run return run function ssiege:cobweb_limit/end/early

function ssiege:cobweb_limit/end/late
