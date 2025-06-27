# Elytra
item replace entity @s armor.chest with minecraft:elytra[minecraft:enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},minecraft:unbreakable={},minecraft:custom_data={uhcp_structScout:true},minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1

# Sky
execute align xz positioned ~0.5 250 ~0.5 run function uhcp:augments/effects/silver/structurescout/align

# Effects
playsound minecraft:entity.zombie.converted_to_drowned master @s ~ ~ ~ 1 0.5 1
tellraw @s {"text":"Your elytra will be removed in a minute!","color":"red"}
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 1200
