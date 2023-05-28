extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var c = get_node("Sprite2D")
	var c2 = get_node("Sprite2D2")
	var c3 = get_node("Sprite2D3")
	var c4 = get_node("Sprite2D4")
	if c.value*1000 + c2.value*100 + c3.value*10 + c4.value == SceneManager.code:
			get_tree().change_scene_to_file("res://cenario_4.tscn")
