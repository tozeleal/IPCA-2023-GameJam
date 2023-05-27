extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_up():
	var Platform = load("res://Scr/World/Plataforms/place_holder_plataform.tscn")
	var platform = Platform.instantiate()
	var world = get_tree().current_scene
	world.add_child(platform)
	platform.global_position = Vector2(global_position.x, global_position.y	+128/2)
	queue_free()
