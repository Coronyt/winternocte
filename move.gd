class_name Move extends Action

var dir: Game.Direction

func _init(_actor: Entity, _dir: Game.Direction):
	self.actor = _actor
	self.dir = _dir

# will return false if the movement would result in a collision
func check_collision(dir: Game.Direction) -> bool:
	var cand_x = self.actor.pos.x
	var cand_y = self.actor.pos.y
	if self.dir == Game.Direction.UP:
		cand_y -= 1
	if self.dir == Game.Direction.DOWN:
		cand_y += 1
	if self.dir == Game.Direction.LEFT:
		cand_x -= 1
	if self.dir == Game.Direction.RIGHT:
		cand_x += 1
	var cand_pos = Position.new(cand_x, cand_y)
	var cand_cell = Game.active_canvas.get_cell(cand_pos)
	print(cand_cell.entities)
	# checking for entities in the target cell
	for entity in cand_cell.entities:
		if entity is Door:
			entity.open()
	if Atlas.cells[cand_cell.id].can_collide:
		return false
	return true

# move the actor's position coords to the target destination
func perform():
	if self.dir == Game.Direction.UP:
		if check_collision(Game.Direction.UP):
			self.actor.pos.y = self.actor.pos.y - 1
	if self.dir == Game.Direction.DOWN:
		if check_collision(Game.Direction.DOWN):
			self.actor.pos.y = self.actor.pos.y + 1
	if self.dir == Game.Direction.LEFT:
		if check_collision(Game.Direction.LEFT):
			self.actor.pos.x = self.actor.pos.x - 1
	if self.dir == Game.Direction.RIGHT:
		if check_collision(Game.Direction.RIGHT):
			self.actor.pos.x = self.actor.pos.x + 1
