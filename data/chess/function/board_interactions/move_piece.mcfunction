kill @e[tag=selected_moves]
$data modify storage chess:boards boards.$(board_id).squares[$(sel_position)] set value 0
$data modify storage chess:boards boards.$(board_id).squares[$(to_move_pos)] set value $(selected_piece)


$kill @e[scores={board_position=$(sel_position)},tag=board_visuals]
$kill @e[scores={board_position=$(to_move_pos)},tag=board_visuals]
$function chess:piece_render/render_square {board_id: $(board_id), position: $(to_move_pos)}


# increment number of turns
$execute store result score #cur_turn temp run data get storage chess:boards boards.$(board_id).turns
scoreboard players operation #cur_turn temp += #one const
$execute store result storage chess:boards boards.$(board_id).turns int 1 run scoreboard players get #cur_turn temp

# Flip to opponents turn
$execute store result score #cur_color temp run data get storage chess:boards boards.$(board_id).color
$execute if score #cur_color temp matches 1 run data modify storage chess:boards boards.$(board_id).color set value 2
$execute if score #cur_color temp matches 2 run data modify storage chess:boards boards.$(board_id).color set value 1

# Temporary as codebase is refactored
execute store result score #cur_color temp run data get storage chess:temp cur_color
execute if score #cur_color temp matches 1 run data modify storage chess:temp cur_color set value 2
execute if score #cur_color temp matches 2 run data modify storage chess:temp cur_color set value 1