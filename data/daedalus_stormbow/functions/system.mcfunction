#scoreboard basics
scoreboard objectives add cooldown dummy
scoreboard players remove @e[tag=cooldown] cooldown 1
scoreboard players set @e[tag=cooldown,scores={cooldown=..-1}] cooldown 0
#Deadalus Stormbow
execute at @a[nbt={SelectedItem:{tag:{Tags:["stormbow"]}}}] run data merge entity @e[type=arrow,tag=!stormbow,tag=!stormbowarrow,distance=..2,sort=nearest,limit=1,nbt={inGround:0b}] {Tags:["stormbow","cooldown"],NoGravity:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}],pickup:0,damage:0d}
execute at @a[nbt={SelectedItem:{tag:{Tags:["stormbow"]}}}] run scoreboard players set @e[type=minecraft:arrow,distance=..2,limit=1,sort=nearest,tag=stormbow,nbt={inGround:0b}] cooldown 100
execute at @e[type=minecraft:arrow,tag=stormbow,scores={cooldown=98}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stormbowland","cooldown"],Invulnerable:1b,Marker:1b,Invisible:1,Small:1}
execute at @e[tag=stormbow,type=minecraft:arrow] run tp @e[sort=nearest,limit=2,tag=stormbowland,distance=..3] @e[type=minecraft:arrow,tag=stormbow,limit=1,sort=nearest,distance=..3]
execute as @e[type=minecraft:armor_stand,tag=stormbowland,scores={cooldown=16}] at @s run tp @s @e[type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:arrow,limit=1,distance=..4,nbt=!{SelectedItem:{tag:{Tags:["stormbow"]}}}]
execute as @e[type=minecraft:armor_stand,tag=stormbowland,scores={cooldown=..0}] at @s unless entity @e[type=arrow,tag=stormbow,distance=..2] run scoreboard players set @s cooldown 20
execute at @e[type=arrow,tag=stormbow,nbt={inGround:1b}] run scoreboard players set @e[tag=stormbowland,type=minecraft:armor_stand,limit=1,sort=nearest,distance=..2] cooldown 20
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=20}] run kill @e[type=minecraft:arrow,distance=..2,limit=1,sort=nearest,tag=stormbow,nbt={inGround:1b}]
kill @e[tag=stormbow,scores={cooldown=1}]
execute as @e[tag=stormbowland,scores={cooldown=1}] at @s unless entity @e[type=arrow,tag=stormbow,distance=..2] run kill @s
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=15}] run summon arrow ~-0.4 ~25 ~-0.4 {Motion:[0.1,-2.0,0.1],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=10}] run summon arrow ~0.4 ~25 ~0.4 {Motion:[-0.1,-2.0,-0.1],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=5}] run summon arrow ~-0.4 ~25 ~0.4 {Motion:[0.1,-2.0,-0.1],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=20}] run summon arrow ~0.4 ~25 ~-0.4 {Motion:[-0.1,-2.0,0.1],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=18}] run summon arrow ~ ~25 ~ {Motion:[0.1,-2.0,0.0],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=13}] run summon arrow ~ ~25 ~ {Motion:[-0.1,-2.0,0.0],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=7}] run summon arrow ~ ~25 ~ {Motion:[0.0,-2.0,0.1],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=3}] run summon arrow ~ ~25 ~ {Motion:[0.0,-2.0,-0.1],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=16}] at @e[type=!item,type=!minecraft:experience_orb,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!arrow,type=!minecraft:painting,distance=..3,limit=2,sort=random] run summon arrow ~ ~25 ~ {Motion:[0.0,-2.0,0.0],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=11}] at @e[type=!item,type=!minecraft:experience_orb,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!arrow,type=!minecraft:painting,distance=..3,limit=2,sort=random] run summon arrow ~ ~25 ~ {Motion:[0.0,-2.0,0.0],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=6}] at @e[type=!item,type=!minecraft:experience_orb,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!arrow,type=!minecraft:painting,distance=..3,limit=2,sort=random] run summon arrow ~ ~25 ~ {Motion:[0.0,-2.0,0.0],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
execute at @e[tag=stormbowland,type=minecraft:armor_stand,scores={cooldown=16}] run summon arrow ~ ~25 ~ {Motion:[0.0,-2.0,0.0],pickup:0b,damage:10d,life:1120,Tags:["stormbowarrow"]}
