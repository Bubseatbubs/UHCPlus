# Updates a summoned entity

execute if entity @s[tag=UHCP_Scout] at @s unless entity @a[distance=..3] run function uhcp:augments/effects/silver/structurescout/clear
execute if entity @s[tag=UHCP_Saber] run return run function uhcp:relics/soulflame_saber/update
execute if entity @s[tag=UHCP_BigBone] at @s run return run function uhcp:titans/bone_colossus/bone_jump/update
execute if entity @s[tag=UHCP_Voltrune] run return run function uhcp:relics/voltrune/update
execute if entity @s[tag=UHCP_GravitySmasher] run return run function uhcp:relics/gravity_smasher/update
execute if entity @s[tag=UHCP_BoneBlock] run return run function uhcp:titans/bone_colossus/block/update
execute if entity @s[tag=UHCP_GoldBlock] run return run function uhcp:relics/the_harvester/update
execute if entity @s[tag=UHCP_SCloneStand] run return run function uhcp:relics/smooth_getaway/update
execute if entity @s[tag=UHCP_DragonsProtection] run return run function uhcp:relics/dragons_protection/update
execute if entity @s[tag=UHCP_PhantomClaw,tag=!UHCP_FlyingTowardsTarget] run return run function uhcp:augments/effects/gold/phantomclaw/update
execute if entity @s[tag=UHCP_FlyingTowardsTarget] at @s run return run function uhcp:augments/effects/gold/phantomclaw/update_flight
execute if entity @s[tag=UHCP_Sniffa] at @s run function uhcp:augments/effects/gold/sniffa/update
execute if entity @s[tag=UHCP_Prop] at @s run function uhcp:augments/effects/silver/prophunt/update
execute if entity @s[tag=UHCP_RaLaser] at @s run function uhcp:augments/effects/prismatic/gloryofra/ralaser/update
execute if entity @s[tag=UHCP_TurretOrigin] at @s run function uhcp:augments/effects/gold/turret/update
execute if entity @s[tag=UHCP_TurretShot] at @s run function uhcp:augments/effects/gold/turret/laser/update
execute if entity @s[tag=UHCP_WebSlinger] at @s run function uhcp:titans/items/web_slinger/update
execute if entity @s[tag=UHCP_TempCobweb] at @s run function uhcp:titans/items/web_slinger/update_temp_cobweb
execute if entity @s[tag=UHCP_GraveMarker] at @s run function uhcp:titans/gigantus/graves/update
execute if entity @s[tag=UHCP_FenrirMinion] at @s run function uhcp:titans/fenrir/wolves/update
execute if entity @s[tag=UHCP_KungfuPanda] at @s run function uhcp:augments/effects/prismatic/kungfupanda/update


# Augments
execute if entity @s[tag=UHCP_Bee] at @s run return run function uhcp:augments/effects/bees/update
execute if entity @s[tag=UHCP_BeastWolf] at @s run return run function uhcp:augments/effects/wolves/update

