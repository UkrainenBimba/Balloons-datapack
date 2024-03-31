scoreboard players reset @a[scores={ghast.spawn.egg.use=1..}] ghast.spawn.egg.use
scoreboard players reset @a[scores={balloonsUsed=1..}] balloonsUsed
execute if score *changeMobGravityWithBalloons settings matches 1 run scoreboard players reset @e[type=#balloons:can_be_tied_to_a_balloon,scores={balloonsUsed=1..}] balloonsUsed
tag @a[tag=changed.dimension] remove changed.dimension
tag @a[tag=interacted.with.leash.knot] remove interacted.with.leash.knot

execute as @a[scores={maxBalloonFlightHeight=-2147483648..2147483647}] unless score @s maxBalloonFlightHeight matches 0 run function balloons:settings/max_balloon_flight_height
execute as @a[scores={balloonAffectPlayersGravity=-2147483648..2147483647}] unless score @s balloonAffectPlayersGravity matches 0 run function balloons:settings/balloon_affect_players_gravity
execute as @a[scores={balloonAffectMobsGravity=-2147483648..2147483647}] unless score @s balloonAffectMobsGravity matches 0 run function balloons:settings/balloon_affect_mobs_gravity

scoreboard players enable @a maxBalloonFlightHeight
scoreboard players enable @a balloonAffectPlayersGravity
scoreboard players enable @a balloonAffectMobsGravity