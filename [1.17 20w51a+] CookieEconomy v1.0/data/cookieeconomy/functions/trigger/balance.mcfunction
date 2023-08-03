title @s[scores={Balance_CE=1..2}] actionbar ["",{"text":"Balance: ","color":"gold"},{"score":{"name":"@s","objective":"Richest_CE"},"color":"red"},{"text":"\ud83c\udf6a","color":"gold"}]

execute if score @s[scores={Balance_switch_CE=0},tag=!balance_switch] Balance_CE matches 1 run tellraw @s ["",{"text":"Repeat the command to hide your balance.","color":"gold"},{"text":"\n"},{"text":"[Don't show this message again]","color":"red","clickEvent":{"action":"run_command","value":"/trigger Balance_switch_CE"},"hoverEvent":{"action":"show_text","contents":"Hides the message for the next times!"}}]
scoreboard players set @s[scores={Balance_CE=1}] Balance_CE 2
execute if entity @s[scores={Balance_CE=3..4}] run scoreboard players set @s Balance_CE 0