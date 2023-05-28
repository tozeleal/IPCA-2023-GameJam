extends Node2D

var x=0
# Called when the node enters the scene tree for the first time.
func _ready():
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(SceneManager.jogo4==true):
		print("AAAAAAAAAAAAAa")
		x+=100
		print(x)
		if(x==5000):
			get_node("Sprite2D").position.x=768
		if(x==10000):
			get_node("Sprite2D2").position.x=768
			get_node("Sprite2D").position.y=2000
		if(x==20000):
			get_node("Sprite2D3").position.x=942
		
			
			
		


func _on_button_button_down():
	get_tree().change_scene_to_file("res://jogo_4.tscn")
