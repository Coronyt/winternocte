extends Node

# for simple traits there's no need to instance a unique object for every cell/entity
var GenericCollider = Collidable.new()

var cells: Dictionary[int, Definition] = {
	1 : Definition.new(".", []), # ground
	2 : Definition.new("#", [
		GenericCollider,
	]), # wall
	#3 : Definition.new("+", [
		#Openable.new("-")
	#]), # door
}

var entities: Dictionary[int, Definition] = {
	1 : Definition.new("@", []), # player
	2 : Definition.new("+", []), # door (closed)
	3 : Definition.new("-", []), # door (open)
	4 : Definition.new("/", []), # iron sword
}

#var items: Dictionary[int, Definition] = {
	#1 : Definition.new("/", []), # iron sword
#}
