advancement revoke @s only uhcp:relics/smooth_getaway/wearing_armor
tellraw @s {"text":"You can't equip Armor right now!","color":"dark_red"}
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

execute if items entity @s armor.head * run function uhcp:augments/effects/prismatic/smooth_getaway/remove_armor/head
execute if items entity @s armor.chest * run function uhcp:augments/effects/prismatic/smooth_getaway/remove_armor/chest
execute if items entity @s armor.legs * run function uhcp:augments/effects/prismatic/smooth_getaway/remove_armor/legs
execute if items entity @s armor.feet * run function uhcp:augments/effects/prismatic/smooth_getaway/remove_armor/feet
execute if items entity @s weapon.offhand * run function uhcp:augments/effects/prismatic/smooth_getaway/remove_armor/offhand

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
