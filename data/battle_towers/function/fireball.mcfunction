execute positioned as @s run summon minecraft:fireball ^ ^1 ^2 {Tags:["battle_towers_fireball"]}

execute store result score #casterX battle_towers_pos run data get entity @s Pos[0] 1000
execute store result score #casterY battle_towers_pos run data get entity @s Pos[1] 1000
execute store result score #casterZ battle_towers_pos run data get entity @s Pos[2] 1000

scoreboard players add #casterY battle_towers_pos 1200

# Adding 1.2 blocks 'cause wither skeleton

execute store result score #fireballX battle_towers_pos as @e[type=minecraft:fireball, tag=battle_towers_fireball, limit=1] run data get entity @s Pos[0] 1000
execute store result score #fireballY battle_towers_pos as @e[type=minecraft:fireball, tag=battle_towers_fireball, limit=1] run data get entity @s Pos[1] 1000
execute store result score #fireballZ battle_towers_pos as @e[type=minecraft:fireball, tag=battle_towers_fireball, limit=1] run data get entity @s Pos[2] 1000

scoreboard players operation #fireballX battle_towers_pos -= #casterX battle_towers_pos
scoreboard players operation #fireballY battle_towers_pos -= #casterY battle_towers_pos
scoreboard players operation #fireballZ battle_towers_pos -= #casterZ battle_towers_pos

execute store result entity @e[type=minecraft:fireball, tag=battle_towers_fireball, limit=1] Motion[0] double 0.0001 run scoreboard players get #fireballX battle_towers_pos
execute store result entity @e[type=minecraft:fireball, tag=battle_towers_fireball, limit=1] Motion[1] double 0.0001 run scoreboard players get #fireballY battle_towers_pos
execute store result entity @e[type=minecraft:fireball, tag=battle_towers_fireball, limit=1] Motion[2] double 0.0001 run scoreboard players get #fireballZ battle_towers_pos

tag @e[tag=battle_towers_fireball] remove battle_towers_fireball
