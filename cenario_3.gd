extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var player = get_node("Player")
	if SceneManager.PlayerPosition != Vector2.ZERO:
		player.position = SceneManager.PlayerPosition
		player.position.x += 150
		SceneManager.PlayerPosition = Vector2.ZERO


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_button_button_up():
		var player = get_node("Player")
		if(player.position.x>=800):
			player.savePosition()
			get_tree().change_scene_to_file("res://Scr/World/MiniGames/Safe/world.tscn")


func _on_area_2d_body_entered(body):
	if(body.has_method("player")):
		get_tree().change_scene_to_file("res://cenario_3.tscn")
