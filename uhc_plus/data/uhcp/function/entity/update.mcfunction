# Updates a summoned entity

# Other
execute as @s[tag=UHCP_WarningSymbol] run function uhcp:entity/warning_symbol/update
execute as @s[tag=UHCP_Scout] unless entity @a[distance=..3] run function uhcp:augments/effects/silver/structurescout/clear
execute as @s[tag=UHCP_RunicSentrySummon] if entity @p[gamemode=survival,distance=..8] run function uhcp:entity/runic_sentry_summon
execute as @s[tag=UHCP_SoulApple] run function uhcp:kill/soul_apple/update

# Consumables
execute as @s[tag=UHCP_WebSlinger] run function uhcp:consumables/web_slinger/update

# Relics
execute as @s[tag=UHCP_Saber] run return run function uhcp:relics/soulflames_embrace/update
execute as @s[tag=UHCP_Voltrune] run return run function uhcp:relics/voltrune/update
execute as @s[tag=UHCP_Buzzburst] run return run function uhcp:relics/buzzburst/update
execute as @s[tag=UHCP_TurretOrigin] run function uhcp:relics/runic_sentry/update
execute as @s[tag=UHCP_TurretShot] run function uhcp:relics/runic_sentry/laser/update
execute as @s[tag=UHCP_WebORang] run function uhcp:relics/web_o_rang/update
execute as @s[tag=UHCP_WindfallPiece] run function uhcp:relics/windfall/piece/update
execute as @s[tag=UHCP_TempCobweb] run function uhcp:relics/web_o_rang/update_temp_cobweb
execute as @s[tag=UHCP_GoldBlock] run return run function uhcp:relics/windfall/update
execute as @s[tag=UHCP_SCloneStand] run return run function uhcp:relics/smooth_getaway/update
execute as @s[tag=UHCP_DragonsProtection] run return run function uhcp:relics/dragons_protection/update

# Titans
execute as @s[tag=UHCP_BigBone] run return run function uhcp:titans/bone_colossus/bone_jump/update
execute as @s[tag=UHCP_ArachneCobweb] run return run function uhcp:titans/arachne/cobwebs/update
execute as @s[tag=UHCP_ArachneSpiderAI] unless entity @e[tag=UHCP_ArachneSpider,distance=..2.5] run function uhcp:entity/instant_kill
execute as @s[tag=UHCP_GigantusCircleStrike] run return run function uhcp:titans/gigantus/circle_strike/update
execute as @s[tag=UHCP_GigaCreeperLightning] run return run function uhcp:titans/giga_creeper/lightning/update
execute as @s[tag=UHCP_SeraphimLaserIndicator] run return run function uhcp:titans/seraphim/laser/indicator/update
execute as @s[tag=UHCP_FerrumLanding] run return run function uhcp:titans/ferrum/jump/update_indicator
execute as @s[tag=UHCP_GigaCreeperTNT] run return run function uhcp:titans/giga_creeper/tnt/update
execute as @s[tag=UHCP_TritonTrident] run return run function uhcp:titans/triton/trident/update
execute as @s[tag=UHCP_SeraphimAI] unless entity @e[tag=UHCP_Seraphim,distance=..16] run function uhcp:entity/instant_kill
execute as @s[tag=UHCP_SeraphimLaser] run return run function uhcp:titans/seraphim/laser/update
execute as @s[tag=UHCP_TritonTridentHitbox,nbt={inGround:1b}] run return run kill @s
execute as @s[tag=UHCP_BoneBlock] run return run function uhcp:titans/bone_colossus/block/update
execute as @s[tag=UHCP_AnvilBlock] run return run function uhcp:titans/ferrum/block/update
execute as @s[tag=UHCP_FerrumBlockIndicator] run return run function uhcp:titans/ferrum/block/indicator/update
execute as @s[tag=UHCP_InfernusCircleStrike] run return run function uhcp:titans/infernus/circle_fire/update
execute as @s[tag=UHCP_TyrionSaber] run return run function uhcp:titans/tyrion/soulflames_embrace/update_soulflame
execute as @s[tag=UHCP_TyrionSoulflame] run return run function uhcp:titans/tyrion/soulflames_embrace/update
execute as @s[tag=UHCP_TyrionVoltrune] run return run function uhcp:titans/tyrion/voltrune/update
execute as @s[tag=UHCP_InfernusFireball] run return run function uhcp:titans/infernus/fireball/update
execute as @s[tag=UHCP_NetherPortal] run return run function uhcp:titans/gallie/nether_portal/update
execute as @s[tag=UHCP_HoglinPortal] run return run function uhcp:titans/gallie/hoglin_portal/update
execute as @s[tag=UHCP_GallieNetherPortal] run return run function uhcp:titans/gallie/nether_portal/indicator/update
execute as @s[tag=UHCP_Bellan] unless entity @e[tag=UHCP_Gallie,distance=..12] run kill @s

# Augments
execute as @s[tag=UHCP_PhantomSaber,tag=!UHCP_FlyingTowardsTarget] run return run function uhcp:augments/effects/gold/phantomsaber/update
execute as @s[tag=UHCP_FlyingTowardsTarget] run return run function uhcp:augments/effects/gold/phantomsaber/update_flight
execute as @s[tag=UHCP_TrailblazeMarker] run return run function uhcp:augments/effects/prismatic/trailblazer/update_fire
execute as @s[tag=UHCP_Sniffa] run function uhcp:augments/effects/gold/sniffa/update
execute as @s[tag=UHCP_Prop] run function uhcp:augments/effects/silver/prophunt/update
execute as @s[tag=UHCP_RaLaser] run function uhcp:consumables/ras_gaze/update
execute as @s[tag=UHCP_GraveMarker] run function uhcp:titans/gigantus/graves/update
execute as @s[tag=UHCP_FenrirMinion] run function uhcp:titans/fenrir/wolves/update
execute as @s[tag=UHCP_KungfuPanda] run function uhcp:augments/effects/prismatic/kungfupanda/update
execute as @s[tag=UHCP_Bee] run return run function uhcp:entity/bees/update
