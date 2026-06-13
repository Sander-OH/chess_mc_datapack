$execute at @s run summon item_display ~ ~1 ~ {Rotation:[$(rotation)f, 0f],Tags:["board_visuals","new_visual"],item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":{floats:[$(piece)]}}}}
execute store result score @e[tag=new_visual] board_id run scoreboard players get @s board_id
execute store result score @e[tag=new_visual] board_position run scoreboard players get @s board_position

tag @e[tag=new_visual] remove new_visual 