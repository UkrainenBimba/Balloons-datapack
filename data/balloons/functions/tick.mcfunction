#ok uh, i think i should leave some comments to make the code more understandable
#if u have any questions about code, message me in discord (@bimbusick)

#set a id foreach player
execute as @a[tag=!id.set,limit=1] unless score @s playerID matches -2147483648..2147483647 run function balloons:set_player_id

#balloons logic
execute as @e[type=pig,tag=balloon] at @s run function balloons:balloon/tick

execute as @e[type=interaction,tag=tie.balloon] at @s run function balloons:balloon/tie/check

#raycast
execute as @a[tag=start.raycast] at @s run function balloons:player/raycast/init

#balloon spawn by spawn egg
execute as @e[type=marker,tag=balloon.spawn] at @s run function balloons:balloon/spawn

#set an attributes for player when he has a balloons
execute as @a unless score @s balloonsUsed = @s balloonsUsedPrev run function balloons:player/update_used_balloons
execute as @e[type=#balloons:can_be_tied_to_a_balloon,tag=!balloon] unless score @s balloonsUsed = @s balloonsUsedPrev run function balloons:player/update_used_balloons_mob

#advancement
execute as @a[tag=!adv.when_pigs_really_fly] run function balloons:player/advancements/when_pigs_really_fly/check

function balloons:reset_scores