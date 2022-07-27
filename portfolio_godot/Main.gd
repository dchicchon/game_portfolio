extends Node2D


var test = Vector2(1080.0, 1080.0)

func _ready():
	var viewport_x = get_viewport().size.x
	var viewport_y = get_viewport().size.y
	print(viewport_x)
	print(viewport_y)
	var MOBILE_SCALE = 1
	var DESKTOP_SCALE = 2
	# get current screen size
	if viewport_x < 760:
		print('using mobile')
		get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_DISABLED, SceneTree.STRETCH_ASPECT_IGNORE, test, MOBILE_SCALE);
	else:
		print('using desktop')
		get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_DISABLED, SceneTree.STRETCH_ASPECT_IGNORE, test, DESKTOP_SCALE);
		
