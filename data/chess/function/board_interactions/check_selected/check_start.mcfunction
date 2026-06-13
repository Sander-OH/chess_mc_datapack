execute store result score #len_check temp run data get storage chess:temp moves
scoreboard players set #i_check temp 0
execute as @s run function chess:board_interactions/check_selected/check_step