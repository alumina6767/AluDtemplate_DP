#> dtpl:mob_catch/interact_entity
# エンティティを右クリックしたとき
# @within advancement dtpl:interact_entity

## 右手の情報を保存
function right_click:store_cmd

## MOB取り網
function dtpl:mob_catch/if

## 進捗リセット
advancement revoke @s only dtpl:interact_entity
