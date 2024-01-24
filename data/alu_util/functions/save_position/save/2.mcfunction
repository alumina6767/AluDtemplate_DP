#> alu_util:save_position/save/2
# 
# @within function alu_util:save_position/save/

## dimension
$data modify storage alu_util: player[$(user_id)].dimension set from entity @s Dimension

## pos
$data modify storage alu_util: player[$(user_id)].pos_x set from entity @s Pos[0]
$data modify storage alu_util: player[$(user_id)].pos_y set from entity @s Pos[1]
$data modify storage alu_util: player[$(user_id)].pos_z set from entity @s Pos[2]

## rotation
$data modify storage alu_util: player[$(user_id)].rotation_x set from entity @s Rotation[0]
$data modify storage alu_util: player[$(user_id)].rotation_y set from entity @s Rotation[1]

