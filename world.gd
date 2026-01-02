extends Node

@onready var _canvas = $_canvas

func _ready():
	Game.update_cells(_canvas)
	pass

func _process(delta):
	pass
