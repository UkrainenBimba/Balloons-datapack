tag @s remove leashed
summon slime ~ ~ ~ {Attributes:[{Base:0,Name:"minecraft:general.scale"}],Tags:["remove.leash"],Size:0,NoAI:1b,Silent:1b,PersistenceRequired:1b,active_effects:[{id:"invisibility",duration:-1,amplifier:0,show_particles:false}]}
data modify storage balloons:temp set_leash.player set from entity @e[type=slime,tag=remove.leash,limit=1,distance=..8] UUID
#macros needed cuz idk why but i just can't delete leash nbt in mob
function balloons:balloon/leash2_macros with storage balloons:temp set_leash
data remove storage balloons:temp set_leash
tp @e[type=slime,tag=remove.leash,limit=1,distance=..8] ~ ~-256 ~
kill @e[type=slime,tag=remove.leash,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:lead",count:1}},distance=..1,limit=1]
execute as @e[type=slime,tag=save.slime,limit=1] on passengers if entity @s[type=interaction,tag=balloon.interact] on target at @s run playsound entity.leash_knot.break player @a ~ ~ ~ 1 1
execute as @e[type=slime,tag=save.slime,limit=1] on passengers if entity @s[type=interaction,tag=balloon.interact] run data remove entity @s interaction
tag @s add interacted
tag @s add delete.leash