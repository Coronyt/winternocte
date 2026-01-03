class_name Player extends Entity

func _ready():
	self.pos.x = 35
	self.pos.y = 19
	self.glyph = 1

func _process(_delta):
	# moving will always force a turn cycle
	if Input.is_action_just_pressed("up"):
		var action = Move.new(self, Game.Direction.UP)
		#action.dir = "UP"
		#action.actor = self
		Game.action_queue.append(action)
		Game.cycle_turn()
	if Input.is_action_just_pressed("down"):
		pass
	if Input.is_action_just_pressed("left"):
		pass
	if Input.is_action_just_pressed("right"):
		pass
