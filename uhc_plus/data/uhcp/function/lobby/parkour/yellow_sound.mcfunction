# Alter volume selectors depending on lobby position
execute if score @s uhcp_initStatus matches 0 run return run playsound minecraft:block.wooden_button.click_off master @a[dx=15,dy=15,dz=3] ^7.5 ^9.5 ^2.5 0.625 1 0
execute if score @s uhcp_initStatus matches 90 run return run playsound minecraft:block.wooden_button.click_off master @a[dx=-3,dy=15,dz=15] ^7.5 ^9.5 ^2.5 0.625 1 0
execute if score @s uhcp_initStatus matches 180 run return run playsound minecraft:block.wooden_button.click_off master @a[dx=-15,dy=15,dz=-3] ^7.5 ^9.5 ^2.5 0.625 1 0
playsound minecraft:block.wooden_button.click_off master @a[dx=3,dy=15,dz=-15] ^7.5 ^9.5 ^2.5 0.625 1 0
