#> alu_util:inventory.changed
# インベントリが変更された時
# @internal

data modify storage tmp Inventory set from entity @s Inventory
function #alu_util:inventory_changed
advancement revoke @s only alu_util:inventory_changed