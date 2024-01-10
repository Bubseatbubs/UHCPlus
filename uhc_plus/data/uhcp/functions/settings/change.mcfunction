function uhcp:settings/menu

execute if score @s uhcp_settings matches 0 run scoreboard players set %apples uhcp_settings 0
execute if score @s uhcp_settings matches 0 run tellraw @s {"text":"Golden Apples will not be given on kills."}
execute if score @s uhcp_settings matches 1 run scoreboard players set %apples uhcp_settings 1
execute if score @s uhcp_settings matches 1 run tellraw @s {"text":"Set number of Golden Apples to 1."}
execute if score @s uhcp_settings matches 2 run scoreboard players set %apples uhcp_settings 2
execute if score @s uhcp_settings matches 2 run tellraw @s {"text":"Set number of Golden Apples to 2."}
execute if score @s uhcp_settings matches 3 run scoreboard players set %apples uhcp_settings 3
execute if score @s uhcp_settings matches 3 run tellraw @s {"text":"Set number of Golden Apples to 3."}
execute if score @s uhcp_settings matches 4 run scoreboard players set %apples uhcp_settings 4
execute if score @s uhcp_settings matches 4 run tellraw @s {"text":"Set number of Golden Apples to 4."}
execute if score @s uhcp_settings matches 5 run scoreboard players set %apples uhcp_settings 5
execute if score @s uhcp_settings matches 5 run tellraw @s {"text":"Set number of Golden Apples to 5."}

execute if score @s uhcp_settings matches 100 run scoreboard players set %h_amp uhcp_settings 0
execute if score @s uhcp_settings matches 100 run tellraw @s {"text":"Hunger amplifier set to 0."}
execute if score @s uhcp_settings matches 101 run scoreboard players set %h_amp uhcp_settings 1
execute if score @s uhcp_settings matches 101 run tellraw @s {"text":"Hunger amplifier set to 1."}
execute if score @s uhcp_settings matches 102 run scoreboard players set %h_amp uhcp_settings 2
execute if score @s uhcp_settings matches 102 run tellraw @s {"text":"Hunger amplifier set to 2."}
execute if score @s uhcp_settings matches 103 run scoreboard players set %h_amp uhcp_settings 3
execute if score @s uhcp_settings matches 103 run tellraw @s {"text":"Hunger amplifier set to 3."}
execute if score @s uhcp_settings matches 104 run scoreboard players set %h_amp uhcp_settings 4
execute if score @s uhcp_settings matches 104 run tellraw @s {"text":"Hunger amplifier set to 4."}
execute if score @s uhcp_settings matches 105 run scoreboard players set %h_amp uhcp_settings 255
execute if score @s uhcp_settings matches 105 run tellraw @s {"text":"Hunger amplifier set to 255."}

execute if score @s uhcp_settings matches 200 run scoreboard players set %h_max uhcp_settings -100
execute if score @s uhcp_settings matches 200 run tellraw @s {"text":"Turned hunger timer off."}
execute if score @s uhcp_settings matches 201 run scoreboard players set %h_max uhcp_settings 1200
execute if score @s uhcp_settings matches 201 run tellraw @s {"text":"Set hunger time to 1 minute."}
execute if score @s uhcp_settings matches 202 run scoreboard players set %h_max uhcp_settings 3600
execute if score @s uhcp_settings matches 202 run tellraw @s {"text":"Set hunger time to 3 minutes."}
execute if score @s uhcp_settings matches 203 run scoreboard players set %h_max uhcp_settings 6000
execute if score @s uhcp_settings matches 203 run tellraw @s {"text":"Set hunger time to 5 minutes."}
execute if score @s uhcp_settings matches 204 run scoreboard players set %h_max uhcp_settings 12000
execute if score @s uhcp_settings matches 204 run tellraw @s {"text":"Set hunger time to 10 minutes."}
execute if score @s uhcp_settings matches 205 run scoreboard players set %h_max uhcp_settings 24000
execute if score @s uhcp_settings matches 205 run tellraw @s {"text":"Set hunger time to 20 minutes."}

scoreboard players reset @s uhcp_settings
playsound block.note_block.harp master @s ~ ~ ~ 10 1 1