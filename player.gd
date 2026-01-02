class_name Player extends Entity

func _ready():
	self.pos.x = 35
	self.pos.y = 19
	self.glyph = 1

func _process(_delta):
	if Input.is_action_just_pressed("up"):
		#print("up")
		var action = Move.new() # TODO - should use constructor method
		action.dir = "UP"
		action.actor = self
		#var position = Position.new() # TODO - should use constructor method
		#position.x = self.pos.x - 1
		#position.y = self.pos.y
		#action.dest = position
		#print(action.dir)
		Game.action_queue.append(action)
		# moving will always force a turn cycle
		Game.cycle_turn()
		pass
	if Input.is_action_just_pressed("down"):
		pass
	if Input.is_action_just_pressed("left"):
		pass
	if Input.is_action_just_pressed("right"):
		pass
