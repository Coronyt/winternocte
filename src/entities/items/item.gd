class_name Item extends Entity

# if the item is stored, it will not render to the canvas
var stored: bool = false

# TODO - if the player (or any entity with an inventory?) picks up this item
# it should be added to the player inventory and no longer rendered to the canvas

# ACTUALLY - pickup should be a new class which extends Action and is appended to the turn cycle
	# performing this action should remove a target item from the actor's cell and add it to their inventory

func pickup():
	pass
