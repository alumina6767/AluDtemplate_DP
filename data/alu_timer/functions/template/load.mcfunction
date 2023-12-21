#> alu_timer:template/load
# load
# @internal

#>
# @public
    #declare objective timer.template

## インストール
scoreboard objectives add timer.template dummy
execute unless score set timer.template matches -2147483648..2147483647 run function alu_timer:template/install
