# countdown redemption cooldown
scoreboard players remove @a[tag=treasury_cd,scores={treasury_cd=1..}] treasury_cd 1

# clear cooldown when finished
tag @a[tag=treasury_cd,scores={treasury_cd=0}] remove treasury_cd