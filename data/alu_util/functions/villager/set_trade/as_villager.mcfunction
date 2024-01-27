#> alu_util:villager/set_trade/as_villager
# 
# @within function alu_util:villager/set_trade/

## 村人の取引を初期化
data modify entity @s Offers set value {Recipes:[]}

## シュルカーの情報をストレージに格納
data remove storage tmp Items
data modify storage tmp Items set from entity @p SelectedItem.tag.BlockEntityTag.Items

## テンプレートの取引
data modify storage tmp TmpRecipe set value {maxUses:2147483647,xp:0}

## 取引の追加
execute if data storage tmp Items[{Slot: 0b}] run function alu_util:villager/set_trade/set {buy_slot:0,buyB_slot:9, sell_slot:18}
execute if data storage tmp Items[{Slot: 1b}] run function alu_util:villager/set_trade/set {buy_slot:1,buyB_slot:10,sell_slot:19}
execute if data storage tmp Items[{Slot: 2b}] run function alu_util:villager/set_trade/set {buy_slot:2,buyB_slot:11,sell_slot:20}
execute if data storage tmp Items[{Slot: 3b}] run function alu_util:villager/set_trade/set {buy_slot:3,buyB_slot:12,sell_slot:21}
execute if data storage tmp Items[{Slot: 4b}] run function alu_util:villager/set_trade/set {buy_slot:4,buyB_slot:13,sell_slot:22}
execute if data storage tmp Items[{Slot: 5b}] run function alu_util:villager/set_trade/set {buy_slot:5,buyB_slot:14,sell_slot:23}
execute if data storage tmp Items[{Slot: 6b}] run function alu_util:villager/set_trade/set {buy_slot:6,buyB_slot:15,sell_slot:24}
execute if data storage tmp Items[{Slot: 7b}] run function alu_util:villager/set_trade/set {buy_slot:7,buyB_slot:16,sell_slot:25}
execute if data storage tmp Items[{Slot: 8b}] run function alu_util:villager/set_trade/set {buy_slot:8,buyB_slot:17,sell_slot:26}
