execute if entity @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{display:{Name:'[{"text":"10K","color":"red"},{"text":"🍪","color":"gold"}]'}}}}] store result score @s Deposit_Value_dummy_CE run data get entity @s SelectedItem.Count 10000
execute if entity @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{display:{Name:'[{"text":"100K","color":"red"},{"text":"🍪","color":"gold"}]'}}}}] store result score @s Deposit_Value_dummy_CE run data get entity @s SelectedItem.Count 100000
execute if entity @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{display:{Name:'[{"text":"1M","color":"red"},{"text":"🍪","color":"gold"}]'}}}}] store result score @s Deposit_Value_dummy_CE run data get entity @s SelectedItem.Count 1000000
execute if entity @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{display:{Name:'[{"text":"10M","color":"red"},{"text":"🍪","color":"gold"}]'}}}}] store result score @s Deposit_Value_dummy_CE run data get entity @s SelectedItem.Count 10000000

scoreboard players operation @s Richest_CE += @s Deposit_Value_dummy_CE

title @s times 20 60 20
title @s title {"text":""}
execute as @s run title @s subtitle ["",{"text":"Bank account:","color":"gold"},{"text":" +","color":"gold"},{"score":{"name":"@s[scores={Deposit_Value_dummy_CE=1..}]","objective":"Deposit_Value_dummy_CE"},"color":"red"},{"text":"\ud83c\udf6a","color":"gold"}]

scoreboard players set @s Deposit_Value_dummy_CE 0

execute if score @s Deposit_CE matches 1.. run scoreboard players set @s Deposit_CE 0

execute at @s as @s run playsound minecraft:entity.wolf.shake master @s ~ ~ ~ 0.4 2

item replace entity @s weapon.mainhand with air