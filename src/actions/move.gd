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

# will check if the target destination is out of the bound of the current level
# TODO - will then need to implement a second check: is there another level in this direction on the world map?
	# second check should probably happen in the perform() function below
	# if so, then the level will need to be rendered, and the character will need to be moved to the next level
		# the character will need to appear on the same x-level, and on the correct (opposite) side of the screen
func check_bounds() -> bool:
	# x-axis boundaries:
		# <0 = we are attempting to exit the map left
		# >=64 = we are attempting to exit the map right
	# y-axis boundaries:
		# <0 = we are attempting to exit the map through the top
		# >=24 = we are attempting to exit the map through the bottom
	if cand_x < 0 or cand_x >= 64:
		return true
	if cand_y < 0 or cand_y >= 24:
		return true
	return false

# move the actor's position coords to the target destination
func perform():
	# ___
	# check if target position is valid first
	if check_bounds():
		# TODO - implement level-changing on the world map
		return # for now block all movement that would exit the level
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
