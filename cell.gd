extends Panel

@onready var _body = $_cell_body

func set_cell(cell_text):
	_body.text = str(cell_text)
