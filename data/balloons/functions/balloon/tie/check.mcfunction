scoreboard players operation *TEMP_ID playerID = @s playerID
execute as @a[tag=start.raycast,distance=..16] if score @s playerID = *TEMP_ID playerID run tag @s add save.player

execute on target if entity @s[tag=save.player] run function balloons:balloon/tie/tie

scoreboard players remove @s math 1
execute unless score @s math matches 0.. run kill @s
execute unless entity @a[tag=save.player,limit=1] run kill @s
execute if data entity @s interaction run kill @s

scoreboard players reset *TEMP_ID playerID
tag @a[tag=save.player,tag=start.raycast,limit=1] add dont.kill.interaction
tag @a[tag=save.player,limit=1] remove save.player
scoreboard players reset @e[type=#balloons:can_be_tied_to_a_balloon,tag=can.be.tied] playerID
tag @e[type=#balloons:can_be_tied_to_a_balloon,tag=can.be.tied] remove can.be.tied