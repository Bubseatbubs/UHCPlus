playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1 1

# Menu
tellraw @s [{"text":"\n\n————","color":"#217AFF","bold":true,"strikethrough":true},{"text":"————","color":"#38A9FF","bold":true,"strikethrough":true},{"text":"————","color":"#5CD9FF","bold":true,"strikethrough":true},{"text":"————","color":"#80FFEE","bold":true,"strikethrough":true},{"text":"————","color":"#80FFEE","bold":true,"strikethrough":true},{"text":"————","color":"#5CD9FF","bold":true,"strikethrough":true},{"text":"————","color":"#38A9FF","bold":true,"strikethrough":true},{"text":"————","color":"#217AFF","bold":true,"strikethrough":true}]

#Augments
function uhcp:lobby/settings_display/augment/tier
tellraw @s [{"text":"Glory of Ra Stacks Required: ","color":"white","bold":true},{"score":{"name":"%ra_stacks","objective":"uhcp_settings"},"color":"gray","bold":false}]
execute unless score %patrons uhcp_settings matches 1 run tellraw @s [{"text":"Patron Augments: ","color":"white","bold":true},{"text":"OFF","color":"red","bold":false}]
execute if score %patrons uhcp_settings matches 1 run tellraw @s [{"text":"Patron Augments: ","color":"white","bold":true},{"text":"ON","color":"green","bold":false}]

# Border
tellraw @s [{"text":"\nBorder Size: ","color":"white","bold":true},{"score":{"name":"%border_size","objective":"uhcp_settings"},"color":"gray","bold":false}]
function uhcp:lobby/settings_display/border/countdown
function uhcp:lobby/settings_display/border/shrink_speed

# Lava
function uhcp:lobby/settings_display/lava/countdown
tellraw @s [{"text":"Final Height of Lava: ","color":"white","bold":true},{"text":"(y-level) ","color":"gray","bold":false},{"score":{"name":"%lava","objective":"uhcp_lava_maxHeight"},"color":"gray","bold":false}]
function uhcp:lobby/settings_display/lava/time

# Other
function uhcp:lobby/settings_display/other/dimension_countdown
function uhcp:lobby/settings_display/other/difficulty
tellraw @s [{"text":"Number of Titans: ","color":"white","bold":true},{"score":{"name":"%titans","objective":"uhcp_settings"},"color":"gray","bold":false}]

# Player
function uhcp:lobby/settings_display/player/countdown
tellraw @s [{"text":"Maximum Arrow Limit: ","color":"white","bold":true},{"score":{"name":"%arrow_limit","objective":"uhcp_arrowCount"},"color":"gray","bold":false}]
tellraw @s [{"text":"Soul Apples Dropped On Death: ","color":"white","bold":true},{"score":{"name":"%soul_apples","objective":"uhcp_settings"},"color":"gray","bold":false}]
execute if score %night_vision uhcp_settings matches 0 run tellraw @s [{"text":"Night Vision: ","color":"white","bold":true},{"text":"OFF","color":"red","bold":false}]
execute if score %night_vision uhcp_settings matches 1 run tellraw @s [{"text":"Night Vision: ","color":"white","bold":true},{"text":"ON","color":"green","bold":false}]
execute if score %ender_pearl uhcp_settings matches 0 run tellraw @s [{"text":"Ender Pearl Immunity: ","color":"white","bold":true},{"text":"OFF","color":"red","bold":false}]
execute if score %ender_pearl uhcp_settings matches 1 run tellraw @s [{"text":"Ender Pearl Immunity: ","color":"white","bold":true},{"text":"ON","color":"green","bold":false}]


# Team
function uhcp:lobby/settings_display/teams/team_game
execute if score %team uhcp_settings matches 1 run function uhcp:lobby/settings_display/teams/friendly_fire

tellraw @s [{"text":"————","color":"#217AFF","bold":true,"strikethrough":true},{"text":"————","color":"#38A9FF","bold":true,"strikethrough":true},{"text":"————","color":"#5CD9FF","bold":true,"strikethrough":true},{"text":"————","color":"#80FFEE","bold":true,"strikethrough":true},{"text":"————","color":"#80FFEE","bold":true,"strikethrough":true},{"text":"————","color":"#5CD9FF","bold":true,"strikethrough":true},{"text":"————","color":"#38A9FF","bold":true,"strikethrough":true},{"text":"————","color":"#217AFF","bold":true,"strikethrough":true}]
execute if score @s patron matches 1..99 run scoreboard players reset @s patron
