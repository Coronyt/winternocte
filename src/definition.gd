# for holding all of the traits associated with any tile or entity type
class_name Definition extends Node

# ascii character to represent this object visually in the game world
var glyph: String

var can_collide = false

# traits which this object will possess in the game world
var traits: Array[Trait]

func _init(_glyph: String, _traits: Array[Trait]):
	self.glyph = _glyph
	# assign local vars for each respective trait(?)
		# e.g. weight if Carryable, value if Marketable, etc.
	# some traits like Collidable will be checked very frequently, so better to map to a bool value now
	for _trait: Trait in _traits:
		if _trait is Collidable:
			can_collide = true
	# after "processing" traits, keep a reference on hand
		# some actions may need to check if this object has certain traits
	traits = _traits
