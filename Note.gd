extends RigidBody2D
var mouse=InputEventMouseButton

var clicked = false

var timePassed = 0.0

#
#	if (clicked):
#		timePassed += _delta
#		if timePassed >= 0.5:
#			timePassed = 0.0
#			clicked = false
#
#
func _input(event):
	if event is InputEventMouseButton:
		var mouse_event = event as InputEventMouseButton
		if mouse_event.button_index == MOUSE_BUTTON_LEFT:
			#clicked = true
			pass
#
#
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position.y -= 5

#	if(clicked):
#		var Note = load("res://rigid_body_2d.tscn")
#		var note = Note.instantiate()
#		var world = get_tree().current_scene
#		world.add_child(note)
#		note.global_position = Vector2(100,position.y)
#		queue_free()
