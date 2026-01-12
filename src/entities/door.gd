class_name Door extends Entity

#@export var pos_x: int
#@export var pos_y: int

var closed: bool

func _init():
	self.id = 2
	self.closed = true

#func _ready():
	#self.pos.x = pos_x
	#self.pos.y = pos_y

func open():
	if self.closed:
		self.closed = false
		self.id = 3
		# send message to event log
		Game.log.log_event("Player opened a door")
