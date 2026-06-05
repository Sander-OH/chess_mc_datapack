execute as @s run scoreboard players operation @s board_id = #next_board global
execute as @s run scoreboard players set #counter temp 0

scoreboard players set @s create_board 0
scoreboard players enable @s create_board

execute as @s run function chess:create_board/place_markers
execute as @s run scoreboard players add #next_board global 1