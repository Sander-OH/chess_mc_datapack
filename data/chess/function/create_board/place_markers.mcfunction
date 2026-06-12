# Markers used for physical representation of the board

execute if score #counter temp matches 63 run return run say Board complete

# Position between 0-63 wrapped between 1-8 in #pos_modulo
scoreboard players operation #pos_modulo temp = #counter temp
scoreboard players add #pos_modulo temp 1
scoreboard players operation #pos_modulo temp %= #eight const

# Find previously placed square, check position on board, and summon new marker at next square
execute as @e[tag=board_square] at @s if score @s board_position = #counter temp if score #pos_modulo temp matches 0 if score @s board_id = #next_board global run summon marker ~1 ~ ~-7 {Tags:["board_square","new_square"]}  
execute as @e[tag=board_square] at @s if score @s board_position = #counter temp unless score #pos_modulo temp matches 0 if score @s board_id = #next_board global run summon marker ~0 ~ ~1 {Tags:["board_square","new_square"]}
execute at @s if score #counter temp matches -1 anchored eyes positioned ^ ^ ^5 align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["board_square","new_square"]}

# Intialize values for new square
scoreboard players add #counter temp 1
execute as @e[type=marker,tag=new_square,limit=1] run function chess:create_board/_init_square


# Loop
function chess:create_board/place_markers
# tellraw @a ["", "Score is: ", {"score":{"name":"@p","objective":"SCORE_NAME"}}]