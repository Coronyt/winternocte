class_name Move extends Action

enum Direction {UP, DOWN, LEFT, RIGHT}

var dir: Direction
#var dest: Position

# move the actor's position coords to the target destination
func perform():
	if self.dir == Direction.UP:
		print("up command is being performed")
		self.actor.pos.y = self.actor.pos.y - 1
