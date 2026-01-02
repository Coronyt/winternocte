extends Node

@onready var _canvas = $_canvas
@onready var _entities = $_entities

func _ready():
	Game.update_cells(_canvas)
	Game.render_entities(_canvas, _entities.get_children())
	pass

func _process(delta):
	pass
