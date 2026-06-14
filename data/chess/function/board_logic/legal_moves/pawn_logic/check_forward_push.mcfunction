$scoreboard players set #cur_pos temp $(cur_position)

# Calculate rank
scoreboard players operation #pawn_pos board_y = #cur_pos temp
scoreboard players operation #pawn_pos board_y /= #eight const


# Check square infront of pawn
scoreboard players operation #pawn_dir temp = #eight const
execute if score #cur_color temp matches 2 run scoreboard players operation #pawn_dir temp *= #neg_one const 

scoreboard players operation #cur_pos temp += #pawn_dir temp
execute store result storage chess:temp cur_position int 1 run scoreboard players get #cur_pos temp


execute store result score #board_check temp run function chess:board_logic/legal_moves/_board_check with storage chess:temp

# Exit if square infront is occupied
execute unless score #board_check temp matches 0 run return 0
data modify storage chess:temp moves append from storage chess:temp cur_position



scoreboard players set #allow_double_push temp 0
# Exit if pushed past initial rank
execute if score #pawn_pos board_y matches 1 run scoreboard players set #allow_double_push temp 1
execute if score #pawn_pos board_y matches 6 run scoreboard players set #allow_double_push temp 1

execute if score #allow_double_push temp matches 0 run return run say hi


# Check double push from initial rank
scoreboard players operation #cur_pos temp += #pawn_dir temp
execute store result storage chess:temp cur_position int 1 run scoreboard players get #cur_pos temp

execute store result score #board_check temp run function chess:board_logic/legal_moves/_board_check with storage chess:temp
execute unless score #board_check temp matches 0 run return 0

data modify storage chess:temp moves append from storage chess:temp cur_position