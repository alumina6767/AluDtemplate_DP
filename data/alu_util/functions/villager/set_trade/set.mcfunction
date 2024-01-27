#> alu_util:villager/set_trade/set
# レシピを登録する
# @within function alu_util:villager/set_trade/as_villager

## テンプレから取引を作る
data modify storage tmp Recipe set from storage tmp TmpRecipe

## 代金
$data modify storage tmp Recipe.buy set from storage tmp Items[{Slot:$(buy_slot)b}]

## 代金B
$data modify storage tmp Recipe.buyB set from storage tmp Items[{Slot:$(buyB_slot)b}]

## 商品
$data modify storage tmp Recipe.sell set from storage tmp Items[{Slot:$(sell_slot)b}]

## 村人へ代入
data modify entity @s Offers.Recipes append from storage tmp Recipe
