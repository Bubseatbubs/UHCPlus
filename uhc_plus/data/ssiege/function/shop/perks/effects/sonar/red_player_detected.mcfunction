# Notify player they were detected
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.9 1 0.1
tellraw @s ["",{"text":"You were detected by the "},{"text":"enemy's Sniffer Sonar","color":"blue"},{"text":"!"}]

# Notify enemy team player was detected
playsound minecraft:block.note_block.pling master @a[team=blue] ~ ~ ~ 0.9 1 0.1
tellraw @a[team=blue] ["",{"text":"Your Sniffer Sonar","color":"blue"},{"text":" detected "},{"selector":"@s","color":"red"},{"text":"!"}]