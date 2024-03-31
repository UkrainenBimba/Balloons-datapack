execute store result score *isThereEndPortal math run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 command_block{Command:"check end portal"} replace end_portal
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 end_portal replace command_block{Command:"check end portal"}
execute if score *isThereEndPortal math matches 1.. run function balloons:balloon/kill
scoreboard players reset *isThereEndPortal math