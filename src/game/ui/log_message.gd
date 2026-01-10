extends Node

@onready var anim: AnimationPlayer = $_log_message_anim
@onready var body: RichTextLabel = $_log_message_body

var message: String

func _ready():
	self.body.text = self.message

func _on_log_message_timer_timeout():
	anim.play("fade")

func _on_log_message_animation_finished(_anim_name):
	self.queue_free()

func set_message_body(message: String):
	# can't set self.body.text directly, must wait for node to enter scene tree first
	# so we store the string locally until _ready() can load it into the node
	self.message = message
