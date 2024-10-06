# Runs in entrance
execute as @a[distance=..3,gamemode=!spectator,tag=!UHCP_RelicTestingChamber] run function uhcp:lobby/relic_testing/init
kill @e[distance=..4,type=minecraft:fishing_bobber]
