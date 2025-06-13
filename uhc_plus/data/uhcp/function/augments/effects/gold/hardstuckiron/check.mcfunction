tellraw @s {"text":"You can't wear that, you're Hardstuck Iron!","color":"dark_red"}
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
scoreboard players set @s uhcp_leave 1000

# Remove banned armor
execute if items entity @s armor.head #uhcp:hardstuck_iron_banned run return run function uhcp:augments/effects/gold/hardstuckiron/head
execute if items entity @s armor.chest #uhcp:hardstuck_iron_banned run return run function uhcp:augments/effects/gold/hardstuckiron/chest
execute if items entity @s armor.legs #uhcp:hardstuck_iron_banned run return run function uhcp:augments/effects/gold/hardstuckiron/legs

# Boots
function uhcp:entity/remove_armor/feet
scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:augments/hardstuck_iron
