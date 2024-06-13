# Select Aphrodite patron
scoreboard players set @s uhcp_aug_patron 0
tellraw @a [{"text":"Aphrodite","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2 1
