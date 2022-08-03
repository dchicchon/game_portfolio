extends AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	var end_seconds = get_current_animation_length()
	var seconds = rand_range(0.0, 10.0)
	print(seconds)
	stop()
	#seek(seconds, true)
