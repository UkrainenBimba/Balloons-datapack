#find balloon's slime and set some nbts
scoreboard players operation *TEMP_ID ballonsID = @s ballonsID
execute as @e[type=slime,tag=balloon.leash] if score @s ballonsID = *TEMP_ID ballonsID run tag @s add save.slime
tp @e[type=slime,tag=save.slime,limit=1] ~ ~-0.065 ~
data modify entity @s PortalCooldown set value 100
data modify entity @s InLove set value 0
data modify entity @e[type=slime,tag=save.slime,limit=1] PortalCooldown set value 100

execute as @e[type=slime,tag=save.slime,limit=1] on leasher run tag @s add save.player
tag @s add save.balloon

#increase score (for attributes)
execute if score *changeGravityWithBalloons settings matches 1 as @e[tag=save.player,distance=..64,limit=1] if entity @s[type=player] run scoreboard players add @s balloonsUsed 1
execute if score *changeMobGravityWithBalloons settings matches 1 as @e[tag=save.player,distance=..64,limit=1] if entity @s[type=#balloons:can_be_tied_to_a_balloon] run scoreboard players add @s balloonsUsed 1

#tie balloons to mobs
execute as @e[tag=save.player,distance=..64,limit=1] if predicate balloons:player/shift run tag @s add start.raycast

#balloons movement (if there's no player nearby, it will be motionless in the air)
execute if entity @e[tag=save.player,distance=3.5..8,limit=1] if entity @a[distance=..32] run function balloons:balloon/attraction/get_pos
execute if entity @e[tag=save.player,distance=3.5..8,limit=1,type=leash_knot] unless entity @a[distance=..32] run tp @s ~ ~ ~

execute if entity @s[tag=delete.leash] run function balloons:balloon/kill_lead

#unleash balloon if player/mob is far
execute if loaded ~ ~ ~ if entity @a[distance=..128] if entity @s[tag=leashed] if entity @e[tag=save.player,distance=..8,limit=1] if score @s timer matches 1.. run scoreboard players reset @s timer
execute if loaded ~ ~ ~ if entity @a[distance=..128] unless entity @s[tag=leashed] if score @s timer matches 1.. run scoreboard players reset @s timer
execute if loaded ~ ~ ~ if entity @a[distance=..128] if entity @s[tag=leashed] unless entity @e[tag=save.player,distance=..8,limit=1] run scoreboard players add @s timer 1
execute if loaded ~ ~ ~ if entity @a[distance=..128] if entity @s[tag=leashed] if score @s timer matches 1.. as @e[type=item,nbt={Item:{id:"minecraft:lead",count:1},PickupDelay:10s},distance=..3,sort=nearest,limit=1] run kill @s
execute if loaded ~ ~ ~ if entity @a[distance=..128] if entity @s[tag=leashed] unless entity @e[tag=save.player,distance=..8,limit=1] if score @s timer matches 5.. run function balloons:balloon/unleash

execute if entity @s[tag=leashed] if entity @a[tag=interacted.with.leash.knot,distance=..8,limit=1] unless entity @e[tag=save.player,distance=..8,limit=1] run function balloons:balloon/unleash

execute as @e[type=slime,tag=save.slime,limit=1] on leasher run tag @s remove save.player

#kill balloon if it takes a damage
execute if entity @s[nbt={HurtTime:10s}] run function balloons:balloon/kill
execute store result score @s math run data get entity @s Pos[1]
execute if score @s math >= *balloonsMaxHeight settings run function balloons:balloon/kill

#functions that will be perform if there's at least one player nearby
execute if entity @a[distance=..8] run function balloons:balloon/tick_player_near

#check if balloon in stronghold
execute if predicate balloons:location/stronghold run function balloons:balloon/in_stronghold

tag @e[type=slime,tag=save.slime,limit=1] remove save.slime
tag @s remove save.balloon
tag @s[tag=interacted] remove interacted
scoreboard players reset *TEMP_ID ballonsID