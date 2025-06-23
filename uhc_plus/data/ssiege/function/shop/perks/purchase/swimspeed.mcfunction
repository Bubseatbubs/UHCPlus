$execute store result score @s ssiege_unlocked_runesmith run clear @s diamond $(cost)

execute store result score %success uhcp_initStatus run function ssiege:shop/perks/purchase/check_enough
execute if score %success uhcp_initStatus matches 0 run return fail

# Successful purchase
execute at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1 1
execute as @s[team=blue] run tellraw @a ["",{"selector":"@s"},{"text":" purchased "},{"text":"Swim Speed Level ","color":"green"},{"score":{"name":"%blue","objective":"ssiege_perk_swimspeed"},"color":"green"},{"text":" for ","color":"white"},{"text":"Blue team!","color":"blue"},{"text":" (Cost: ","color":"white"},{"score":{"name":"%blue_cost","objective":"ssiege_perk_swimspeed"},"color":"white"},{"text":")","color":"white"}]
execute as @s[team=red] run tellraw @a ["",{"selector":"@s"},{"text":" purchased "},{"text":"Swim Speed Level ","color":"green"},{"score":{"name":"%red","objective":"ssiege_perk_swimspeed"},"color":"green"},{"text":" for ","color":"white"},{"text":"Red team!","color":"red"},{"text":" (Cost: ","color":"white"},{"score":{"name":"%red_cost","objective":"ssiege_perk_swimspeed"},"color":"white"},{"text":")","color":"white"}]

# Update Perk score
execute as @s[team=blue] run scoreboard players add %blue ssiege_perk_swimspeed 1
execute as @s[team=red] run scoreboard players add %red ssiege_perk_swimspeed 1

function ssiege:shop/perks/effects/swimspeed

function ssiege:shop/perks/purchase/rerender