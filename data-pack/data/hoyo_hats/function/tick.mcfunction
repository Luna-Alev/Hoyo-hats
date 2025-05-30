# Remove and reapply tag to players wearing the Frost Crown
tag @a[tag=the_herta] remove the_herta

execute as @a if items entity @s armor.head *[custom_data~{herta: true}] run tag @s add the_herta

# If a tagged player threw a snowball, mark it
execute as @a[tag=the_herta, scores={snowball_use=1..}] at @s run function hoyo_hats:mark_snowball

# Tag snowballs from armor stands
execute as @e[tag=snowball_marker] at @s run teleport @s @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..2]
execute as @e[tag=snowball_marker] at @s run tag @e[type=minecraft:snowball,limit=1,distance=..1] add frost_snowball
kill @e[tag=snowball_marker]

# Detect impact of marked snowballs
execute as @e[type=minecraft:snowball, tag=frost_snowball] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["entity_detector"], Marker:1b, NoGravity:1b, Invisible:1b}
execute as @e[type=minecraft:armor_stand, tag=entity_detector] at @s if entity @e[type=!minecraft:snowball, type=!minecraft:armor_stand, tag=!the_herta, distance=..2.5] run function hoyo_hats:snowball_impact
kill @e[type=minecraft:armor_stand, tag=entity_detector]
