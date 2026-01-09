class_name Openable extends Trait

var open_glyph: String
var closed: bool

func _init(_open_glyph: String):
	self.closed = true
	self.open_glyph = _open_glyph

func open():
	self.closed = false
