extends Node

@onready var _canvas: Canvas = $_canvas
@onready var _entities: EntityGroup = $_entities

func _ready():
	Game.update_cells(_canvas) # TODO - pass level as arg
	Game.render_entities(_canvas, _entities)
	Game._canvas = _canvas
	Game._entities = _entities
