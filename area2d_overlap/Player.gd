extends Area2D

export var speed = 400

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	var input = Vector2()
	input.x = Input.is_action_pressed("ui_right") - Input.is_action_pressed("ui_left")
	input.y = Input.is_action_pressed("ui_down") - Input.is_action_pressed("ui_up")
	set_pos(get_pos() + input.normalized() * speed * delta)

func _on_overlap_area(area):
	print("Player touches stuff")
