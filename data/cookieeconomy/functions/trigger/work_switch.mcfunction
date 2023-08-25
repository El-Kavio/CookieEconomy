tellraw @s[scores={Work_switch_CE=1}] ["",{"text":""},{"text":"\nDon't want to get notified when your shift ends?","color":"gold"},{"text":"\n[Click here]","color":"red","clickEvent":{"action":"run_command","value":"/trigger Work_switch_CE"},"hoverEvent":{"action":"show_text","contents":"Disables notifications when job awaits!"}}]
scoreboard players set @s[scores={Work_switch_CE=1}] Work_switch_CE 2
tag @s[scores={Work_switch_CE=2}] remove work_switch

tag @s[scores={Work_switch_CE=3}] add work_switch
scoreboard players set @s[scores={Work_switch_CE=4}] Work_switch_CE 0