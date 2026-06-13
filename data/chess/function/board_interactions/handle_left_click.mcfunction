execute store result storage chess:temp check_position int 1 run scoreboard players get @s board_position
execute store result storage chess:temp board_id int 1 run scoreboard players get @s board_id

execute as @s run function chess:board_interactions/check_selected/check_start