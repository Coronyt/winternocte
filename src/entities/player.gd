class_name Player extends Entity

var inventory: Array[Item]

func _ready():
	# temporary initial values
	self.pos.x = 35
	self.pos.y = 19
	self.id = 1
	self.entity_name = "Player"

func move_player(direction: Game.Direction):
	var action = Move.new(self, direction)
	Game.action_queue.append(action)
	Game.cycle_turn()

func look_for_item() -> Item:
	var cell = Game.active_canvas.get_cell(self.pos)
	#print(cell.entities)
	for entity in cell.entities:
		if entity is Item:
			return entity
	return null

# for now we assume we're picking up one item and it will be on the actor's cell
# TODO - code is redundant, almost identical to move_player()
func pickup_item(item: Item):
	var action = Pickup.new(self, item)
	Game.action_queue.append(action)
	Game.cycle_turn()

func _process(_delta):
	# moving will always force a turn cycle
	if Input.is_action_just_pressed("up"):
		move_player(Game.Direction.UP)
	if Input.is_action_just_pressed("down"):
		move_player(Game.Direction.DOWN)
	if Input.is_action_just_pressed("left"):
		move_player(Game.Direction.LEFT)
	if Input.is_action_just_pressed("right"):
		move_player(Game.Direction.RIGHT)
	# picking up an item or items also cycles turn
	if Input.is_action_just_pressed("pickup"):
		var item = look_for_item()
		if item:
			pickup_item(item)
