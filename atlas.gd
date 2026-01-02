extends Node

# TODO - "String" will eventually be replaced by a custom class holding cell/entity traits
var cells: Dictionary[int, String] = {
	1 : ".", # ground
	2 : "#", # wall
}

var entities: Dictionary[int, String] = {
	1 : "@", # player
}
