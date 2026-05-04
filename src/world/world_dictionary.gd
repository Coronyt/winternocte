extends Node

# init valid world coordinates
var pos_00: Position = Position.new(0, 0)

var GameWorld: Dictionary[Position, WorldCell] = {
	# map coords to world cells
	pos_00 : WorldCell.new(pos_00)
}

#func _ready():
	#print(GameWorld)
