class_name Move extends Action

var dir: Game.Direction

func _init(_actor: Entity, _dir: Game.Direction):
	self.actor = _actor
	self.dir = _dir

# move the actor's position coords to the target destination
func perform():
	if self.dir == Game.Direction.UP:
		#print("up command is being performed")
		# TODO - move collision check to func to remove redundant code
		var cand_pos = Position.new(self.actor.pos.x, self.actor.pos.y - 1)
		var cand_cell = Game.active_canvas.get_cell(cand_pos)
		#print(Atlas.cells[cand_cell.id].glyph)
		#print(Atlas.cells[cand_cell.id].can_collide)
		if Atlas.cells[cand_cell.id].can_collide:
			return
		self.actor.pos.y = self.actor.pos.y - 1
	if self.dir == Game.Direction.DOWN:
		#print("down command is being performed")
		var cand_pos = Position.new(self.actor.pos.x, self.actor.pos.y + 1)
		var cand_cell = Game.active_canvas.get_cell(cand_pos)
		if Atlas.cells[cand_cell.id].can_collide:
			return
		self.actor.pos.y = self.actor.pos.y + 1
	if self.dir == Game.Direction.LEFT:
		#print("left command is being performed")
		var cand_pos = Position.new(self.actor.pos.x - 1, self.actor.pos.y)
		var cand_cell = Game.active_canvas.get_cell(cand_pos)
		if Atlas.cells[cand_cell.id].can_collide:
			return
		self.actor.pos.x = self.actor.pos.x - 1
	if self.dir == Game.Direction.RIGHT:
		#print("right command is being performed")
		var cand_pos = Position.new(self.actor.pos.x + 1, self.actor.pos.y)
		var cand_cell = Game.active_canvas.get_cell(cand_pos)
		if Atlas.cells[cand_cell.id].can_collide:
			return
		self.actor.pos.x = self.actor.pos.x + 1
