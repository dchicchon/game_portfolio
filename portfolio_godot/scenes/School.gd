extends RigidBody2D

export var color1 = Color()
export var color2 = Color()
export var color3 = Color()
export var scale_min = 0.05
export var scale_max = 1.00
export var speed_min = 150.0
export var speed_max = 200.0

var colors = []

func choose(array):
	return array[randi() % array.size()]	

func init(arg_position, arg_direction):
	randomize()
	colors.push_front(color1)
	colors.push_front(color2)
	colors.push_front(color3)
	var school_color = choose(colors)
	var school_scale = rand_range(scale_min, scale_max)
	var speed = Vector2(rand_range(speed_min, speed_max), 0.0)
	
	set_position(arg_position)
	set_rotation(arg_direction)
	set_linear_velocity(speed.rotated(arg_direction))
	
	var school = get_node("School")
	school.set_scale(Vector2(school_scale , school_scale))

	for fish in school.get_children():
		var body = fish.get_node("Body")
		var tail = fish.get_node("Tail")
		body.set_modulate(school_color)
		tail.set_modulate(school_color)

	var established_speed = get_linear_velocity()
	$SpeedNode/Speed.text = var2str(established_speed)
	

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
