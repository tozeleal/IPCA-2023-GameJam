extends Node2D

var values = [0, 0, 0, 0]

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



func _on_final_body_entered(_body):
	var player = get_node("Player")
	player.savePosition()
	get_tree().change_scene_to_file("res://Scr/World/MiniGames/Example/miniGameExample.tscn")
