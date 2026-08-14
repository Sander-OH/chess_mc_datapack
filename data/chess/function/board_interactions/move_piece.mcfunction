kill @e[tag=selected_moves]
$data modify storage chess:boards boards.$(board_id).squares[$(sel_position)] set value 0
$data modify storage chess:boards boards.$(board_id).squares[$(to_move_pos)] set value $(selected_piece)


$kill @e[scores={board_position=$(sel_position)},tag=board_visuals]
$kill @e[scores={board_position=$(to_move_pos)},tag=board_visuals]
$function chess:piece_render/render_square {board_id: $(board_id), position: $(to_move_pos)}

# Check if the piece moved is a pawned, and if it has reached the end of the board
$execute store result storage chess:temp cur_color int 1 run data get storage chess:boards boards.$(board_id).color
$data modify storage chess:temp cur_position set value $(to_move_pos)

$scoreboard players set #sel_piece temp $(selected_piece)
execute if score #sel_piece temp matches 1 run function chess:board_logic/legal_moves/pawn_logic/pawn_promotion/check_promotion with storage chess:temp
execute if score #sel_piece temp matches 7 run function chess:board_logic/legal_moves/pawn_logic/pawn_promotion/check_promotion with storage chess:temp


execute unless score #player_promoted temp matches 0 run function chess:board_interactions/finish_move with storage chess:temp