execute if score #counter temp matches 64 run return run say Board complete

# tellraw @a ["", "Score is: ", {"score":{"name":"@p","objective":"SCORE_NAME"}}]

scoreboard players operation #pos_modulo temp = #counter temp
scoreboard players operation #pos_modulo temp %= #eight const

execute as @e[tag=board_square] at @s if score @s board_position = #counter temp if score #pos_modulo temp matches 0 if score @s board_id = #next_board global run summon marker ~-7 ~ ~1 {Tags:["board_square","new_square"]}  
execute as @e[tag=board_square] at @s if score @s board_position = #counter temp unless score #pos_modulo temp matches 0 if score @s board_id = #next_board global run summon marker ~1 ~ ~ {Tags:["board_square","new_square"]}
execute as @s at @s if score #counter temp matches 0 anchored eyes positioned ^ ^ ^5 align xyz run summon marker ~ ~ ~ {Tags:["board_square","new_square"]}

scoreboard players add #counter temp 1
execute as @e[type=marker,tag=new_square,limit=1] run function chess:create_board/init_square

execute as @s run function chess:create_board/place_markers