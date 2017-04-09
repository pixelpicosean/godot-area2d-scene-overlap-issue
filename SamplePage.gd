extends GridContainer

const SampleList = [
	["Area2D", "area2d_overlap/Main.tscn"],
	["Splash", "splash/Splash.tscn"],
]

func _ready():
	for i in SampleList:
		_create_button(i)

func _create_button(data):
	var b = Button.new()
	add_child(b)
	b.set_text(data[0])
	b.connect("pressed", self, "_open_sample", [data[1]])
	
func _open_sample(url):
	system.set_game(url)
