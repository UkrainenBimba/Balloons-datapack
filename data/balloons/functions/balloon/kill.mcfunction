data remove entity @s leash
data remove entity @e[type=slime,tag=save.slime,limit=1] leash
particle gust ~ ~.5 ~
playsound minecraft:entity.wind_charge.wind_burst neutral @a ~ ~.5 ~ 2 1
data modify storage balloons:temp balloon_particles.custom_model_data set from entity @s ArmorItems[3].components."minecraft:custom_model_data"
function balloons:balloon/kill_particles with storage balloons:temp balloon_particles
data remove storage balloons:temp balloon_particles
execute as @e[type=slime,tag=save.slime,limit=1] on passengers run kill @s
tp @e[type=slime,tag=save.slime,limit=1] ~ -256 ~
kill @e[type=slime,tag=save.slime,limit=1]
tp @s ~ -256 ~
kill @s