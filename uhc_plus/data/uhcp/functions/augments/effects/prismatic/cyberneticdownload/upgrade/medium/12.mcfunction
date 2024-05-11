tellraw @s [{"text":"Upgrade Complete: [","color":"dark_gray","bold":true},{"text":"Shield Protocol","color":"gray","bold":false},{"text":"]"}]

attribute @s minecraft:generic.max_absorption modifier add 13ede9ff-b146-49ae-8c7b-d7140303926f "" 8 add_value
effect give @s minecraft:absorption infinite 255 true
effect clear @s minecraft:absorption
