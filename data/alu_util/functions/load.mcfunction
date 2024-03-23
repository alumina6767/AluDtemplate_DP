#> alu_util:load
# load
# @public

#> 確率でtrueになるpredicate
# @public
    #declare predicate alu_util:chance/0.1 10%の確率
    #declare predicate alu_util:chance/0.2 20%の確率
    #declare predicate alu_util:chance/0.3 30%の確率
    #declare predicate alu_util:chance/0.4 40%の確率
    #declare predicate alu_util:chance/0.5 50%の確率
    #declare predicate alu_util:chance/0.6 60%の確率
    #declare predicate alu_util:chance/0.7 70%の確率
    #declare predicate alu_util:chance/0.8 80%の確率
    #declare predicate alu_util:chance/0.9 90%の確率

#>
# 雪玉に乗っているか
# @public
#declare predicate alu_util:is_on_snowball

#> functionタグ
# @public
    #declare tag/function alu_util:inventory_changed インベントリが変更された時に実行される
    #declare tag/function alu_util:login プレイヤーごとに最初のログイン時一度だけ実行される
    #declare tag/function alu_util:sneaking スニーク中に実行される

#>
# @public
    #declare score_holder _
    #declare entity 00000006-0000-0007-0000-000000000007 tmp
    #declare tag new
    #declare score_holder -1
    #declare score_holder 2
    #declare score_holder 5
    #declare score_holder 10
    #declare score_holder 100
    #declare storage tmp
    #declare objective uuid3
    #declare objective check_inventory
    #declare objective const
    #declare objective _
    #declare objective tmp
    #declare objective mx
    #declare objective my
    #declare objective mz
    #declare score_holder x
    #declare score_holder y
    #declare score_holder z
    #declare objective yaw
    #declare objective pitch
    #declare score_holder arg1 呼び出し時の引数用スコア
    #declare score_holder is_check_sneak スニーク時の処理を行うか

## 計算用スコア
scoreboard objectives add _ dummy
scoreboard players reset * _
scoreboard objectives add tmp dummy

scoreboard objectives add const dummy
scoreboard players set -1 const -1
scoreboard players set 2 const 2
scoreboard players set 5 const 5
scoreboard players set 10 const 10
scoreboard players set 100 const 100

## motion用スコア
scoreboard objectives add mx dummy
scoreboard objectives add my dummy
scoreboard objectives add mz dummy

## rotation用スコア
scoreboard objectives add yaw dummy
scoreboard objectives add pitch dummy

## uuid
scoreboard objectives add uuid3 dummy

## ユーザー個別のID
scoreboard objectives add alu_util.user_id dummy

## インベントリチェック用スコア
scoreboard objectives add check_inventory dummy

## Markerの表示ON/OFF
    scoreboard objectives add alu_util.is_visible_marker dummy

## 機能制御用スコア
    scoreboard objectives add alu_util dummy
    execute unless score is_check_sneak alu_util matches -2147483648..2147483647 run scoreboard players set is_check_sneak alu_util 0

#> 乱数生成function
# 使い方 execute store score _ _ run function THIS
# @public
    #declare function alu_util:rand

#> 乱数生成用スコアホルダー
# @internal
    #declare score_holder Multiplier
    #declare score_holder Base
    #declare score_holder Current
    #declare score_holder Carry

### オブジェクト
scoreboard objectives add Random dummy

### 乗数設定
scoreboard players set Multiplier Random 31743

### 除数設定
scoreboard players set Base Random 65536

### 現在値設定
summon marker ~ ~ ~ {Tags:["new"]}
execute store result score Current Random run data get entity @e[type=marker,tag=new,limit=1] UUID[3]
scoreboard players operation Current Random %= Base Random
execute if score Current Random matches 0 run scoreboard players add Current Random 1
kill @e[type=marker,tag=new]

### キャリー設定
scoreboard players set Carry Random 6767


## ランキング表示
scoreboard objectives add alu_util.ranking.input dummy
scoreboard objectives add alu_util.ranking.output dummy

#> ストレージ
# @public
    #declare storage alu_util: 汎用ストレージ
    #declare storage alu_util:player プレイヤー個人個人のデータ
    #declare storage alu_util:tmp 仮データストレージ
    execute unless data storage alu_util: player run data modify storage alu_util: player set value []

## 全エンティティのリスト
data modify storage alu_util: all_entity_list set value ["allay","armadillo","armor_stand","axolotl","bat","bee","blaze","breeze","camel","cat","cave_spider","chicken","cod","cow","creeper","dolphin","donkey","drowned","elder_guardian","ender_dragon","enderman","endermite","evoker","fox","frog","ghast","giant","glow_squid","goat","guardian","hoglin","horse","husk","illusioner","iron_golem","llama","magma_cube","mooshroom","mule","ocelot","panda","parrot","phantom","pig","piglin","piglin_brute","pillager","player","polar_bear","pufferfish","rabbit","ravager","salmon","sheep","shulker","silverfish","sniffer","skeleton","skeleton_horse","slime","snow_golem","spider","squid","stray","strider","tadpole","trader_llama","tropical_fish","turtle","vex","villager","vindicator","wandering_trader","warden","witch","wither","wither_skeleton","wolf","zoglin","zombie","zombie_horse","zombie_villager","zombified_piglin","area_effect_cloud","end_crystal","evoker_fangs","fishing_bobber","glow_item_frame","item_frame","leash_knot","lightning_bolt","marker","interaction","block_display","item_display","text_display","painting","arrow","dragon_fireball","egg","ender_pearl","experience_bottle","eye_of_ender","fireball","firework_rocket","llama_spit","potion","shulker_bullet","small_fireball","snowball","spectral_arrow","trident","wither_skull","boat","chest_boat","chest_minecart","command_block_minecart","furnace_minecart","hopper_minecart","minecart","spawner_minecart","tnt_minecart","falling_block","tnt","experience_orb","item"]
