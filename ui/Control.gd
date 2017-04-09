extends Control

var pressed = false

func _draw():
	var r = Rect2(Vector2(), get_size())
	if (pressed):
		draw_rect(r, Color("#FF77A8"))
	else:
		draw_rect(r, Color("#29ADFF"))

func _input_event(event):
	if (event.type == InputEvent.MOUSE_BUTTON):
		pressed = event.pressed
		update()
