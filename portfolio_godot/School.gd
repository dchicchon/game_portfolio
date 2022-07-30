extends RigidBody2D

export var color1 = Color()
export var color2 = Color()
export var color3 = Color()

var colors = []

func choose(array):
	return array[randi() % array.size()]

func _ready():
	randomize()
	colors.push_front(color1)
	colors.push_front(color2)
	colors.push_front(color3)
	var school_color = choose(colors)
	var school_scale = rand_range(0.1, 1)
	var school = get_node("School")
	for fish in school.get_children():
		var body = fish.get_node("Body")
		var tail = fish.get_node("Tail")
		body.set_modulate(school_color)
		tail.set_modulate(school_color)
	# give the school a random scale
	set_scale(Vector2(school_scale , school_scale))
	var speed = get_linear_velocity()
	$SpeedNode/Speed.text = var2str(speed)

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

