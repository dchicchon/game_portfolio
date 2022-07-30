extends Node2D

export(PackedScene) var school_scene

var rng: RandomNumberGenerator = RandomNumberGenerator.new()
var test = Vector2(1080.0, 1080.0)
var MOBILE_SCALE = 1
var DESKTOP_SCALE = 1.25

func spawn_school():
	var school = school_scene.instance()
	var left_school_spawn_location = get_node("LeftSchoolPath/SchoolSpawnLocation")
	var right_school_spawn_location = get_node("RightSchoolPath/SchoolSpawnLocation")
	var side = rng.randi_range(0,1)
	var velocity = Vector2(rand_range(225.0, 250.0), 0.0)
	var direction = rand_range(-PI / 36, PI / 36)
	
	if side == 0:
		left_school_spawn_location.offset = randi()
		school.position = left_school_spawn_location.position
		direction += left_school_spawn_location.rotation
		
	else:
		right_school_spawn_location.offset = randi()
		school.position = right_school_spawn_location.position
		direction += right_school_spawn_location.rotation + PI
	
	school.rotation = direction
	school.set_linear_velocity(velocity.rotated(direction))
	#school.linear_velocity = velocity.rotated(direction)
	add_child(school)

func _on_StartTimer_timeout():
	spawn_school()

	
func _ready():
	randomize()
	var viewport_x = get_viewport().size.x
	var viewport_y = get_viewport().size.y
	print(viewport_x)
	print(viewport_y)

	# get current screen size
	if viewport_x < 760:
		print('using mobile')
		get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_DISABLED, SceneTree.STRETCH_ASPECT_IGNORE, test, MOBILE_SCALE);
	else:
		print('using desktop')
		get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_DISABLED, SceneTree.STRETCH_ASPECT_IGNORE, test, DESKTOP_SCALE);
		
