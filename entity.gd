class_name Entity extends Node

# all entities should have a position so they can be rendered to the canvas
var pos = Position.new()

# should map to an ASCII character via Atlas.entities
var glyph
