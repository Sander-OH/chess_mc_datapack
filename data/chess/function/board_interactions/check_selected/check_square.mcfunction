$execute store result score #check_i_pos temp run data get storage chess:temp moves[$(i_check)]
execute store result storage chess:temp to_move_pos int 1 run scoreboard players get #check_i_pos temp

execute if score @s board_position = #check_i_pos temp run return 1
return 0
