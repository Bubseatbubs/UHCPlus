# Notify player they were detected
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.9 1 0.1
tellraw @s ["",{"text":"You were detected by the "},{"text":"enemy's Sniffer Sonar","color":"red"},{"text":"!"}]

# Notify enemy team player was detected
playsound minecraft:block.note_block.pling master @a[team=red] ~ ~ ~ 0.9 1 0.1
tellraw @a[team=red] ["",{"text":"Your Sniffer Sonar","color":"red"},{"text":" detected "},{"selector":"@s","color":"blue"},{"text":"!"}]