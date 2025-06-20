# This function is called from the portal tick function to play sounds at pos2
# $execute positioned $(pos2_x) $(pos2_y) $(pos2_z) run etc etc

$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) as @s if score @s uhcp_initStatus matches 60 run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1

# Age 30, 31, 32 seconds - Play closing note block sounds
$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) as @s if score @s uhcp_initStatus matches 600 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.9
$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) as @s if score @s uhcp_initStatus matches 620 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.7
$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) as @s if score @s uhcp_initStatus matches 640 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.5

# Age 33 seconds - Summon explosion particle, play sound, delete marker
$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) as @s if score @s uhcp_initStatus matches 660.. run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 5 force
$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) as @s if score @s uhcp_initStatus matches 660.. run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 1.2
