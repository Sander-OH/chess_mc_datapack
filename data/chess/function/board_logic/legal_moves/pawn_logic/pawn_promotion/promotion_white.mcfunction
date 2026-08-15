# White queen, knight, rook, and bishop
give @p stick[minecraft:custom_model_data={floats:[5]}]
give @p stick[minecraft:custom_model_data={floats:[2]}]
give @p stick[minecraft:custom_model_data={floats:[4]}]
give @p stick[minecraft:custom_model_data={floats:[3]}]

say promotion white
$data modify storage chess:boards boards.$(board_id).waiting_for_promotion set value 1
scoreboard players set #player_promoted temp 0