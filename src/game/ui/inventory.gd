extends Control

# TODO - idea for the inventory UI: the buttons should only appear when the user mouses over the entry
# also the glyph associated with the item should be displayed here too
# maybe at the end of the entry if the buttons aren't active

@onready var list = $_inventory_bg/_inventory_list
@onready var anims = $_inventory_anims

# TODO - this var should probably exist in a global script
# since other functions which are waiting for input may need to know if the inventory is open
var is_open: bool = false

func _process(_delta):
	if Input.is_action_just_pressed("inventory"):
		if self.is_open:
			anims.play("close_inv")
			self.is_open = false
		else:
			anims.play("open_inv")
			self.is_open = true
