kill @e[tag=selected_moves]
data modify storage chess:temp moves set value []
data modify storage chess:temp sel_position set value -1

execute store result storage chess:temp sel_position int 1 run scoreboard players get @s board_position
execute store result storage chess:temp cur_position int 1 run scoreboard players get @s board_position
execute store result storage chess:temp board_id int 1 run scoreboard players get @s board_id

execute store result score #interaction_result temp run function chess:board_logic/legal_moves/_board_check with storage chess:temp
execute if score #interaction_result temp < #null const store result storage chess:temp selected_piece int 1 run scoreboard players get #cur_piece temp
execute if score #interaction_result temp < #null const run function chess:board_interactions/select_piece with storage chess:temp