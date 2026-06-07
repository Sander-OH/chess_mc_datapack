$data modify storage chess:render board_id set value $(render_id)
scoreboard players set #render_index temp 0
scoreboard players set #render_position temp 0

function chess:piece_render/step