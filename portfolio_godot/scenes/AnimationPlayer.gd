extends AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	play("seaweed_move")
	var seconds = rand_range(0.0, 5.0)
	seek(seconds, true)
	
