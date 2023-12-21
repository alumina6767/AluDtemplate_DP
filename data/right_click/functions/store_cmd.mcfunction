#> right_click:store_cmd
# CustomModelDataを保存する
# @public

#>
# @public
    #declare storage player_data

## ストレージに保存
data modify storage player_data tmp set from entity @s

## mainhandのアイテムのCustomModelDataを保存
execute store result score @s main_hand run data get storage player_data tmp.SelectedItem.tag.CustomModelData 1