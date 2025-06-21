tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n————","color":"yellow","bold":true,"strikethrough":true},{"text":"————","color":"yellow","bold":true,"strikethrough":true},{"text":"————","color":"yellow","bold":true,"strikethrough":true},{"text":"————","color":"yellow","bold":true,"strikethrough":true},{"text":"————","color":"yellow","bold":true,"strikethrough":true},{"text":"————","color":"yellow","bold":true,"strikethrough":true},{"text":"————","color":"yellow","bold":true,"strikethrough":true},{"text":"————","color":"yellow","bold":true,"strikethrough":true}]
tellraw @a [{"bold":true,"text":" "},"                      ",{"color":"white","bold":false,"text":"📊"}," ",{"color":"yellow","text":"Game Stats"},{"color":"white","bold":false,"text":" 📈"}]
tellraw @a [{"bold":true,"color":"yellow","text":"Category"},{"bold":true,"color":"blue","text":"     Blue     "},{"bold":true,"color":"red","text":"Red"}]

# Kills
scoreboard players set %blue ssiege_kills 0
scoreboard players set %red ssiege_kills 0
execute as @a[team=blue] run scoreboard players operation %blue ssiege_kills += @s ssiege_kills
execute as @a[team=red] run scoreboard players operation %red ssiege_kills += @s ssiege_kills
execute if score %blue ssiege_kills matches ..9 run tellraw @a [{"bold":false,"color":"yellow","text":"Kills"},{"bold":true,"text":"             "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"         "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]
execute if score %blue ssiege_kills matches 10.. run tellraw @a [{"bold":false,"color":"yellow","text":"Kills"},{"bold":true,"text":"             "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"        "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]

# Titans Slain
scoreboard players set %blue ssiege_kills 0
scoreboard players set %red ssiege_kills 0
execute as @a[team=blue] run scoreboard players operation %blue ssiege_kills += @s ssiege_titans_slain
execute as @a[team=red] run scoreboard players operation %red ssiege_kills += @s ssiege_titans_slain
execute if score %blue ssiege_kills matches ..9 run tellraw @a [{"bold":false,"color":"yellow","text":"Titans Slain"},{"bold":false,"text":"       "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"         "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]
execute if score %blue ssiege_kills matches 10.. run tellraw @a [{"bold":false,"color":"yellow","text":"Titans Slain"},{"bold":false,"text":"       "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"        "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]

# Giants Killed
scoreboard players set %blue ssiege_kills 0
scoreboard players set %red ssiege_kills 0
execute as @a[team=blue] run scoreboard players operation %blue ssiege_kills += @s ssiege_giants_killed
execute as @a[team=red] run scoreboard players operation %red ssiege_kills += @s ssiege_giants_killed
execute if score %blue ssiege_kills matches ..9 run tellraw @a [{"bold":false,"color":"yellow","text":"Giants Slain"},{"bold":false,"text":"       "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"         "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]
execute if score %blue ssiege_kills matches 10.. run tellraw @a [{"bold":false,"color":"yellow","text":"Giants Slain"},{"bold":false,"text":"       "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"        "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]

# Runes Bought
scoreboard players set %blue ssiege_kills 0
scoreboard players set %red ssiege_kills 0
execute as @a[team=blue] run scoreboard players operation %blue ssiege_kills += @s ssiege_runes_purchased
execute as @a[team=red] run scoreboard players operation %red ssiege_kills += @s ssiege_runes_purchased
execute if score %blue ssiege_kills matches ..9 run tellraw @a [{"bold":false,"color":"yellow","text":"Runes Bought"},{"bold":true,"text":" "},{"bold":false,"text":"   "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"         "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]
execute if score %blue ssiege_kills matches 10.. run tellraw @a [{"bold":false,"color":"yellow","text":"Runes Bought"},{"bold":true,"text":" "},{"bold":false,"text":"   "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"        "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]

# Gapples Ate
scoreboard players set %blue ssiege_kills 0
scoreboard players set %red ssiege_kills 0
execute as @a[team=blue] run scoreboard players operation %blue ssiege_kills += @s ssiege_gapples_eaten
execute as @a[team=red] run scoreboard players operation %red ssiege_kills += @s ssiege_gapples_eaten
execute if score %blue ssiege_kills matches ..9 run tellraw @a [{"bold":false,"color":"yellow","text":"Gapples Ate"},{"bold":true,"text":"  "},{"bold":false,"text":"    "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"         "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]
execute if score %blue ssiege_kills matches 10.. run tellraw @a [{"bold":false,"color":"yellow","text":"Gapples Ate"},{"bold":false,"text":"       "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"        "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]

# Diamonds Mined
scoreboard players set %blue ssiege_kills 0
scoreboard players set %red ssiege_kills 0
execute as @a[team=blue] run scoreboard players operation %blue ssiege_kills += @s ssiege_mine_ddiamonds_stat
execute as @a[team=blue] run scoreboard players operation %blue ssiege_kills += @s ssiege_mine_diamonds_stat
execute as @a[team=red] run scoreboard players operation %red ssiege_kills += @s ssiege_mine_ddiamonds_stat
execute as @a[team=red] run scoreboard players operation %red ssiege_kills += @s ssiege_mine_diamonds_stat
execute if score %blue ssiege_kills matches ..9 run tellraw @a [{"bold":false,"color":"yellow","text":"Diamonds Mined"},{"bold":true,"text":" "},{"bold":false,"text":" "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"         "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]
execute if score %blue ssiege_kills matches 10..99 run tellraw @a [{"bold":false,"color":"yellow","text":"Diamonds Mined"},{"bold":true,"text":" "},{"bold":false,"text":" "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"        "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]
execute if score %blue ssiege_kills matches 100.. run tellraw @a [{"bold":false,"color":"yellow","text":"Diamonds Mined"},{"bold":true,"text":" "},{"bold":false,"text":" "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"       "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]

# Gold Mined
scoreboard players set %blue ssiege_kills 0
scoreboard players set %red ssiege_kills 0
execute as @a[team=blue] run scoreboard players operation %blue ssiege_kills += @s ssiege_mine_dgold_stat
execute as @a[team=blue] run scoreboard players operation %blue ssiege_kills += @s ssiege_mine_gold_stat
execute as @a[team=red] run scoreboard players operation %red ssiege_kills += @s ssiege_mine_dgold_stat
execute as @a[team=red] run scoreboard players operation %red ssiege_kills += @s ssiege_mine_gold_stat
execute if score %blue ssiege_kills matches ..9 run tellraw @a [{"bold":false,"color":"yellow","text":"Gold Mined"},{"bold":true,"text":"      "},{"bold":false,"text":" "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"         "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]
execute if score %blue ssiege_kills matches 10..99 run tellraw @a [{"bold":false,"color":"yellow","text":"Gold Mined"},{"bold":true,"text":"      "},{"bold":false,"text":" "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"        "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]
execute if score %blue ssiege_kills matches 100.. run tellraw @a [{"bold":false,"color":"yellow","text":"Gold Mined"},{"bold":true,"text":"    "},{"bold":false,"text":"   "},{"bold":false,"color":"blue","score":{objective:ssiege_kills,name:"%blue"}},{"bold":true,"text":"       "},{"bold":false,"color":"red","score":{objective:ssiege_kills,name:"%red"}}]

#scoreboard objectives setdisplay sidebar ssiege_damage_dealt