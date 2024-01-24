#> alu_util:convert_to_block_display/
# 額縁を張ったブロックを手に持ったブロックのディスプレイにする
# @user

## 張った額縁のブロックを変換
execute as @e[type=item_frame,tag=alu_util.convert_to_block_display] at @s positioned ^ ^ ^-0.5 align xyz run function alu_util:convert_to_block_display/convert with entity @p SelectedItem
