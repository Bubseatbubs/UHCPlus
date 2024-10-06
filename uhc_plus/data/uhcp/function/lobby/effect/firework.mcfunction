# Set off firework
advancement revoke @s only uhcp:lobby/firework
scoreboard players set %lobby_firework uhcp_initStatus 1
scoreboard players set %lobby_firework uhcp_itemCount 20
execute at @e[tag=UHCP_LobbyOrigin,limit=1] run summon minecraft:firework_rocket ^15 ^30.5 ^19 {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",has_twinkle:true,has_trail:true,colors:[I;7274751]}]}}}}
