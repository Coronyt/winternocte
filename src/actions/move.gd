class_name Move extends Action

var dir: Game.Direction

var cand_x: int
var cand_y: int
#var cand_x = self.actor.pos.x
#var cand_y = self.actor.pos.y

func _init(_actor: Entity, _dir: Game.Direction):
	self.actor = _actor
	self.dir = _dir
	# get candidate coords from direction
	self.cand_x = _actor.pos.x
	self.cand_y = _actor.pos.y
	if self.dir == Game.Direction.UP:
		cand_y -= 1
	if self.dir == Game.Direction.DOWN:
		cand_y += 1
	if self.dir == Game.Direction.LEFT:
		cand_x -= 1
	if self.dir == Game.Direction.RIGHT:
		cand_x += 1

# will return false if the movement would result in a collision
func check_collision() -> bool:
	#var cand_x = self.actor.pos.x
	#var cand_y = self.actor.pos.y
	#if self.dir == Game.Direction.UP:
		#cand_y -= 1
	#if self.dir == Game.Direction.DOWN:
		#cand_y += 1
	#if self.dir == Game.Direction.LEFT:
		#cand_x -= 1
	#if self.dir == Game.Direction.RIGHT:
		#cand_x += 1
	var cand_pos = Position.new(cand_x, cand_y)
	var cand_cell = Game.active_canvas.get_cell(cand_pos)
	#print(cand_cell.entities)
	# checking for entities in the target cell
	for entity in cand_cell.entities:
		if entity is Door:
			entity.open()
	if Atlas.cells[cand_cell.id].can_collide:
		return false
	return true

# TODO
func check_bounds():
	pass

# move the actor's position coords to the target destination
func perform():
	# ___
	# TODO - need to check if target position is valid first
	# TODO - then after that check is implemented, we can implement level-changing on the world map
	# ___
	if self.dir == Game.Direction.UP and check_collision():
		self.actor.pos.y = self.actor.pos.y - 1
	if self.dir == Game.Direction.DOWN and check_collision():
		self.actor.pos.y = self.actor.pos.y + 1
	if self.dir == Game.Direction.LEFT and check_collision():
		self.actor.pos.x = self.actor.pos.x - 1
	if self.dir == Game.Direction.RIGHT and check_collision():
		self.actor.pos.x = self.actor.pos.x + 1
	# ___
	print("position after moving: ", self.actor.pos.x, ", ", self.actor.pos.y)
	# ___
