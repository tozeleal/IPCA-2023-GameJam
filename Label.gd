extends Label

@onready var label = $Label

func _ready():
	label.text = "Hello, Godot!"

# Later in your code, you can update the text dynamically
func updateText(newText):
	label.text = newText
