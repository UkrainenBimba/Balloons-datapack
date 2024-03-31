execute as @e[type=slime,tag=save.slime,limit=1] on passengers if entity @s[tag=balloon.interact] run function balloons:balloon/leash2_macros with entity @s interaction
execute as @e[type=slime,tag=save.slime,limit=1] on passengers if entity @s[tag=balloon.interact] on target run playsound entity.leash_knot.place player @a ~ ~ ~ 1 1
execute as @e[type=slime,tag=save.slime,limit=1] on passengers if entity @s[tag=balloon.interact] run data remove entity @s interaction
tag @s add interacted