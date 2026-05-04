class_name WorldCell extends Node

var pos: Position
var level: Array[Array]
var entities: EntityGroup

# TODO: constructor func could take Position as arg
# and from there it would go to the appropriate directory e.g. "levels/XX"
# and from there load the level matrix and the entity group into this worldcell
	# this worldcell should then be accessible via the Game World Dictionary
	# i.e. the position [0, 0] will map to this worldcell

func _init(_pos: Position):
	self.pos = _pos
	#print(_pos.x, _pos.y)
	# TODO - load level matrix and entities from "levels/${_pos.x, _pos.y}"
