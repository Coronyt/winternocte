class_name WorldCell extends Node

var pos: Position
var level: Array
var entities: EntityGroup

var data_dir: String

func _init(_pos: Position):
	self.pos = _pos
	# format pos for string paths
	var pos_str = str(_pos.x) + str(_pos.y)
	# build path to data directory for this worldcell
	self.data_dir = "res://src/world/levels/" + pos_str
	# load level matrix into self.level
	var _matrix = load(data_dir + "/" + pos_str + "_matrix.gd")
	self.level = _matrix.rows
	# load entities into self.entities
	var _entities = load(data_dir + "/" + pos_str + "_entities.tscn")
	self.entities = _entities.instantiate()
