extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/StartGameButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_start_game_button_pressed():
	get_tree().change_scene_to_file("res://cenario_1.tscn")


func _on_controls_button_pressed():
	get_tree().change_scene_to_file("res://Src/control.tscn")


func _on_credits_button_pressed():
	var credits = load("res://Src/credits.tscn")
	get_tree().current_scene.add_child(credits)


func _on_exit_button_pressed():
	get_tree().quit()
