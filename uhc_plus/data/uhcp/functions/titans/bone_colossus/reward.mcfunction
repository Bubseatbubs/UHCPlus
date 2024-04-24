advancement revoke @s only uhcp:titans/killed_bonecolossus

tellraw @a [{"text":"Bone Colossus","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
loot give @s loot uhcp:armaments/bone_cage
tellraw @s [{"text":"You've slain"},{"text":" Bone Colossus","color":"gold"},{"text":"! You gained a","color":"white"},{"text":" Bone Cage","color":"gold"},{"text":"!","color":"white"}]