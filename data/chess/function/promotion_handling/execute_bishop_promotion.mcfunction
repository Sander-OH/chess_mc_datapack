scoreboard players set @s promote_bishop 0
scoreboard players enable @s promote_bishop
say BISHOP

scoreboard players set #player_promoted temp 1
$data modify storage chess:boards boards.$(board_id).waiting_for_promotion set value 0
$execute store result score #cur_color temp run data get storage chess:boards boards.$(board_id).color 1
$execute if score #cur_color temp matches 1 run data modify storage chess:boards boards.$(board_id).squares[$(to_move_pos)] set value 3
$execute if score #cur_color temp matches 2 run data modify storage chess:boards boards.$(board_id).squares[$(to_move_pos)] set value 9

$function chess:piece_render/render_square {board_id: $(board_id), position: $(to_move_pos)}


function chess:board_interactions/finish_move with storage chess:temp