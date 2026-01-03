class_name Move extends Action

var dir: Game.Direction

func _init(_actor: Entity, _dir: Game.Direction):
	self.actor = _actor
	self.dir = _dir

# move the actor's position coords to the target destination
func perform():
	if self.dir == Game.Direction.UP:
		#print("up command is being performed")
		# TODO - need to check if the tile in that direction is collidable
		var cand_cell = Game.active_canvas.get_cell(Position.new(self.actor.pos.x, self.actor.pos.y - 1))
		print(cand_cell.id)
		self.actor.pos.y = self.actor.pos.y - 1
	if self.dir == Game.Direction.DOWN:
		#print("down command is being performed")
		self.actor.pos.y = self.actor.pos.y + 1
	if self.dir == Game.Direction.LEFT:
		#print("left command is being performed")
		self.actor.pos.x = self.actor.pos.x - 1
	if self.dir == Game.Direction.RIGHT:
		#print("right command is being performed")
		self.actor.pos.x = self.actor.pos.x + 1
