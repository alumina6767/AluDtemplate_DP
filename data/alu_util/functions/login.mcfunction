#> alu_util:login
# ログイン時
# @internal

## UUIDの一部を保存
execute store result score @s uuid3 run data get entity @s UUID[3]

## ユーザーIDを付与
#>
# @private
    #declare score_holder now

scoreboard players add now alu_util.user_id 1
scoreboard players operation @s alu_util.user_id = now alu_util.user_id

## インベントリのチェックの有無
scoreboard players set @s check_inventory 1

## login
function #alu_util:login
