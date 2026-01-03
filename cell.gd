class_name Cell extends Panel

@onready var _body: RichTextLabel = $_cell_body

var id: int

func set_cell(cell_id: int):
	_body.text = Atlas.cells[cell_id]
	self.id = cell_id

# to render entity glyph over cell tile
func set_entity(entity_id: int):
	_body.text = Atlas.entities[entity_id]
