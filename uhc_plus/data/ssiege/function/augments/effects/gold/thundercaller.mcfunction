advancement revoke @s only ssiege:thundercaller
execute store result score %rand uhcp_initStatus run random value 0..9
execute if score %rand uhcp_initStatus matches 1.. run return fail
execute at @s[team=blue] as @a[team=blue,distance=..5] run effect give @s resistance 1 4 true
execute at @s[team=red] as @a[team=red,distance=..5] run effect give @s resistance 1 4 true
execute at @a[distance=..5,sort=nearest,limit=1] if data entity @s HurtTime run summon lightning_bolt ~ ~ ~