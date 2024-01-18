team leave @a
scoreboard objectives add team trigger
scoreboard players set teamgame status 1
scoreboard players set teamcount status 2
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1000000 1 1
tellraw @a ["",{"text":"Team Game:","color":"gold"},{"text":" ["},{"text":"On","color":"green"},{"text":"]"}]
team leave @a

team add crimson
team modify crimson color red


team add ice
team modify ice color blue


team add meaniegreeny
team modify meaniegreeny color green


team add fire
team modify fire color gold


team add barbie
team modify barbie color light_purple


team add celeste
team modify celeste color dark_purple


team add riptide
team modify riptide color dark_aqua


team add blitz
team modify blitz color yellow


team add dangerdanger
team modify dangerdanger color dark_red


team add boom
team modify boom color dark_green


team add bling
team modify bling color aqua


team add royalnavy
team modify royalnavy color dark_blue


team add netherite
team modify netherite color gray


team add bastion
team modify bastion color dark_gray
