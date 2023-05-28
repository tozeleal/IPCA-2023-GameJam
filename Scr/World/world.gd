extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var player = get_node("Player")
	if SceneManager.PlayerPosition != Vector2.ZERO:
		player.position = SceneManager.PlayerPosition
		player.position.x += 150


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_final_body_entered(body):
	var player = get_node("Player")
	player.savePosition()
	get_tree().change_scene_to_file("res://Scr/World/MiniGames/Example/miniGameExample.tscn")
