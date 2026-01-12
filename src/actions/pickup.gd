class_name Pickup extends Action

var item: Item

func _init(_actor: Entity, _item: Item):
	self.actor = _actor
	self.item = _item
	#self.dir = _dir

# remove the target item from the actor's cell
# add it to the actor's inventory
func perform():
	# mark item as stored to remove from canvas
	self.item.stored = true
	print(self.item)
	# TODO - code will fail here if the actor does not have an inventory
	# right now we are assuming the actor is always a player
		# maybe player can be its own subclass of entity?
	self.actor.inventory.append(self.item)
	Game.log.log_event(self.actor.entity_name + " picked up " + self.item.entity_name)
	print(self.actor.inventory)
