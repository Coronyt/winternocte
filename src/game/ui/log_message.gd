extends Node

@onready var anim = $_log_message_anim

func _on_log_message_timer_timeout():
	anim.play("fade")

func _on_log_message_animation_finished(_anim_name):
	self.queue_free()
