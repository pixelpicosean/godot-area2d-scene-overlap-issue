extends CanvasLayer

onready var anim = get_node("anim")

var is_transitioning = false

func _ready():
	set_process(true)
	
func _process(delta):
	if (Input.is_action_pressed("ui_cancel")):
		set_game("res://SamplePage.tscn")
	
func set_game(path):
	if (is_transitioning):
		return
	is_transitioning = true
	
	anim.play("fade_in")
	yield(anim, "finished")
	
	get_tree().change_scene(path)
	
	anim.play("fade_out")
	yield(anim, "finished")
	
	is_transitioning = false
