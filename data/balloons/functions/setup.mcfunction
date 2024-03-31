scoreboard objectives add ballonsID dummy
scoreboard objectives add playerID dummy
execute unless score *CLOUD_ID ballonsID matches -2147483648..2147483647 run scoreboard players set *CLOUD_ID ballonsID 0
execute unless score *CLOUD_ID playerID matches -2147483648..2147483647 run scoreboard players set *CLOUD_ID playerID 0

scoreboard objectives add balloonsUsed dummy
scoreboard objectives add balloonsUsedPrev dummy

scoreboard objectives add ghast.spawn.egg.use used:ghast_spawn_egg

scoreboard objectives add math dummy
scoreboard objectives add const dummy
scoreboard players set *10000 const 10000
scoreboard players set *100 const 100
scoreboard players set *500 const 500
scoreboard players set *4 const 4

scoreboard objectives add timer dummy

team add noCol
team modify noCol collisionRule never

scoreboard objectives add settings dummy
execute unless score *setDefault settings matches 1 run function balloons:set_default_settings
scoreboard objectives add maxBalloonFlightHeight trigger
scoreboard objectives add balloonAffectPlayersGravity trigger
scoreboard objectives add balloonAffectMobsGravity trigger

gamerule sendCommandFeedback false

schedule function balloons:main_page 1s