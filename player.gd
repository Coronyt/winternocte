class_name Player extends Entity

func _ready():
	# temporary initial values
	self.pos.x = 35
	self.pos.y = 19
	self.glyph = 1

func move_player(direction: Game.Direction):
	var action = Move.new(self, direction)
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
