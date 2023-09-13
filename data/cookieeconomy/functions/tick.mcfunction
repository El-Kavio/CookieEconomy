execute as @a run function cookieeconomy:main

execute as @a unless entity @s[scores={Richest_CE=0..}] run scoreboard players add @a Richest_CE 0
execute as @a[team=Richest] unless score @s[team=Richest] TimeTracking_CE matches 400.. run scoreboard players add @s[team=Richest] TimeTracking_CE 1
execute if entity @a[team=Richest,scores={TimeTracking_CE=400..}] run function cookieeconomy:hide_leaderboard

scoreboard players enable @a Bet_CE
execute as @a unless entity @s[scores={Bet_CE=0..}] run scoreboard players add @a Bet_CE 0

scoreboard players enable @a Info_CE
execute as @a unless entity @s[scores={Info_CE=0..}] run scoreboard players add @a Info_CE 0

scoreboard players enable @a Balance_CE
execute as @a unless entity @s[scores={Balance_CE=0..}] run scoreboard players add @a Balance_CE 0
execute as @a unless entity @s[scores={Gamble_limit_dummy_CE=0..}] run scoreboard players add @a Gamble_limit_dummy_CE 0

execute store result score @a Daytime_dummy_CE run time query daytime
execute as @a if entity @s[scores={Daytime_dummy_CE=6000..6020}] run scoreboard players set @a Gamble_limit_dummy_CE 0
execute as @a unless entity @s[scores={Gamble_dummy_CE=0..}] run scoreboard players add @a Gamble_dummy_CE 0

execute as @a unless entity @s[scores={Deposit_CE=0..}] run scoreboard players add @a Deposit_CE 0
execute as @a unless entity @s[scores={Deposit_dummy_CE=0..}] run scoreboard players add @a Deposit_dummy_CE 0
execute as @a if entity @s[nbt=!{SelectedItem:{id:"minecraft:cookie"}},scores={Deposit_CE=1..}] run scoreboard players set @s Deposit_CE 0
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{display:{Name:'[{"text":"10K","color":"red"},{"text":"🍪","color":"gold"}]'}}}},scores={Deposit_dummy_CE=0}] run scoreboard players set @s Deposit_dummy_CE 1
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{display:{Name:'[{"text":"100K","color":"red"},{"text":"🍪","color":"gold"}]'}}}},scores={Deposit_dummy_CE=0}] run scoreboard players set @s Deposit_dummy_CE 1
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{display:{Name:'[{"text":"1M","color":"red"},{"text":"🍪","color":"gold"}]'}}}},scores={Deposit_dummy_CE=0}] run scoreboard players set @s Deposit_dummy_CE 1
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{display:{Name:'[{"text":"10M","color":"red"},{"text":"🍪","color":"gold"}]'}}}},scores={Deposit_dummy_CE=0}] run scoreboard players set @s Deposit_dummy_CE 1
execute as @a unless entity @s[scores={Deposit_Value_dummy_CE=0..}] run scoreboard players add @a Deposit_Value_dummy_CE 0

scoreboard players enable @a Balance_switch_CE
execute as @a unless entity @s[scores={Balance_switch_CE=0..}] run scoreboard players add @a Balance_switch_CE 0

scoreboard players enable @a Work_CE
scoreboard players enable @a Work_switch_CE
execute as @a unless entity @s[scores={Work_CE=0..}] run scoreboard players add @a Work_CE 0
execute as @a unless entity @s[scores={Work_dummy_CE=0..}] run scoreboard players add @a Work_dummy_CE 0
execute as @a unless entity @s[scores={Work_dummy2_CE=0..}] run scoreboard players add @a Work_dummy2_CE 0

scoreboard players enable @a Withdraw_CE
execute as @a unless entity @s[scores={Withdraw_CE=0..}] run scoreboard players add @a Withdraw_CE 0
execute as @a unless entity @s[scores={Withdraw_dummy_CE=0..}] run scoreboard players add @a Withdraw_dummy_CE 0

scoreboard players enable @a Documentation_CE
scoreboard players enable @a Wiki_CE
execute as @a unless entity @s[scores={Documentation_CE=0..}] run scoreboard players add @a Documentation_CE 0
execute as @a unless entity @s[scores={Wiki_CE=0..}] run scoreboard players add @a Wiki_CE 0

