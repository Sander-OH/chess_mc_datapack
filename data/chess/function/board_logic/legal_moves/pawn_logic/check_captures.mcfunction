$scoreboard players set #cur_pos temp $(cur_position)

# Calculate file
scoreboard players operation #pawn_pos board_x = #cur_pos temp
scoreboard players operation #pawn_pos board_x %= #eight const

scoreboard players operation #cur_pos temp += #pawn_dir temp

# Check left side captures (file A)
execute if score #pawn_pos board_x > #null const run scoreboard players operation #cur_pos temp -= #one const
execute if score #pawn_pos board_x > #null const run execute store result storage chess:temp cur_position int 1 run scoreboard players get #cur_pos temp
execute if score #pawn_pos board_x > #null const run execute store result score #board_check temp run function chess:board_logic/legal_moves/_board_check with storage chess:temp

# Only allow capturing occupied squares
execute if score #pawn_pos board_x > #null const run execute if score #board_check temp matches 1 run data modify storage chess:temp moves append from storage chess:temp cur_position

# Back to base position to check other side
execute if score #pawn_pos board_x > #null const run scoreboard players operation #cur_pos temp += #one const


# Check right side captures (file B)
execute if score #pawn_pos board_x < #seven const run scoreboard players operation #cur_pos temp += #one const
execute if score #pawn_pos board_x < #seven const run execute store result storage chess:temp cur_position int 1 run scoreboard players get #cur_pos temp

execute if score #pawn_pos board_x < #seven const run execute store result score #board_check temp run function chess:board_logic/legal_moves/_board_check with storage chess:temp

# Only allow capturing occupied squares
execute if score #pawn_pos board_x < #seven const run execute if score #board_check temp matches 1 run data modify storage chess:temp moves append from storage chess:temp cur_position
