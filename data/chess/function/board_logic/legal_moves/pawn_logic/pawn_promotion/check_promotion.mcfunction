$scoreboard players set #cur_pos temp $(cur_position)

# Calculate rank
scoreboard players operation #pawn_pos board_y = #cur_pos temp
scoreboard players operation #pawn_pos board_y /= #eight const

scoreboard players operation #pawn_pos board_x = #cur_pos temp
scoreboard players operation #pawn_pos board_x %= #eight const



# White pawn reached black edge
execute if score #pawn_pos board_y matches 7 run function chess:board_logic/legal_moves/pawn_logic/pawn_promotion/promotion_white with storage chess:temp

# Black pawn reached white edge
execute if score #pawn_pos board_y matches 0 run function chess:board_logic/legal_moves/pawn_logic/pawn_promotion/promotion_black with storage chess:temp