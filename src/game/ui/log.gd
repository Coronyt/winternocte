class_name Log extends Node

const LogMessage = preload("res://game/ui/log_message.tscn")

@onready var log_window = $_log_window

# create a new log_message instance and add it as a child of log_window
func log_event(message: String):
	var new_log_message = LogMessage.instantiate()
	new_log_message.set_message_body(message)
	log_window.add_child(new_log_message)
