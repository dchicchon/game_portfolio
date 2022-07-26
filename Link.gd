extends Control
onready var button = get_node("Button")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	button.text = "Click me"
	button.connect("pressed", self, "_button_pressed")

func _button_pressed():
	print("Hello world")
	OS.shell_open("http://godotengine.org")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
