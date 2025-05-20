advancement revoke @s only uhcp:entity_actions/wore_armor_or_used_offhand

tellraw @s {"text":"You can't wear armor or use your offhand right now!","color":"dark_red"}
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

execute if items entity @s armor.head * run function uhcp:entity/remove_armor/head
execute if items entity @s armor.chest * run function uhcp:entity/remove_armor/chest
execute if items entity @s armor.legs * run function uhcp:entity/remove_armor/legs
execute if items entity @s armor.feet * run function uhcp:entity/remove_armor/feet
execute if items entity @s weapon.offhand * run function uhcp:entity/remove_armor/offhand