class_name Cell extends Panel

@onready var _body: RichTextLabel = $_cell_body

var id: int

var entities: Array[Entity] = []

func _ready():
	self.entities = []

func set_cell(cell_id: int):
	_body.text = Atlas.cells[cell_id].glyph
	self.id = cell_id

# to render entity glyph over cell tile
func set_entity(entity: Entity):
	_body.text = Atlas.entities[entity.id].glyph
	# append to local entity list
	self.entities.append(entity)

func reset_entities():
	self.entities = []
