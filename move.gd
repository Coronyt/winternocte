class_name Move extends Action

var dir: Game.Direction

func _init(_actor: Entity, _dir: Game.Direction):
	self.actor = _actor
	self.dir = _dir

# move the actor's position coords to the target destination
func perform():
	if self.dir == Game.Direction.UP:
		print("up command is being performed")
		self.actor.pos.y = self.actor.pos.y - 1
	if self.dir == Game.Direction.DOWN:
		pass
	if self.dir == Game.Direction.LEFT:
		pass
	if self.dir == Game.Direction.RIGHT:
		pass
