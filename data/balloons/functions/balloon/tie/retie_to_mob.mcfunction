execute as @e[type=#balloons:can_be_tied_to_a_balloon,tag=can.be.tied] if score @s playerID = *TEMP_ID playerID run tag @s add save.mob
data modify entity @s leash.UUID set from entity @e[type=#balloons:can_be_tied_to_a_balloon,tag=can.be.tied,tag=save.mob,limit=1] UUID
tag @e[type=#balloons:can_be_tied_to_a_balloon,tag=can.be.tied,tag=save.mob,limit=1] remove save.mob