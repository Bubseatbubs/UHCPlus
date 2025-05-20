# Two minute warning
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"2 minutes","color":"blue","hover_event":{"action":"show_text","value":[{"text":"24 uses"}]}},{"text":" of use left for your compass.","color":"white"}]
