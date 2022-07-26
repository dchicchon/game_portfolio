extends KinematicBody2D

var player_velocity = Vector2()
var destination = Vector2()
onready var particles = get_node("Sprite/CPUParticles2D")
var move_direction
var speed = 0
var max_speed = 110
var acceleration = 200

func _ready():
	print("Viewport resolution is:", get_viewport_rect().size)

func _input(event):
	pass

func _physics_process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		destination = get_global_mouse_position()
		if position.distance_to(destination) > 25:
			particles.emitting = true
			
			speed += acceleration * delta
			if speed > max_speed:
				speed = max_speed
			player_velocity = position.direction_to(destination) * speed
			look_at(destination)

	else:
		particles.emitting =false
		speed = 0
		
	
	#weight = min(weight + delta * 10, 1.0)
	#rotation = lerp_angle(from, to, weight)
	player_velocity = move_and_slide(player_velocity)
	player_velocity.x = lerp(player_velocity.x, 0, 0.015)
	player_velocity.y = lerp(player_velocity.y, 0, 0.015)
