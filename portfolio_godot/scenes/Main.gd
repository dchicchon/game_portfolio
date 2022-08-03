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
	var school_position
	var school_direction = rand_range(-PI / 36, PI / 36)
	
	if side == 0:
		left_school_spawn_location.offset = randi()
		school_position = left_school_spawn_location.position
		school_direction += left_school_spawn_location.rotation
	else:
		right_school_spawn_location.offset = randi()
		school_position = right_school_spawn_location.position
		school_direction += right_school_spawn_location.rotation + PI
	
	school.init(school_position, school_direction)
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
		
