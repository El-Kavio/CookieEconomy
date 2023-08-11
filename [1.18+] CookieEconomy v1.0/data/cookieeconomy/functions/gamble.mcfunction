title @s times 20 20 20

execute if score @s[scores={Gamble_limit_dummy_CE=..14}] Richest_CE >= @s Bet_CE store result score @s Gamble_dummy_CE run loot spawn ~ -2 ~ loot cookieeconomy:gamble_roll
execute if score @s[scores={Gamble_limit_dummy_CE=..14}] Richest_CE <= @s Bet_CE run title @s title {"text":"⚠ Insufficient funds! ⚠","color":"red"}
execute if score @s[scores={Gamble_limit_dummy_CE=..14}] Richest_CE matches 0 run title @s subtitle {"text":"Go to work!","color":"gold"}

title @s[scores={Gamble_dummy_CE=1}] title {"text":"You won!","color":"dark_green"}
title @s[scores={Gamble_dummy_CE=2}] title {"text":"It's a draw!","color":"gold"}
title @s[scores={Gamble_dummy_CE=3}] title {"text":"You lost!","color":"red"}

scoreboard players operation @s[scores={Gamble_dummy_CE=1}] Richest_CE += @s[scores={Gamble_dummy_CE=1}] Bet_CE
scoreboard players operation @s[scores={Gamble_dummy_CE=3}] Richest_CE -= @s[scores={Gamble_dummy_CE=3}] Bet_CE
scoreboard players set @s Bet_CE 0
scoreboard players set @s Gamble_dummy_CE 0
title @s[scores={Gamble_limit_dummy_CE=15..}] times 20 40 20
title @s[scores={Gamble_limit_dummy_CE=15..}] title {"text":"⚠ Limit reached! ⚠","color":"red"}
title @s[scores={Gamble_limit_dummy_CE=15..}] subtitle {"text":"Wait until next noon!","color":"gold"}
scoreboard players add @s Gamble_limit_dummy_CE 1
