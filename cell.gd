extends Panel

@onready var _body = $_cell_body

func set_cell(cell):
	_body.text = Atlas.cells[cell]

# to render entity glyph over cell tile
func set_entity(entity):
	_body.text = Atlas.entities[entity]
