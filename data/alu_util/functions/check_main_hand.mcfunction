#> alu_util:check_main_hand
# main hand のCMDを保存
# @internal

## scoreにCMDを保存
execute store result score @s main_hand run data get entity @s SelectedItem.tag.CustomModelData
