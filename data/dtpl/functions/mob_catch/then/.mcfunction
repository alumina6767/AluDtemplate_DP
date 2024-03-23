#> dtpl:mob_catch/then/
# アイテム使用
# @within function dtpl:mob_catch/if

## 網を振る音
playsound item.armor.equip_leather master @a ~ ~ ~ 0.8 1.2 0.0

## 近くにいるエンティティから見ているエンティティを特定する
tag @s add dtpl.mob_catch.user
    execute as @e[type=#alu_util:all_mob,distance=0.01..5,sort=nearest,tag=!dtpl.mob_catch.ignore] run function dtpl:mob_catch/then/search_looking_at
tag @s remove dtpl.mob_catch.user
