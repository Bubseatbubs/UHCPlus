tellraw @s [{"text":"Upgrade Complete: [","color":"dark_gray","bold":true},{"text":"Shield Matrix","color":"gray","bold":false},{"text":"]"}]

attribute @s minecraft:max_absorption modifier add uhcp:max_absorption 16 add_value
effect give @s minecraft:absorption infinite 255 true
effect clear @s minecraft:absorption
