# Select Athena patron
scoreboard players set @s uhcp_aug_patron 3
tellraw @a [{"text":"Athena","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1 1
