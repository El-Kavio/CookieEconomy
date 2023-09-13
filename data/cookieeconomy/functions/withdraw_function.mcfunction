title @s times 20 20 20

execute at @s if score @s Richest_CE matches 10000.. run playsound minecraft:entity.iron_golem.attack master @s ~ ~ ~ 1

execute if score @s Withdraw_dummy_CE matches 1 if score @s Richest_CE matches 10000.. run give @s minecraft:cookie{display:{Name:'[{"text":"10K","color":"red"},{"text":"🍪","color":"gold"}]'}} 1
execute if score @s Withdraw_dummy_CE matches 1 unless score @s Richest_CE matches 10000.. run title @s title {"text":"⚠ Insufficient funds! ⚠","color":"red"}
execute if score @s Withdraw_dummy_CE matches 1 if score @s Richest_CE matches 10000.. run scoreboard players remove @s Richest_CE 10000

execute if score @s Withdraw_dummy_CE matches 2 if score @s Richest_CE matches 100000.. run give @s minecraft:cookie{display:{Name:'[{"text":"100K","color":"red"},{"text":"🍪","color":"gold"}]'}} 1
execute if score @s Withdraw_dummy_CE matches 2 unless score @s Richest_CE matches 100000.. run title @s title {"text":"⚠ Insufficient funds! ⚠","color":"red"}
execute if score @s Withdraw_dummy_CE matches 2 if score @s Richest_CE matches 100000.. run scoreboard players remove @s Richest_CE 100000

execute if score @s Withdraw_dummy_CE matches 3 if score @s Richest_CE matches 1000000.. run give @s minecraft:cookie{display:{Name:'[{"text":"1M","color":"red"},{"text":"🍪","color":"gold"}]'}} 1
execute if score @s Withdraw_dummy_CE matches 3 unless score @s Richest_CE matches 1000000.. run title @s title {"text":"⚠ Insufficient funds! ⚠","color":"red"}
execute if score @s Withdraw_dummy_CE matches 3 if score @s Richest_CE matches 1000000.. run scoreboard players remove @s Richest_CE 1000000

execute if score @s Withdraw_dummy_CE matches 4 if score @s Richest_CE matches 10000000.. run give @s minecraft:cookie{display:{Name:'[{"text":"10M","color":"red"},{"text":"🍪","color":"gold"}]'}} 1
execute if score @s Withdraw_dummy_CE matches 4 unless score @s Richest_CE matches 10000000.. run title @s title {"text":"⚠ Insufficient funds! ⚠","color":"red"}
execute if score @s Withdraw_dummy_CE matches 4 if score @s Richest_CE matches 10000000.. run scoreboard players remove @s Richest_CE 10000000

scoreboard players set @s Withdraw_dummy_CE 0