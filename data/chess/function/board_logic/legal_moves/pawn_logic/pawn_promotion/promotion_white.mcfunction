# White queen, knight, rook, and bishop
give @p stick[minecraft:custom_model_data={floats:[5]}]
give @p stick[minecraft:custom_model_data={floats:[2]}]
give @p stick[minecraft:custom_model_data={floats:[4]}]
give @p stick[minecraft:custom_model_data={floats:[3]}]

say promotion white
scoreboard players set #player_promoted temp 0
function chess:board_logic/legal_moves/pawn_logic/pawn_promotion/wait_promotion