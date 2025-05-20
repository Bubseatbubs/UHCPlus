execute store result score @s uhcp_initStatus run clear @s *[minecraft:custom_data~{uhcp_scavengerflyer:true}] 0
execute store result storage uhcp:id player.id short 1 run scoreboard players get @s uhcp_id
data modify storage uhcp:id player.test set from storage uhcp:id player.id
data modify storage uhcp:id game.test set from storage uhcp:id game.id

execute if score @s uhcp_initStatus matches 1 run return run function uhcp:augments/effects/gold/scavengerhunt/compare
scoreboard players set @s uhcp_leave 1000
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/offhand
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.0 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/0
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.1 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/1
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.2 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/2
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.3 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/3
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.4 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/4
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.5 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/5
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.6 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/6
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.7 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/7
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.8 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/8
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.9 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/9
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.10 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/10
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.11 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/11
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.12 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/12
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.13 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/13
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.14 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/14
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.15 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/15
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.16 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/16
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.17 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/17
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.18 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/18
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.19 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/19
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.20 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/20
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.21 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/21
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.22 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/22
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.23 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/23
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.24 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/24
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.25 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/25
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.26 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/26
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.27 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/27
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.28 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/28
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.29 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/29
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.30 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/30
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.31 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/31
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.32 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/32
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.33 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/33
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
execute if items entity @s container.34 *[minecraft:custom_data~{uhcp_scavengerflyer:true}] run function uhcp:augments/effects/gold/scavengerhunt/slots/34
execute unless score @s uhcp_leave matches 1000 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer

item replace entity @s container.35 with minecraft:air
scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
