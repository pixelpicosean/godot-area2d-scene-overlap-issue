extends Panel

func _ready():
	pass

func say_hello():
	get_node("label").set_text("Hello Sean!")
