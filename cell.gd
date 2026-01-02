extends Panel

@onready var _body = $_cell_body

func set_cell(cell):
	_body.text = Atlas.cells[cell]
