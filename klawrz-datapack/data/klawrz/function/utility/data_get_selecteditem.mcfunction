# Get the SelectedItem data
#data get entity @s SelectedItem
execute if data entity @s SelectedItem run tellraw @s {"text":"SelectedItem: ","color":"yellow","extra":[{"nbt":"SelectedItem","entity":"@s"}]}
