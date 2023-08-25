tellraw @s[scores={Balance_switch_CE=1}] ["",{"text":"If you ever change your mind do","color":"red"},{"text":" /trigger Balance_switch_CE","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Balance_switch_CE"},"hoverEvent":{"action":"show_text","contents":"Reverts back changes!"}}]

scoreboard players set @s[scores={Balance_switch_CE=1}] Balance_switch_CE 2
execute if entity @s[scores={Balance_switch_CE=3..}] run tag @s remove balance_switch
execute if entity @s[scores={Balance_switch_CE=3..}] run scoreboard players set @s Balance_switch_CE 0