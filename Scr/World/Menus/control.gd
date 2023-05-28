extends Control
var teclas_tex1 = preload("res://assets/sprites/keyboard/arrows.png")
var teclas_tex2 = preload("res://assets/sprites/keyboard/awsd.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Button.grab_focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scr/World/Menus/main_menu.tscn")
