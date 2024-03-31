tag @a[distance=..32,scores={ghast.spawn.egg.use=1..},sort=nearest,limit=1] add placer

execute if entity @a[distance=..32,tag=placer,limit=1] run function balloons:balloon/spawn_with_player
execute unless entity @a[distance=..32,tag=placer,limit=1] run function balloons:balloon/spawn_without_player

kill @s
tag @a[distance=..32,tag=placer,limit=1] remove placer