class_name Entity extends Node

@export var pos_x: int = 1
@export var pos_y: int = 1

# all entities should have a position so they can be rendered to the canvas
var pos: Position = Position.new(pos_x, pos_y) # default 1,1

# should map to an ASCII character via Atlas.entities
var id: int

# TODO - this is probably a temporary solution? should decide where to store display names
var entity_name: String

func _ready():
	self.pos.x = pos_x
	self.pos.y = pos_y
