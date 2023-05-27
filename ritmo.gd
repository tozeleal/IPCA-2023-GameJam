extends Node2D

var clicked = false

func _input(event):
	if event is InputEventMouseButton:
		var mouse_event = event as InputEventMouseButton
		if mouse_event.button_index == MOUSE_BUTTON_LEFT:
			clicked = true

func _on_button_button_up():
	var note = get_node("Note")
	var button = get_node("Button")
	if(note.position.y == button.position.y+128/2):
		
		pass

