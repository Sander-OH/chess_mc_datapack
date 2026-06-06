execute if score #render_index temp matches 64.. run return 1

execute store result storage chess:render position int 1 run scoreboard players get #render_position temp
execute store result storage chess:render index int 1 run scoreboard players get #render_index temp

function chess:piece_render/render_square with storage chess:render

scoreboard players add #render_index temp 1
scoreboard players add #render_position temp 1

function chess:piece_render/step