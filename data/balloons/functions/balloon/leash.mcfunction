tag @s add leashed
execute as @e[type=slime,tag=save.slime,limit=1] on passengers if entity @s[tag=balloon.interact] run data modify entity @e[type=slime,tag=save.slime,limit=1] leash.UUID set from entity @s interaction.player
execute as @e[type=slime,tag=save.slime,limit=1] on passengers if entity @s[tag=balloon.interact] on target run playsound entity.leash_knot.place player @a ~ ~ ~ 1 1
execute as @e[type=slime,tag=save.slime,limit=1] on passengers if entity @s[tag=balloon.interact] run data remove entity @s interaction
tag @s add interacted